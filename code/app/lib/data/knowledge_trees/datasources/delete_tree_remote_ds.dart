import 'package:wisdom_well/core/services/database_provider.dart';

abstract class DeleteTreeRemoteDs {
  Future<bool> deleteTree(String treeId);
}

class DeleteTreeRemoteDsImpl implements DeleteTreeRemoteDs {
  final DatabaseProvider databaseProvider;

  const DeleteTreeRemoteDsImpl({required this.databaseProvider});

  @override
  Future<bool> deleteTree(String treeId) {
    return databaseProvider.deleteTree(treeId);
  }
}
