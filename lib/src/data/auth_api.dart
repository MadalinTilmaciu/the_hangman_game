import 'package:firebase_auth/firebase_auth.dart';

import '../models/index.dart';

class AuthApi {
  AuthApi(
    this._auth,
  );

  final FirebaseAuth _auth;

  Stream<GameUser?> currentUser() {
    return _auth.userChanges().map(
      (User? user) {
        if (user == null) {
          return null;
        }

        return GameUser(
          uid: user.uid,
          email: user.email!,
          displayName: user.displayName ?? user.email!.split('@').first,
        );
      },
    ).distinct();
  }

  Future<void> createUser({required String name, required String email, required String password}) async {
    await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    await _auth.currentUser!.updateDisplayName(name);
  }

  Future<void> loginUser({required String email, required String password}) async {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> logoutUser() async {
    _auth.signOut();
  }
}
