import 'package:bloc/bloc.dart';
import 'package:rentlog/core/bloc/load_state.dart';

/// Lets a `RefreshIndicator` spin until the bloc has actually reloaded.
Future<void> refreshAndWait<E, T>(Bloc<E, LoadState<T>> bloc, E event) async {
  bloc.add(event);
  await bloc.stream.firstWhere(
    (state) => switch (state) {
      LoadSuccess<T>(:final refreshing) => !refreshing,
      LoadFailure<T>() => true,
      LoadInProgress<T>() => false,
    },
  );
}
