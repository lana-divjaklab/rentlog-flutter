import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_state.freezed.dart';

/// The one shape every screen's data takes. [LoadSuccess.refreshing] keeps
/// the old data on screen during pull-to-refresh instead of blanking it.
@freezed
sealed class LoadState<T> with _$LoadState<T> {
  const factory LoadState.loading() = LoadInProgress<T>;
  const factory LoadState.success(T data, {@Default(false) bool refreshing}) =
      LoadSuccess<T>;
  const factory LoadState.failure(Object error) = LoadFailure<T>;
}

extension LoadStateX<T> on LoadState<T> {
  T? get dataOrNull => switch (this) {
    LoadSuccess<T>(:final data) => data,
    _ => null,
  };
}
