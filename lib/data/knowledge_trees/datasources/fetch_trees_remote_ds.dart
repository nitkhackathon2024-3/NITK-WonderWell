import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    try {
      // Get the current user from FirebaseAuth
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        throw Exception('User not logged in');
      }

      // Access Firestore to fetch trees for the logged-in user
      final userDoc = FirebaseFirestore.instance.collection('users').doc(user.uid);
      final treesSnapshot = await userDoc.collection('trees').get();

      // Convert the Firestore documents to Tree objects
      final trees = treesSnapshot.docs.map((doc) {
        final data = doc.data();
        return Tree(
          id: data['id'] as String,
          name: data['name'] as String,
        );
      }).toList();

      return trees;
    } catch (e) {
      // Handle errors (you can also add specific error handling)
      throw Exception('Error fetching trees: $e');
    }
  }
}
