part of 'tree_bloc.dart';

@freezed
sealed class TreeEvent with _$TreeEvent {
  const factory TreeEvent.fetchTree(String treeId) = _FetchTree;
  const factory TreeEvent.addNode({required TreeDetails tree, required TreeTemplate treeTemplate}) = _AddNode;
  const factory TreeEvent.suggestNodes({required TreeDetails tree}) = _SuggestNodes;
  const factory TreeEvent.deleteNode({required TreeDetails tree, required String nodeId}) = _DeleteNode;
}