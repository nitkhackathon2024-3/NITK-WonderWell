part of 'trees_bloc.dart';

@freezed
sealed class TreesState with _$TreesState {
  const factory TreesState.loading() = TreesLoading;
  const factory TreesState.loaded(List<Tree> trees) = LoadedTress;
  const factory TreesState.error(AppFailure failure) = TreesError;
}
