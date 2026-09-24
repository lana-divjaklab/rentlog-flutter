import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentlog/core/bloc/load_state.dart';

part 'loader_bloc.freezed.dart';

@freezed
sealed class LoaderEvent with _$LoaderEvent {
  const factory LoaderEvent.started() = LoaderStarted;
  const factory LoaderEvent.refreshed() = LoaderRefreshed;
}

/// A screen that shows one query's result. Provide it typed — e.g.
/// `LoaderBloc<DashboardOverview>` — so several can live side by side.
class LoaderBloc<T> extends Bloc<LoaderEvent, LoadState<T>> {
  LoaderBloc(this._load) : super(const LoadState.loading()) {
    on<LoaderStarted>((event, emit) => _run(emit));
    on<LoaderRefreshed>((event, emit) => _run(emit, refreshing: true));
  }

  final Future<T> Function() _load;

  Future<void> _run(
    Emitter<LoadState<T>> emit, {
    bool refreshing = false,
  }) async {
    final previous = state.dataOrNull;
    emit(
      refreshing && previous != null
          ? LoadState.success(previous, refreshing: true)
          : const LoadState.loading(),
    );
    try {
      emit(LoadState.success(await _load()));
    } on Object catch (error) {
      // A failed refresh keeps what's on screen; only a first load fails.
      emit(
        refreshing && previous != null
            ? LoadState.success(previous)
            : LoadState.failure(error),
      );
    }
  }
}
