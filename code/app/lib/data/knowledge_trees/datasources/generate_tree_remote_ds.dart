import 'package:wisdom_well/core/network/network_client.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/node.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree_template.dart';

abstract class GenerateTreeRemoteDs {
  Future<TreeDetails> generateTree(TreeDetails? tree, TreeTemplate? treeTemplate);
}

class GenerateTreeRemoteDsImpl implements GenerateTreeRemoteDs {
  final NetworkClient networkClient;

  const GenerateTreeRemoteDsImpl(this.networkClient);

  @override
  Future<TreeDetails> generateTree(
    TreeDetails? tree,
    TreeTemplate? treeTemplate,
  ) async {
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
