import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/tree.dart';

class DatabaseProvider {
  final _db = FirebaseFirestore.instance;

  Future<bool> isUsernameAvailable(String username) async {
    return (await _db
            .collection('users')
            .where('username', isEqualTo: username)
            .get())
        .docs
        .isEmpty;
  }

  Future<bool> updateTree(TreeDetails tree) async {
    try {
      await _db.collection('trees').doc(tree.id).set(tree.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> createTree(TreeDetails tree) async {
    try {
      final res = (await _db.collection('trees').add(tree.toJson()));
      await res.update({'id': res.id});
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteTree(String treeId) async {
    try {
      await _db.collection('trees').doc(treeId).delete();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<List<Tree>> fetchTrees() async {
    final res = await _db.collection('trees').get();
    return res.docs.map((doc) => Tree.fromJson(doc.data())).toList();
  }

  Future<TreeDetails> fetchTreeDetail(String treeId) async {
    final doc = await _db.collection('trees').doc(treeId).get();
    return TreeDetails.fromJson(doc.data()!);
  }
}
