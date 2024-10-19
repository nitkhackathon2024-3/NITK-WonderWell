import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/helpers/usecase.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/delete_tree_repository.dart';

class DeleteTree extends Usecase<bool, DeleteTreeParams, AppFailure> {
  final DeleteTreeRepository repository;

  const DeleteTree({required this.repository});

  @override
  Future<Either<AppFailure, bool>> call(DeleteTreeParams params) {
    return repository.deleteTree(params.treeId);
  }
}

class DeleteTreeParams extends Equatable {
  final String treeId;

  const DeleteTreeParams(this.treeId);

  @override
  List<Object?> get props => [treeId];
}
