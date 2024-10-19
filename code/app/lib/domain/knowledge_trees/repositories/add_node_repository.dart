import 'package:dartz/dartz.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree_template.dart';

abstract class AddNodeRepository {
  Future<Either<AppFailure, bool>> addNode(TreeDetails tree, TreeTemplate treeTemplate);
}