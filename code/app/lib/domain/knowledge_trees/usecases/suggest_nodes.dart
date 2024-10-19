import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/helpers/usecase.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/suggest_nodes_repository.dart';

class SuggestNodes extends Usecase<bool, SuggestNodesParams, AppFailure> {
  final SuggestNodesRepository repository;

  const SuggestNodes(this.repository);

  @override
  Future<Either<AppFailure, bool>> call(SuggestNodesParams params) async {
    return repository.suggestNodes(params.tree);
  }
}

class SuggestNodesParams extends Equatable {
  final TreeDetails tree;

  const SuggestNodesParams({
    required this.tree,
  });

  @override
  List<Object?> get props => [tree];
}
