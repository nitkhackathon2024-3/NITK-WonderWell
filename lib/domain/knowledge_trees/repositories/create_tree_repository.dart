import 'package:dartz/dartz.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree_template.dart';

abstract class CreateTreeRepository {
  Future<Either<AppFailure, bool>> createTree(TreeTemplate tree);
}