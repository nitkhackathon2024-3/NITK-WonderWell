import 'package:dartz/dartz.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/helpers/usecase.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/fetch_trees_repository.dart';

class FetchTrees implements Usecase<List<Tree>, NoParams, AppFailure> {
  final FetchTreesRepository repository;

  const FetchTrees(this.repository);

  @override
  Future<Either<AppFailure, List<Tree>>> call(NoParams params) {
    return repository.fetchTrees();
  }
}
