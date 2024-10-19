import 'package:dartz/dartz.dart';
import 'package:wisdom_well/core/exceptions/app_exception.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/failures/failure_type.dart';
import 'package:wisdom_well/core/network/network_info.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/fetch_trees_remote_ds.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/fetch_trees_repository.dart';

class FetchTreesRepositoryImpl implements FetchTreesRepository {
  final NetworkInfo networkInfo;
  final FetchTreesRemoteDs fetchTreesRemoteDs;

  const FetchTreesRepositoryImpl({
    required this.networkInfo,
    required this.fetchTreesRemoteDs,
  });

  @override
  Future<Either<AppFailure, List<Tree>>> fetchTrees() async {
    if (networkInfo.isConnected) {
      try {
        final res = await fetchTreesRemoteDs.fetchTrees();
        return Right(res);
      } on AppException catch (exception) {
        return Left(AppException.handleException(exception)!);
      }
    } else {
      return Left(AppFailure(failureType: FailureType.notConnectedToNetwork()));
    }
  }
}
