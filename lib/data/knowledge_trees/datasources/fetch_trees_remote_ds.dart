import 'package:wisdom_well/core/network/network_client.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';

abstract class FetchTreesRemoteDs {
  Future<List<Tree>> fetchTrees();
}

final class FetchTreesRemoteDsImpl implements FetchTreesRemoteDs {
  final NetworkClient networkClient;

  FetchTreesRemoteDsImpl({required this.networkClient});

  @override
  Future<List<Tree>> fetchTrees() async {
    return [];
  }
}
