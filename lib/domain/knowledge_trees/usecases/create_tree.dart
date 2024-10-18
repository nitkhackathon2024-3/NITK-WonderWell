import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/helpers/usecase.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree_template.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/create_tree_repository.dart';

class CreateTree extends Usecase<bool, CreateTreeParams, AppFailure> {
  final CreateTreeRepository repository;

  const CreateTree({required this.repository});

  @override
  Future<Either<AppFailure, bool>> call(CreateTreeParams params) {
    return repository.createTree(params.tree);
  }
}

class CreateTreeParams extends Equatable {
  final TreeTemplate tree;

  const CreateTreeParams({required this.tree});

  @override
  List<Object?> get props => [tree];
}
