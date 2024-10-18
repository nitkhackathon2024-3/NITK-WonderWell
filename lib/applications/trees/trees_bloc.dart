import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/helpers/usecase.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree_template.dart';
import 'package:wisdom_well/domain/knowledge_trees/usecases/create_tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/usecases/delete_tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/usecases/fetch_trees.dart';

part 'trees_event.dart';
part 'trees_state.dart';
part 'trees_bloc.freezed.dart';

class TreesBloc extends Bloc<TreesEvent, TreesState> {
  final FetchTrees fetchTrees;
  final CreateTree createTree;
  final DeleteTree deleteTree;

  TreesBloc({
    required this.fetchTrees,
    required this.createTree,
    required this.deleteTree,
  }) : super(const TreesState.loading()) {
    on<_FetchTrees>(_onFetchTrees);
    on<_CreateTree>(_onCreateTree);
    on<_DeleteTree>(_onDeleteTree);
  }

  Future<void> _onFetchTrees(
      _FetchTrees event, Emitter<TreesState> emit) async {
    emit(const TreesState.loading());
    final res = await fetchTrees(const NoParams());
    res.fold(
      (failure) => emit(TreesState.error(failure)),
      (trees) => emit(TreesState.loaded(trees)),
    );
  }

  Future<void> _onCreateTree(
      _CreateTree event, Emitter<TreesState> emit) async {
    emit(const TreesState.loading());
    final res = await createTree(CreateTreeParams(tree: event.treeTemplate));
    res.fold(
      (failure) => emit(TreesState.error(failure)),
      (success) => success
          ? emit(const TreesState.updatedTrees())
          : emit(
              TreesState.error(
                AppFailure(message: 'Failed to create tree'),
              ),
            ),
    );
  }

  Future<void> _onDeleteTree(
      _DeleteTree event, Emitter<TreesState> emit) async {
    emit(const TreesState.loading());
    final res = await deleteTree(DeleteTreeParams(event.tree.id));
    res.fold(
      (failure) => emit(TreesState.error(failure)),
      (success) => success
          ? emit(const TreesState.updatedTrees())
          : emit(
              TreesState.error(
                AppFailure(message: 'Failed to delete tree'),
              ),
            ),
    );
  }
}
