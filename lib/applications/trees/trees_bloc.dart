import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/helpers/usecase.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/usecases/fetch_trees.dart';

part 'trees_event.dart';
part 'trees_state.dart';
part 'trees_bloc.freezed.dart';

class TreesBloc extends Bloc<TreesEvent, TreesState> {
  final FetchTrees fetchTrees;
  TreesBloc({required this.fetchTrees}) : super(const TreesState.loading()) {
    on<_FetchTrees>(_onFetchTrees);
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
}
