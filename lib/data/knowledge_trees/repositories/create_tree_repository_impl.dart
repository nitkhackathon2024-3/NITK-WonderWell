import 'package:dartz/dartz.dart';
import 'package:wisdom_well/core/exceptions/app_exception.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/failures/failure_type.dart';
import 'package:wisdom_well/core/network/network_info.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/create_tree_remote_ds.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/generate_tree_remote_ds.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree_template.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/create_tree_repository.dart';

class CreateTreeRepositoryImpl implements CreateTreeRepository {
  final NetworkInfo networkInfo;
  final GenerateTreeRemoteDs generateTreeRemoteDs;
  final CreateTreeRemoteDs createTreeRepository;

  const CreateTreeRepositoryImpl({
    required this.networkInfo,
    required this.generateTreeRemoteDs,
    required this.createTreeRepository,
  });

  @override
  Future<Either<AppFailure, bool>> createTree(TreeTemplate tree) async {
    if (networkInfo.isConnected) {
      try {
        final res = await generateTreeRemoteDs.generateTree(null, tree);
        return Right(await createTreeRepository.createTree(res));
      } on AppException catch (exception) {
        return Left(AppException.handleException(exception)!);
      }
    } else {
      return Left(AppFailure(failureType: FailureType.notConnectedToNetwork()));
    }
  }
}
