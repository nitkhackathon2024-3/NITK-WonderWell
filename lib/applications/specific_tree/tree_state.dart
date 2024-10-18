part of 'tree_bloc.dart';

@freezed
sealed class TreeState with _$TreeState {
  const factory TreeState.loading() = Loading;
  const factory TreeState.loaded(TreeDetails tree) = Loaded;
  const factory TreeState.updatedTree() = UpdatedTree;
  const factory TreeState.error(AppFailure failure) = TreeError;
}