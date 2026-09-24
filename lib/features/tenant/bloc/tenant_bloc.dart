import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentlog/core/bloc/load_state.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/features/tenant/data/tenant_models.dart';
import 'package:rentlog/features/tenant/data/tenant_repository.dart';

part 'tenant_bloc.freezed.dart';

@freezed
sealed class TenantEvent with _$TenantEvent {
  const factory TenantEvent.started() = TenantStarted;
  const factory TenantEvent.refreshed() = TenantRefreshed;
  const factory TenantEvent.leaseSelected(String leaseId) = TenantLeaseSelected;
}

/// Everything the tenant's tabs show, for the lease being looked at.
@freezed
abstract class TenantData with _$TenantData {
  const factory TenantData({
    required List<TenantLease> leases,

    /// Null when the tenant isn't linked to any lease yet.
    TenantOverview? overview,
    TenantMeters? meters,
    @Default(<TenantDocument>[]) List<TenantDocument> documents,
  }) = _TenantData;

  const TenantData._();

  bool get hasSeveralLeases => leases.length > 1;
}

class TenantBloc extends Bloc<TenantEvent, LoadState<TenantData>> {
  TenantBloc(this._tenant) : super(const LoadState.loading()) {
    on<TenantStarted>((event, emit) => _load(emit));
    on<TenantRefreshed>((event, emit) => _load(emit, refreshing: true));
    on<TenantLeaseSelected>((event, emit) {
      _selectedLeaseId = event.leaseId;
      return _load(emit);
    });
  }

  final TenantRepository _tenant;
  String? _selectedLeaseId;

  Future<void> _load(
    Emitter<LoadState<TenantData>> emit, {
    bool refreshing = false,
  }) async {
    final previous = state.dataOrNull;
    if (refreshing && previous != null) {
      emit(LoadState.success(previous, refreshing: true));
    } else {
      emit(const LoadState.loading());
    }
    try {
      final leases = await _tenant.myLeases();
      final leaseId = _selectedLeaseId ?? _defaultLease(leases)?.leaseId;
      final overview = await _tenant.overview(leaseId: leaseId);
      if (overview == null) {
        emit(LoadState.success(TenantData(leases: leases)));
        return;
      }
      _selectedLeaseId = overview.leaseId;
      final (meters, documents) = await (
        _tenant.meters(overview.leaseId),
        _tenant.documents(overview.leaseId),
      ).wait;
      emit(
        LoadState.success(
          TenantData(
            leases: leases,
            overview: overview,
            meters: meters,
            documents: documents,
          ),
        ),
      );
    } on Object catch (error) {
      // A failed refresh keeps what's on screen; only a first load fails.
      emit(
        previous != null && refreshing
            ? LoadState.success(previous)
            : LoadState.failure(error),
      );
    }
  }

  static TenantLease? _defaultLease(List<TenantLease> leases) =>
      leases.where((l) => l.status == LeaseStatus.active).firstOrNull ??
      leases.firstOrNull;
}
