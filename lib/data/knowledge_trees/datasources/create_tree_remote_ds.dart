import 'package:wisdom_well/core/services/database_provider.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';

abstract class CreateTreeRemoteDs {
  Future<bool> createTree(TreeDetails tree);
}

class CreateTreeRemoteDsImpl implements CreateTreeRemoteDs {
  final DatabaseProvider databaseProvider;

  const CreateTreeRemoteDsImpl({required this.databaseProvider});

  @override
  Future<bool> createTree(TreeDetails tree) {
    return databaseProvider.createTree(tree);
  }
}
