import 'package:dartz/dartz.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/failures/failure_type.dart';
import 'package:wisdom_well/core/network/network_info.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/update_tree_remote_ds.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/node.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/remove_node_repository.dart';

class RemoveNodeRepositoryImpl implements RemoveNodeRepository {
  final NetworkInfo networkInfo;
  final UpdateTreeRemoteDs updateTreeRemoteDs;

  const RemoveNodeRepositoryImpl({
    required this.networkInfo,
    required this.updateTreeRemoteDs,
  });

  @override
  Future<Either<AppFailure, bool>> removeNode(
      TreeDetails tree, String nodeId) async {
    if (networkInfo.isConnected) {
      try {
        bfs(tree.root, nodeId);
        final res = await updateTreeRemoteDs.updateTree(tree);
        return Right(res);
      } on Exception {
        return Left(AppFailure());
      }
    } else {
      return Left(AppFailure(failureType: FailureType.notConnectedToNetwork()));
    }
  }

  bool? bfs(Node node, String nodeId) {
    if (node.id == nodeId) {
      return true;
    } else {
      for (var child in node.children) {
        final res = bfs(child, nodeId);
        if (res == true) {
          node.children.remove(child);
          return null;
        } else if (res == null) {
          return null;
        }
      }
    }
    return false;
  }
}
