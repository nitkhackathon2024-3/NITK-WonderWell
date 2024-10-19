import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/helpers/usecase.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree_template.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/add_node_repository.dart';

class AddNode extends Usecase<bool, AddNodeParams, AppFailure> {
  final AddNodeRepository repository;

  const AddNode({required this.repository});

  @override
  Future<Either<AppFailure, bool>> call(AddNodeParams params) {
    return repository.addNode(params.tree, params.treeTemplate);
  }
}

class AddNodeParams extends Equatable {
  final TreeDetails tree;
  final TreeTemplate treeTemplate;

  const AddNodeParams({
    required this.tree,
    required this.treeTemplate,
  });

  @override
  List<Object?> get props => [tree, treeTemplate];
}
