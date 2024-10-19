import 'package:dartz/dartz.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';

abstract class FetchTreesRepository {
  Future<Either<AppFailure, List<Tree>>> fetchTrees();
}
