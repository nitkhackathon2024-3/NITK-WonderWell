import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree_template.dart';
import 'package:wisdom_well/domain/knowledge_trees/usecases/add_node.dart';
import 'package:wisdom_well/domain/knowledge_trees/usecases/fetch_specific_tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/usecases/remove_node.dart';
import 'package:wisdom_well/domain/knowledge_trees/usecases/suggest_nodes.dart';

part 'tree_event.dart';
part 'tree_state.dart';
part 'tree_bloc.freezed.dart';

class TreeBloc extends Bloc<TreeEvent, TreeState> {
  final FetchSpecificTree fetchSpecificTree;
  final AddNode addNode;
  final RemoveNode removeNode;
  final SuggestNodes suggestNodes;

  TreeBloc({
    required this.fetchSpecificTree,
    required this.addNode,
    required this.removeNode,
    required this.suggestNodes,
  }) : super(TreeState.loading()) {
    on<_FetchTree>(_fetchTree);
    on<_AddNode>(_addNode);
    on<_DeleteNode>(_deleteNode);
    on<_SuggestNodes>(_suggestNodes);
  }

  Future<void> _fetchTree(_FetchTree event, Emitter<TreeState> emit) async {
    emit(TreeState.loading());
    final res = await fetchSpecificTree(
      FetchSpecificTreeParams(treeId: event.treeId),
    );
    res.fold(
      (failure) => emit(TreeState.error(failure)),
      (tree) => emit(TreeState.loaded(tree)),
    );
  }

  Future<void> _addNode(_AddNode event, Emitter<TreeState> emit) async {
    emit(TreeState.loading());
    final res = await addNode(
      AddNodeParams(tree: event.tree, treeTemplate: event.treeTemplate),
    );
    res.fold(
      (failure) => emit(TreeState.error(failure)),
      (success) => success
          ? emit(TreeState.updatedTree())
          : emit(
              TreeState.error(
                AppFailure(message: 'Failed to add node'),
              ),
            ),
    );
  }

  Future<void> _deleteNode(_DeleteNode event, Emitter<TreeState> emit) async {
    emit(TreeState.loading());
    final res = await removeNode(
      RemoveNodeParams(tree: event.tree, nodeId: event.nodeId),
    );
    res.fold(
      (failure) => emit(TreeState.error(failure)),
      (success) => success
          ? emit(TreeState.updatedTree())
          : emit(
              TreeState.error(
                AppFailure(message: 'Failed to delete node'),
              ),
            ),
    );
  }

  Future<void> _suggestNodes(
      _SuggestNodes event, Emitter<TreeState> emit) async {
    emit(TreeState.loading());
    final res = await suggestNodes(
      SuggestNodesParams(tree: event.tree),
    );
    res.fold(
      (failure) => emit(TreeState.error(failure)),
      (success) => success
          ? emit(TreeState.updatedTree())
          : emit(
              TreeState.error(
                AppFailure(message: 'Failed to suggest nodes'),
              ),
            ),
    );
  }
}
