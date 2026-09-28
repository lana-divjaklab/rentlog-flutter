import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentlog/core/bloc/load_state.dart';
import 'package:rentlog/core/log.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/landlord/data/landlord_repository.dart';

part 'lease_detail_bloc.freezed.dart';

@freezed
sealed class LeaseDetailEvent with _$LeaseDetailEvent {
  const factory LeaseDetailEvent.started() = LeaseDetailStarted;
  const factory LeaseDetailEvent.refreshed() = LeaseDetailRefreshed;
  const factory LeaseDetailEvent.yearChanged(int year) = LeaseDetailYearChanged;
  const factory LeaseDetailEvent.rentSaved({
    required String month,
    required int amountCents,
    String? paidAt,
  }) = LeaseDetailRentSaved;
  const factory LeaseDetailEvent.rentUnpaid({required String chargeId}) =
      LeaseDetailRentUnpaid;
  const factory LeaseDetailEvent.utilitiesSaved({
    required String month,
    required List<UtilityEntry> entries,
    @Default(false) bool publish,
  }) = LeaseDetailUtilitiesSaved;
  const factory LeaseDetailEvent.utilitiesPaid({
    required String month,
    required String paidAt,
    required int paidCents,
  }) = LeaseDetailUtilitiesPaid;
  const factory LeaseDetailEvent.utilitiesUnpaid({required String month}) =
      LeaseDetailUtilitiesUnpaid;
}

/// A one-off message for the screen to show after an action.
enum LeaseDetailNotice { costsSaved, monthPublished }

@freezed
abstract class LeaseDetailState with _$LeaseDetailState {
  const factory LeaseDetailState({
    required int year,
    @Default(LoadState<LeaseYear>.loading()) LoadState<LeaseYear> data,

    /// The month an action is running for; its buttons disable meanwhile.
    String? busyMonth,
    LeaseDetailNotice? notice,
    Object? error,

    /// Bumped with every notice/error so the same one twice still shows.
    @Default(0) int signal,
  }) = _LeaseDetailState;
}

class LeaseDetailBloc extends Bloc<LeaseDetailEvent, LeaseDetailState> {
  LeaseDetailBloc({
    required this._repository,
    required this.organizationId,
    required this.leaseId,
    int? year,
  }) : super(LeaseDetailState(year: year ?? DateTime.now().year)) {
    on<LeaseDetailStarted>((event, emit) => _load(emit));
    on<LeaseDetailRefreshed>((event, emit) => _load(emit, refreshing: true));
    on<LeaseDetailYearChanged>((event, emit) {
      emit(state.copyWith(year: event.year));
      return _load(emit);
    });
    on<LeaseDetailRentSaved>(
      (event, emit) => _act(
        emit,
        event.month,
        () => _repository.saveRent(
          organizationId: organizationId,
          leaseId: leaseId,
          periodMonth: event.month,
          amountCents: event.amountCents,
          paidAt: event.paidAt,
        ),
      ),
    );
    on<LeaseDetailRentUnpaid>(
      (event, emit) => _act(
        emit,
        null,
        () => _repository.markChargeUnpaid(
          organizationId: organizationId,
          chargeId: event.chargeId,
        ),
      ),
    );
    on<LeaseDetailUtilitiesSaved>(
      (event, emit) => _act(
        emit,
        event.month,
        () async {
          // Same order as the web: save the month's costs (published in one
          // go), then publish whatever else the month holds, such as rent.
          await _repository.saveUtilities(
            organizationId: organizationId,
            leaseId: leaseId,
            periodMonth: event.month,
            entries: event.entries,
            publish: event.publish,
          );
          if (event.publish) {
            await _repository.publishMonth(
              organizationId: organizationId,
              leaseId: leaseId,
              periodMonth: event.month,
            );
          }
        },
        notice: event.publish
            ? LeaseDetailNotice.monthPublished
            : LeaseDetailNotice.costsSaved,
      ),
    );
    on<LeaseDetailUtilitiesPaid>(
      (event, emit) => _act(
        emit,
        event.month,
        () => _repository.markUtilitiesPaid(
          organizationId: organizationId,
          leaseId: leaseId,
          periodMonth: event.month,
          paidAt: event.paidAt,
          paidCents: event.paidCents,
        ),
      ),
    );
    on<LeaseDetailUtilitiesUnpaid>(
      (event, emit) => _act(
        emit,
        event.month,
        () => _repository.markUtilitiesUnpaid(
          organizationId: organizationId,
          leaseId: leaseId,
          periodMonth: event.month,
        ),
      ),
    );
  }

  final LandlordRepository _repository;
  final String organizationId;
  final String leaseId;

  Future<void> _load(
    Emitter<LeaseDetailState> emit, {
    bool refreshing = false,
  }) async {
    final previous = state.data.dataOrNull;
    emit(
      state.copyWith(
        data: refreshing && previous != null
            ? LoadState.success(previous, refreshing: true)
            : const LoadState.loading(),
      ),
    );
    try {
      final year = await _repository.leaseYear(
        organizationId: organizationId,
        leaseId: leaseId,
        year: state.year,
      );
      emit(state.copyWith(data: LoadState.success(year)));
    } on Object catch (error, stack) {
      logError('Loading lease year', error, stack);
      emit(
        state.copyWith(
          data: refreshing && previous != null
              ? LoadState.success(previous)
              : LoadState.failure(error),
        ),
      );
    }
  }

  /// Runs a mutation, then reloads so the card shows what the server now
  /// holds — including carry-over it recomputed.
  Future<void> _act(
    Emitter<LeaseDetailState> emit,
    String? month,
    Future<void> Function() mutation, {
    LeaseDetailNotice? notice,
  }) async {
    emit(state.copyWith(busyMonth: month, notice: null, error: null));
    try {
      await mutation();
      await _load(emit, refreshing: true);
      emit(
        state.copyWith(
          busyMonth: null,
          notice: notice,
          signal: notice == null ? state.signal : state.signal + 1,
        ),
      );
    } on Object catch (error, stack) {
      logError('Lease action', error, stack);
      emit(
        state.copyWith(busyMonth: null, error: error, signal: state.signal + 1),
      );
    }
  }
}
