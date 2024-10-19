import 'package:wisdom_well/core/services/database_provider.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';

abstract class UpdateTreeRemoteDs {
  Future<bool> updateTree(TreeDetails tree);
}

class UpdateTreeRemoteDsImpl implements UpdateTreeRemoteDs {
  final DatabaseProvider databaseProvider;

  const UpdateTreeRemoteDsImpl({required this.databaseProvider});

  @override
  Future<bool> updateTree(TreeDetails tree) {
    return databaseProvider.updateTree(tree);
  }
}
