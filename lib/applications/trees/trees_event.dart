part of 'trees_bloc.dart';

@freezed
sealed class TreesEvent with _$TreesEvent {
  const factory TreesEvent.fetchTrees() = _FetchTrees;
  const factory TreesEvent.createTree(TreeTemplate treeTemplate) = _CreateTree;
  const factory TreesEvent.deleteTree(Tree tree) = _DeleteTree;
}