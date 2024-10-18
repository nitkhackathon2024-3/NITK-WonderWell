import 'package:dartz/dartz.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';

abstract class RemoveNodeRepository {
  Future<Either<AppFailure, bool>> removeNode(TreeDetails tree, String nodeId);
}