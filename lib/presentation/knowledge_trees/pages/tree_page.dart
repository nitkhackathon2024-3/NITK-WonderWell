import 'package:flutter/material.dart';
import 'package:graphview/GraphView.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/node.dart' as my;

import 'node_details_page.dart';  // Import the NodeDetailsPage

class TreeViewPage extends StatefulWidget {
  final my.Node root;
  const TreeViewPage({super.key, required this.root});

  @override
  State<TreeViewPage> createState() => _TreeViewPageState();
}

class _TreeViewPageState extends State<TreeViewPage> {
  final nodes = <String, my.Node>{};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tree View"),
        centerTitle: true,
      ),
      body: Center(
        child: InteractiveViewer(
          constrained: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.01,
          maxScale: 5.6,
          child: GraphView(
            graph: graph,
            algorithm:
                BuchheimWalkerAlgorithm(builder, TreeEdgeRenderer(builder)),
            paint: Paint()
              ..color = Colors.green
              ..strokeWidth = 1
              ..style = PaintingStyle.stroke,
            builder: (Node node) {
              var a = node.key?.value as String;
              return rectangleWidget(a);
            },
          ),
        ),
      ),
    );
  }

  Widget rectangleWidget(String a) {
    final currentNode = nodes[a]!;  // Get the node using its ID

    return InkWell(
      onTap: () {
        // Navigate to NodeDetailsPage with label, keyPoints, summary, and subtopics using Navigator.push
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NodeDetailsPage(
              label: currentNode.label,
              keyPoints: currentNode.keyPoints,  // Assuming you have keyPoints field in the node
              summary: currentNode.summary,      // Assuming you have summary field in the node
              subtopics: currentNode.subtopics,  // Assuming you have subtopics field in the node
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(color: Colors.blue.shade100, spreadRadius: 1),
          ],
        ),
        child: Text(
          currentNode.label,
          softWrap: true,
        ),
      ),
    );
  }

  final Graph graph = Graph()..isTree = true;
  BuchheimWalkerConfiguration builder = BuchheimWalkerConfiguration();

  @override
  void initState() {
    super.initState();
    final currentLevel = <my.Node>[];
    final nextLevel = <my.Node>[widget.root];
    nodes[widget.root.id] = widget.root;

    while (nextLevel.isNotEmpty) {
      final current = nextLevel.removeAt(0);
      currentLevel.add(current);

      for (final child in current.children) {
        nodes[child.id] = child;
        graph.addEdge(Node.Id(current.id), Node.Id(child.id));
        nextLevel.add(child);
      }
    }

    builder
      ..siblingSeparation = (10)
      ..levelSeparation = (15)
      ..subtreeSeparation = (15)
      ..orientation = (BuchheimWalkerConfiguration.ORIENTATION_TOP_BOTTOM);
  }
}
