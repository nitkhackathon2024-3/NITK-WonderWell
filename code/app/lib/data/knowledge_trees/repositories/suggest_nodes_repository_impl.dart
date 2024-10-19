import 'package:dartz/dartz.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/failures/failure_type.dart';
import 'package:wisdom_well/core/network/network_info.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/generate_tree_remote_ds.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/update_tree_remote_ds.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/suggest_nodes_repository.dart';

class SuggestNodesRepositoryImpl implements SuggestNodesRepository {
  final NetworkInfo networkInfo;
  final UpdateTreeRemoteDs updateTreeRemoteDs;
  final GenerateTreeRemoteDs generateTreeRemoteDs;

  const SuggestNodesRepositoryImpl({
    required this.networkInfo,
    required this.updateTreeRemoteDs,
    required this.generateTreeRemoteDs,
  });

  @override
  Future<Either<AppFailure, bool>> suggestNodes(TreeDetails tree) async {
    if (networkInfo.isConnected) {
      try {
        final res = await generateTreeRemoteDs.generateTree(tree, null);
        return Right(await updateTreeRemoteDs.updateTree(res));
      } on Exception {
        return Left(AppFailure());
      }
    } else {
      return Left(AppFailure(failureType: FailureType.notConnectedToNetwork()));
    }
  }
}
