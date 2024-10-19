import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wisdom_well/core/data/models/user_model.dart';
import 'package:wisdom_well/core/exceptions/app_exception.dart';
import 'package:wisdom_well/core/exceptions/exception_type.dart';

class Authenticator extends ChangeNotifier {
  static final _db = FirebaseFirestore.instance;
  static final _auth = FirebaseAuth.instance;

  Authenticator() {
    _auth.authStateChanges().listen((_) {
      notifyListeners();
    });
  }

  Future<void> signIn({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (exception) {
      throw switch (exception.code) {
        'user-not-found' ||
        'invalid-credential' ||
        'INVALID_LOGIN_CREDENTIALS' ||
        'wrong-password' =>
          AppException(exceptionType: const ExceptionType.server()),
        _ => AppException(),
      };
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw AppException();
    }
  }

  Future<void> signUp({
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      final res = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _db.collection('users').doc(res.user!.uid).set({'username': username});
    } on FirebaseAuthException catch (exception) {
      switch (exception.code) {
        case 'email-already-in-use':
          throw AppException();
        default:
          throw AppException();
      }
    }
  }

  Future<UserModel?> get currentUser async {
    if (_auth.currentUser == null) {
      return null;
    }
    final data =
        (await _db.collection('users').doc(_auth.currentUser!.uid).get())
            .data();
    if (data == null) {
      return null;
    }
    return UserModel.fromJson({
      ...data,
      'email': _auth.currentUser!.email,
      'id': _auth.currentUser!.uid,
      'email_verified': _auth.currentUser!.emailVerified,
    });
  }

  bool get isAuthenticated => _auth.currentUser != null;
}
