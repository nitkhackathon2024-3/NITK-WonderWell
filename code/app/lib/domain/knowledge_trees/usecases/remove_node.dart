import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/helpers/usecase.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/remove_node_repository.dart';

class RemoveNode extends Usecase<bool, RemoveNodeParams, AppFailure> {
  final RemoveNodeRepository repository;

  const RemoveNode({required this.repository});

  @override
  Future<Either<AppFailure, bool>> call(RemoveNodeParams params) {
    return repository.removeNode(params.tree, params.nodeId);
  }

}

class RemoveNodeParams extends Equatable {
  final TreeDetails tree;
  final String nodeId;

  const RemoveNodeParams({
    required this.tree,
    required this.nodeId,
  });

  @override
  List<Object?> get props => [tree, nodeId];
}
