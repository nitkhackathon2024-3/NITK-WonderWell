import 'package:dartz/dartz.dart';
import 'package:wisdom_well/core/exceptions/app_exception.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/failures/failure_type.dart';
import 'package:wisdom_well/core/network/network_info.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/fetch_tree_remote_ds.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/fetch_specific_tree_repository.dart';

class FetchSpecificTreeRepositoryImpl implements FetchSpecificTreeRepository {
  final NetworkInfo networkInfo;
  final FetchTreeRemoteDs fetchTreesRemoteDs;
  const FetchSpecificTreeRepositoryImpl(
      {required this.networkInfo, required this.fetchTreesRemoteDs});

  @override
  Future<Either<AppFailure, TreeDetails>> fetchSpecificTree(
      String treeId) async {
    if (networkInfo.isConnected) {
      try {
        final res = await fetchTreesRemoteDs.fetchTreeDetail(treeId);
        return Right(res);
      } on AppException catch (exception) {
        return Left(AppException.handleException(exception)!);
      }
    } else {
      return Left(AppFailure(failureType: FailureType .notConnectedToNetwork()));
    }
  }
}
