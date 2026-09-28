import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentlog/core/bloc/load_state.dart';
import 'package:rentlog/core/format/dates.dart';
import 'package:rentlog/core/log.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/landlord/data/landlord_repository.dart';
import 'package:rentlog/features/settlement/data/settlement_models.dart';
import 'package:rentlog/features/settlement/data/settlement_repository.dart';
import 'package:rentlog/features/settlement/domain/settlement_logic.dart';

part 'settlement_bloc.freezed.dart';

enum SettlementStep { meters, bills, review }

@freezed
sealed class SettlementEvent with _$SettlementEvent {
  const factory SettlementEvent.started() = SettlementStarted;
  const factory SettlementEvent.refreshed() = SettlementRefreshed;
  const factory SettlementEvent.propertySelected(String propertyId) =
      SettlementPropertySelected;
  const factory SettlementEvent.monthChanged(String month) =
      SettlementMonthChanged;
  const factory SettlementEvent.stepSelected(SettlementStep step) =
      SettlementStepSelected;

  /// A meter reading was typed; `leaseId` null means the main meter.
  const factory SettlementEvent.readingCommitted({
    required String categoryId,
    String? leaseId,
    required double reading,
  }) = SettlementReadingCommitted;
  const factory SettlementEvent.billCommitted({
    required String categoryId,
    required int totalCents,
  }) = SettlementBillCommitted;

  /// Total usage for a cost split by usage that has no meter.
  const factory SettlementEvent.totalUsageCommitted({
    required String categoryId,
    required double totalUsage,
  }) = SettlementTotalUsageCommitted;
  const factory SettlementEvent.tenantUsageChanged({
    required String leaseId,
    required String categoryId,
    required double? usage,
  }) = SettlementTenantUsageChanged;
  const factory SettlementEvent.manualAmountCommitted({
    required String leaseId,
    required String categoryId,
    required int amountCents,
  }) = SettlementManualAmountCommitted;
  const factory SettlementEvent.publishRequested() = SettlementPublishRequested;
}

@freezed
abstract class SettlementState with _$SettlementState {
  const factory SettlementState({
    required String month,
    @Default(LoadState<List<PropertyItem>>.loading())
    LoadState<List<PropertyItem>> properties,
    String? propertyId,
    @Default(SettlementStep.meters) SettlementStep step,
    @Default(LoadState<SettlementMonth>.loading()) LoadState<SettlementMonth> data,

    /// Field keys being saved, and saved since the screen loaded (for ✓).
    @Default(<String>{}) Set<String> saving,
    @Default(<String>{}) Set<String> saved,
    @Default(false) bool calculating,
    @Default(false) bool publishing,

    /// Typed but not yet sent: per-tenant usage and manual amounts, by
    /// `draftKey(leaseId, categoryId)`.
    @Default(<String, double>{}) Map<String, double> usageDrafts,
    @Default(<String, int>{}) Map<String, int> manualDrafts,

    /// Set after publishing: how many tenants were notified.
    int? publishedCount,
    Object? error,

    /// Bumped with each message, so the same one twice still shows.
    @Default(0) int signal,
  }) = _SettlementState;
}

/// The Mesec tab: one property's meter readings, bills, review and publish
/// for one month. Calculation stays on the server (generateForLeaseMonth),
/// the same code the web's "Objavi mesec" runs.
class SettlementBloc extends Bloc<SettlementEvent, SettlementState> {
  SettlementBloc({
    required this._landlord,
    required this._settlement,
    required this.organizationId,
    String? month,
  }) : super(
         SettlementState(
           // Bills for a month arrive after it ends.
           month: month ?? previousMonthKey(currentMonthKey()),
         ),
       ) {
    on<SettlementStarted>((event, emit) => _loadProperties(emit));
    on<SettlementRefreshed>((event, emit) => _loadMonth(emit, keepData: true));
    on<SettlementPropertySelected>((event, emit) async {
      emit(state.copyWith(propertyId: event.propertyId, step: SettlementStep.meters));
      await _loadMonth(emit);
    });
    on<SettlementMonthChanged>((event, emit) async {
      emit(
        state.copyWith(
          month: event.month,
          usageDrafts: const {},
          manualDrafts: const {},
        ),
      );
      await _loadMonth(emit);
    });
    on<SettlementStepSelected>(_onStep);
    on<SettlementReadingCommitted>(_onReading);
    on<SettlementBillCommitted>(_onBill);
    on<SettlementTotalUsageCommitted>(_onTotalUsage);
    on<SettlementTenantUsageChanged>((event, emit) {
      final drafts = {...state.usageDrafts};
      final key = draftKey(event.leaseId, event.categoryId);
      if (event.usage == null) {
        drafts.remove(key);
      } else {
        drafts[key] = event.usage!;
      }
      emit(state.copyWith(usageDrafts: drafts));
    });
    on<SettlementManualAmountCommitted>(_onManualAmount);
    on<SettlementPublishRequested>(_onPublish);
  }

  final LandlordRepository _landlord;
  final SettlementRepository _settlement;
  final String organizationId;

  SettlementMonth? get _data => state.data.dataOrNull;

  Future<void> _loadProperties(Emitter<SettlementState> emit) async {
    emit(state.copyWith(properties: const LoadState.loading()));
    try {
      final properties = await _landlord.properties(organizationId);
      emit(
        state.copyWith(
          properties: LoadState.success(properties),
          propertyId: state.propertyId ?? properties.firstOrNull?.id,
        ),
      );
      if (state.propertyId != null) await _loadMonth(emit);
    } on Object catch (error, stack) {
      logError('Loading properties', error, stack);
      emit(state.copyWith(properties: LoadState.failure(error)));
    }
  }

  Future<void> _loadMonth(
    Emitter<SettlementState> emit, {
    bool keepData = false,
  }) async {
    final propertyId = state.propertyId;
    if (propertyId == null) return;
    final previous = _data;
    if (!(keepData && previous != null)) {
      emit(state.copyWith(data: const LoadState.loading()));
    }
    try {
      emit(state.copyWith(data: LoadState.success(await _fetch(propertyId))));
    } on Object catch (error, stack) {
      logError('Loading month', error, stack);
      emit(
        keepData && previous != null
            ? state.copyWith(error: error, signal: state.signal + 1)
            : state.copyWith(data: LoadState.failure(error)),
      );
    }
  }

  Future<SettlementMonth> _fetch(String propertyId) async {
    final month = state.month;
    final meters = await _settlement.meters(
      organizationId: organizationId,
      propertyId: propertyId,
      fromMonth: previousMonthKey(month),
      toMonth: month,
    );
    final year = int.parse(month.substring(0, 4));
    final years = await Future.wait(
      meters.leases.map(
        (lease) => _landlord.leaseYear(
          organizationId: organizationId,
          leaseId: lease.id,
          year: year,
        ),
      ),
    );
    return SettlementMonth(
      month: month,
      meters: meters,
      leaseMonths: {
        for (var i = 0; i < meters.leases.length; i++)
          meters.leases[i].id: years[i].months
              .where((m) => m.month == month)
              .firstOrNull,
      },
    );
  }

  /// Runs one save, marks its field while it runs, reloads afterwards.
  Future<void> _save(
    Emitter<SettlementState> emit,
    String key,
    Future<void> Function() save,
  ) async {
    emit(state.copyWith(saving: {...state.saving, key}, error: null));
    try {
      await save();
      await _loadMonth(emit, keepData: true);
      emit(
        state.copyWith(
          saving: {...state.saving}..remove(key),
          saved: {...state.saved, key},
        ),
      );
    } on Object catch (error, stack) {
      logError('Saving $key', error, stack);
      emit(
        state.copyWith(
          saving: {...state.saving}..remove(key),
          error: error,
          signal: state.signal + 1,
        ),
      );
    }
  }

  Future<void> _onReading(
    SettlementReadingCommitted event,
    Emitter<SettlementState> emit,
  ) => _save(
    emit,
    'reading:${event.categoryId}:${event.leaseId ?? 'main'}',
    () => _settlement.saveReading(
      organizationId: organizationId,
      propertyId: state.propertyId!,
      categoryId: event.categoryId,
      month: state.month,
      scope: event.leaseId == null ? ReadingScope.property : ReadingScope.lease,
      leaseId: event.leaseId,
      reading: event.reading,
    ),
  );

  Future<void> _onBill(
    SettlementBillCommitted event,
    Emitter<SettlementState> emit,
  ) {
    final category = _category(event.categoryId);
    return _save(
      emit,
      'bill:${event.categoryId}',
      () => _settlement.saveBill(
        organizationId: organizationId,
        propertyId: state.propertyId!,
        categoryId: event.categoryId,
        month: state.month,
        totalCents: event.totalCents,
        // Metered: the usage from this month's readings. Otherwise keep
        // the usage already on the bill.
        totalUsage: (category?.usesMeter ?? false)
            ? _data?.propertyUsage(event.categoryId) ?? category?.totalUsage
            : category?.totalUsage,
      ),
    );
  }

  Future<void> _onTotalUsage(
    SettlementTotalUsageCommitted event,
    Emitter<SettlementState> emit,
  ) {
    final category = _category(event.categoryId);
    return _save(
      emit,
      'usage:${event.categoryId}',
      () => _settlement.saveBill(
        organizationId: organizationId,
        propertyId: state.propertyId!,
        categoryId: event.categoryId,
        month: state.month,
        totalCents: category?.totalBillCents ?? 0,
        totalUsage: event.totalUsage > 0 ? event.totalUsage : null,
      ),
    );
  }

  BillCategory? _category(String categoryId) => _data?.billCategories
      .where((c) => c.categoryId == categoryId)
      .firstOrNull;

  Future<void> _onStep(
    SettlementStepSelected event,
    Emitter<SettlementState> emit,
  ) async {
    emit(state.copyWith(step: event.step));
    if (event.step == SettlementStep.review) await _calculate(emit);
  }

  Future<void> _onManualAmount(
    SettlementManualAmountCommitted event,
    Emitter<SettlementState> emit,
  ) async {
    emit(
      state.copyWith(
        manualDrafts: {
          ...state.manualDrafts,
          draftKey(event.leaseId, event.categoryId): event.amountCents,
        },
      ),
    );
    await _calculate(emit);
  }

  /// Brings every tenant's costs up to date with the readings and bills:
  /// meters into bills first, then each lease's charges, as the web does.
  Future<void> _calculate(Emitter<SettlementState> emit) async {
    final data = _data;
    final propertyId = state.propertyId;
    if (data == null || propertyId == null) return;
    emit(state.copyWith(calculating: true, error: null));
    try {
      for (final utility in data.meteredUtilities) {
        if (data.propertyUsage(utility.id) == null) continue;
        await _settlement.applyMetersToBilling(
          organizationId: organizationId,
          propertyId: propertyId,
          categoryId: utility.id,
          month: data.month,
        );
      }
      await _saveLeases(data, publish: false);
      await _loadMonth(emit, keepData: true);
      emit(state.copyWith(calculating: false));
    } on Object catch (error, stack) {
      logError('Calculating month', error, stack);
      emit(
        state.copyWith(calculating: false, error: error, signal: state.signal + 1),
      );
    }
  }

  Future<void> _saveLeases(
    SettlementMonth data, {
    required bool publish,
    Set<String>? only,
  }) async {
    for (final entry in data.leaseMonths.entries) {
      final month = entry.value;
      if (month == null || month.utilities.isEmpty) continue;
      if (only != null && !only.contains(entry.key)) continue;
      await _landlord.saveUtilities(
        organizationId: organizationId,
        leaseId: entry.key,
        periodMonth: data.month,
        entries: entriesFor(
          data: data,
          leaseId: entry.key,
          month: month,
          usageDrafts: state.usageDrafts,
          manualDrafts: state.manualDrafts,
        ),
        publish: publish,
      );
    }
  }

  /// Publishes every tenant still in draft; their costs becoming visible is
  /// what sends them the push.
  Future<void> _onPublish(
    SettlementPublishRequested event,
    Emitter<SettlementState> emit,
  ) async {
    final data = _data;
    if (data == null) return;
    final drafts = {
      for (final entry in data.leaseMonths.entries)
        if (entry.value != null && !isPublished(entry.value!)) entry.key,
    };
    emit(state.copyWith(publishing: true, error: null, publishedCount: null));
    try {
      await _saveLeases(data, publish: true, only: drafts);
      for (final leaseId in drafts) {
        await _landlord.publishMonth(
          organizationId: organizationId,
          leaseId: leaseId,
          periodMonth: data.month,
        );
      }
      await _loadMonth(emit, keepData: true);
      emit(
        state.copyWith(
          publishing: false,
          publishedCount: drafts.length,
          signal: state.signal + 1,
        ),
      );
    } on Object catch (error, stack) {
      logError('Publishing month', error, stack);
      await _loadMonth(emit, keepData: true);
      emit(
        state.copyWith(publishing: false, error: error, signal: state.signal + 1),
      );
    }
  }
}
