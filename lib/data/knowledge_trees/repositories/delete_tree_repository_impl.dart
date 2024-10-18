import 'package:dartz/dartz.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/failures/failure_type.dart';
import 'package:wisdom_well/core/network/network_info.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/delete_tree_remote_ds.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/delete_tree_repository.dart';

class DeleteTreeRepositoryImpl implements DeleteTreeRepository {
  final DeleteTreeRemoteDs deleteTreeRemoteDs;
  final NetworkInfo networkInfo;

  const DeleteTreeRepositoryImpl({
    required this.deleteTreeRemoteDs,
    required this.networkInfo,
  });

  @override
  Future<Either<AppFailure, bool>> deleteTree(String treeId) async {
    if (networkInfo.isConnected) {
      return Right(await deleteTreeRemoteDs.deleteTree(treeId));
    } else {
      return Left(AppFailure(failureType: FailureType.notConnectedToNetwork()));
    }
  }
}
