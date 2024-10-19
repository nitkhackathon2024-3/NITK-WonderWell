import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/helpers/usecase.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/fetch_specific_tree_repository.dart';

class FetchSpecificTree
    implements Usecase<TreeDetails, FetchSpecificTreeParams, AppFailure> {
  final FetchSpecificTreeRepository fetchSpecificTreeRepository;

  const FetchSpecificTree({required this.fetchSpecificTreeRepository});

  @override
  Future<Either<AppFailure, TreeDetails>> call(FetchSpecificTreeParams params) {
    return fetchSpecificTreeRepository.fetchSpecificTree(params.treeId);
  }
}

class FetchSpecificTreeParams extends Equatable {
  final String treeId;

  const FetchSpecificTreeParams({
    required this.treeId,
  });

  @override
  List<Object> get props => [treeId];
}
