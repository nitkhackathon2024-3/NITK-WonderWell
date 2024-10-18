import 'package:wisdom_well/core/network/network_client.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/node.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';

abstract class FetchTreeRemoteDs {
  Future<TreeDetails> fetchTreeDetail(String treeId);
}

class FetchTreeRemoteDsImpl implements FetchTreeRemoteDs {
  final NetworkClient networkClient;

  const FetchTreeRemoteDsImpl({required this.networkClient});

  @override
  Future<TreeDetails> fetchTreeDetail(String treeId) async {
    return TreeDetails(
      id: "id",
      name: "name",
      root: Node(
        id: "id",
        label: "label",
        keyPoints: [],
        subtopics: [],
        summary: "",
        children: [],
      ),
    );
  }
}
