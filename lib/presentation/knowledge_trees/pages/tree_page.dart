import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:graphview/GraphView.dart';

import 'package:wisdom_well/domain/knowledge_trees/entities/node.dart' as my;

@RoutePage()
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
        title: Text(""),
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
              // I can decide what widget should be shown here based on the id
              var a = node.key?.value as String;
              return rectangleWidget(a);
            },
          ),
        ),
      ),
    );
  }

  Widget rectangleWidget(String a) {
    return InkWell(
      onTap: () {
        debugPrint('clicked');
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
          a == "3"
              ? "Homeakj dfl;kajdf ;lkajfd;lkaj;dfja;ldjkfl;ajfd;lajf"
              : nodes[a]!.label,
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
