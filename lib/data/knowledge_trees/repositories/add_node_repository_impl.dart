import 'package:dartz/dartz.dart';
import 'package:wisdom_well/core/exceptions/app_exception.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/failures/failure_type.dart';
import 'package:wisdom_well/core/network/network_info.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/generate_tree_remote_ds.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/update_tree_remote_ds.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree_template.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/add_node_repository.dart';

class AddNodeRepositoryImpl implements AddNodeRepository {
  final GenerateTreeRemoteDs generateTreeRemoteDs;
  final UpdateTreeRemoteDs updateTreeRemoteDs;
  final NetworkInfo networkInfo;

  const AddNodeRepositoryImpl({
    required this.generateTreeRemoteDs,
    required this.updateTreeRemoteDs,
    required this.networkInfo,
  });

  @override
  Future<Either<AppFailure, bool>> addNode(
    TreeDetails tree,
    TreeTemplate treeTemplate,
  ) async {
    if (networkInfo.isConnected) {
      try {
        final res = await generateTreeRemoteDs.generateTree(tree, treeTemplate);
        return Right(await updateTreeRemoteDs.updateTree(res));
      } on AppException catch (exception) {
        return Left(AppException.handleException(exception)!);
      }
    } else {
      return Left(AppFailure(failureType: FailureType.notConnectedToNetwork()));
    }
  }
}
