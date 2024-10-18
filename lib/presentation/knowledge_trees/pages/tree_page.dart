import 'package:flutter/material.dart';
import 'package:graphview/GraphView.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/node.dart' as my;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'node_details_page.dart';  

class TreeViewPage extends StatefulWidget {
  final String treeId; // Tree ID to fetch
  final String label;
  const TreeViewPage({required this.treeId, required this.label});

  @override
  State<TreeViewPage> createState() => _TreeViewPageState();
}

class _TreeViewPageState extends State<TreeViewPage> {
  final nodes = <String, my.Node>{};
  final Graph graph = Graph()..isTree = true;
  BuchheimWalkerConfiguration builder = BuchheimWalkerConfiguration();
  bool isLoading = true; // Loading state for the tree data

  @override
  void initState() {
    super.initState();
    fetchTreeRoot(widget.treeId); // Fetch the tree root on initialization
  }

  // Method to fetch the root node of a tree from Firebase
  Future<void> fetchTreeRoot(String treeId) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) throw Exception("User not logged in");

      final userDoc = FirebaseFirestore.instance.collection('users').doc(user.uid);
      final treeDoc = await userDoc.collection('tree').doc(treeId).get();
      final treeData = treeDoc.data();

      if (treeData == null) {
        setState(() {
          isLoading = false; // Stop loading if no data found
        });
        return;
      }

      // Convert the tree_json's root to Node object
      final rootJson = treeData['tree_json']['root'] as Map<String, dynamic>;
      my.Node rootNode = my.Node.fromJson(rootJson);  // Assuming you have fromJson constructor in Node class

      // Initialize the graph with the root node
      initializeGraph(rootNode);
    } catch (e) {
      debugPrint("Error fetching tree root: $e");
      setState(() {
        isLoading = false; // Stop loading in case of error
      });
    }
  }

  void initializeGraph(my.Node rootNode) {
    setState(() {
      // Populate the nodes map and the graph with the root node
      nodes[rootNode.id] = rootNode;
      final currentLevel = <my.Node>[];
      final nextLevel = <my.Node>[rootNode];

      while (nextLevel.isNotEmpty) {
        final current = nextLevel.removeAt(0);
        currentLevel.add(current);

        for (final child in current.children) {
          nodes[child.id] = child;
          graph.addEdge(Node.Id(current.id), Node.Id(child.id));
          nextLevel.add(child);
        }
      }

      isLoading = false; // Stop loading once the graph is initialized
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Graph View"),
        centerTitle: true,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator()) // Show loading indicator
          : Center(
              child: InteractiveViewer(
                constrained: false,
                boundaryMargin: EdgeInsets.all(100),
                minScale: 0.01,
                maxScale: 5.6,
                child: GraphView(
                  graph: graph,
                  algorithm: BuchheimWalkerAlgorithm(builder, TreeEdgeRenderer(builder)),
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NodeDetailsPage(
              label: currentNode.label,
              keyPoints: currentNode.keyPoints,  
              summary: currentNode.summary,      
              subtopics: currentNode.subtopics,  
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
}
