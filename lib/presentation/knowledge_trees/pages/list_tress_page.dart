import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wisdom_well/applications/trees/trees_bloc.dart';
import 'package:wisdom_well/core/routes/auto_router.gr.dart';
import 'package:wisdom_well/core/services/service_locator.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/node.dart' as my;
import 'package:wisdom_well/presentation/knowledge_trees/pages/tree_page.dart';

@RoutePage()
class ListTressPage extends StatefulWidget {
  const ListTressPage({super.key});

  @override
  State<ListTressPage> createState() => _ListTressPageState();
}

class _ListTressPageState extends State<ListTressPage> {
  List<Tree> firebaseTrees = [];
  bool isFirebaseLoading = true;
  String? firebaseErrorMessage;

  @override
  void initState() {
    super.initState();
    fetchTreesFromFirebase();
  }

  // Method to fetch trees from Firebase
  Future<void> fetchTreesFromFirebase() async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        setState(() {
          firebaseErrorMessage = "User not logged in";
          isFirebaseLoading = false;
        });
        return;
      }

      // Fetch trees from Firestore
      final userDoc = FirebaseFirestore.instance.collection('users').doc(user.uid);
      final treesSnapshot = await userDoc.collection('tree').get();

      final fetchedTrees = treesSnapshot.docs.map((doc) {
        final data = doc.data();
        return Tree(
          id: data['id'] as String,
          name: data['name'] as String,
        );
      }).toList();

      setState(() {
        firebaseTrees = fetchedTrees;
        isFirebaseLoading = false;
      });
    } catch (e) {
      setState(() {
        firebaseErrorMessage = e.toString();
        isFirebaseLoading = false;
      });
    }
  }

  // Method to fetch the root node of a tree from Firebase
  Future<my.Node?> fetchTreeRoot(String treeId) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) throw Exception("User not logged in");

      final userDoc = FirebaseFirestore.instance.collection('users').doc(user.uid);
      final treeDoc = await userDoc.collection('tree').doc(treeId).get();
      final treeData = treeDoc.data();

      if (treeData == null) return null;

      // Convert the tree_json's root to Node object
      final rootJson = treeData['tree_json']['root'] as Map<String, dynamic>;
      return my.Node.fromJson(rootJson);  // Assuming you have fromJson constructor in Node class
    } catch (e) {
      debugPrint("Error fetching tree root: $e");
      return null;
    }
  }

  // Method to delete a tree from Firebase
  Future<void> deleteTree(String treeId) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) throw Exception("User not logged in");

      final userDoc = FirebaseFirestore.instance.collection('users').doc(user.uid);
      await userDoc.collection('tree').doc(treeId).delete();

      setState(() {
        firebaseTrees.removeWhere((tree) => tree.id == treeId); // Remove locally after deletion
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Tree deleted successfully.")),
      );
    } catch (e) {
      debugPrint("Error deleting tree: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to delete tree.")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TreesBloc>(
      create: (context) => sl<TreesBloc>()..add(TreesEvent.fetchTrees()),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Knowledge Trees"),
          centerTitle: true,
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              AutoRouter.of(context).push(
                CreateTreeRoute(treesBloc: BlocProvider.of<TreesBloc>(context)),
              );
            },
          ),
        ),
        body: BlocConsumer<TreesBloc, TreesState>(
          listener: (context, state) {
            if (state is UpdatedTrees) {
              BlocProvider.of<TreesBloc>(context).add(TreesEvent.fetchTrees());
            }
          },
          builder: (context, state) {
            if (isFirebaseLoading || state is TreesLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (firebaseErrorMessage != null) {
              return Center(
                child: Text(firebaseErrorMessage!, style: TextStyle(color: Colors.red)),
              );
            } else if (state is TreesError) {
              return Center(
                child: Text(state.failure.message ?? "Something went wrong. Please try again later."),
              );
            } else if (state is LoadedTress) {
              // Combine Firebase trees with Bloc trees
              final combinedTrees = [...state.trees, ...firebaseTrees];

              if (combinedTrees.isEmpty) {
                return Center(
                  child: Text("Create a tree to start!"),
                );
              } else {
                return RefreshIndicator(
                  onRefresh: () async {
                    await fetchTreesFromFirebase();
                    BlocProvider.of<TreesBloc>(context).add(TreesEvent.fetchTrees());
                  },
                  child: ListView.builder(
                    itemCount: combinedTrees.length,
                    itemBuilder: (context, index) {
                      final tree = combinedTrees[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            title: Text(
                              tree.name,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () async {
                                final confirmDelete = await showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: Text('Delete Tree'),
                                    content: Text('Are you sure you want to delete this tree?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.of(context).pop(false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.of(context).pop(true),
                                        child: Text('Delete', style: TextStyle(color: Colors.red)),
                                      ),
                                    ],
                                  ),
                                );

                                if (confirmDelete == true) {
                                  await deleteTree(tree.id);
                                }
                              },
                            ),
                            onTap: () async {
                              // Fetch the root node from Firebase
                              final rootNode = await fetchTreeRoot(tree.id);

                              if (rootNode != null) {
                                // Navigate to the TreeViewPage with the fetched root node
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => TreeViewPage(treeId: tree.id, label: tree.name),
                                ));
                              } else {
                                // Show an error message if root node is not found
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Failed to load tree root.")),
                                );
                              }
                            },
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
            }
            return SizedBox.shrink(); // Default fallback
          },
        ),
      ),
    );
  }
}
