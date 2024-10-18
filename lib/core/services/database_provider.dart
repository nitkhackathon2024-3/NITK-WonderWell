import 'package:cloud_firestore/cloud_firestore.dart';

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
}
