import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/index.dart';

class LeaderboardApi {
  LeaderboardApi(
    this._firestore,
  );

  final FirebaseFirestore _firestore;

  Future<List<LeaderboardUser>> getLeaderboard() async {
    final QuerySnapshot<Map<String, dynamic>> snapshot =
        await _firestore.collection('/leaderboard').orderBy('score', descending: true).limit(10).get();

    return snapshot.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => LeaderboardUser.fromJson(doc.data()))
        .toList();
  }

  Future<int> getCurrentRank(String uid) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot =
        await _firestore.collection('/leaderboard').orderBy('score', descending: true).get();

    final List<LeaderboardUser> snapshotDocs = snapshot.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => LeaderboardUser.fromJson(doc.data()))
        .toList();

    final LeaderboardUser currentUser = snapshotDocs.firstWhere((LeaderboardUser user) => user.uid == uid);

    return snapshotDocs.indexOf(currentUser);
  }

  Future<void> updateUserScore(String uid, int score) async {
    final QuerySnapshot<Map<String, dynamic>> leaderboard =
        await _firestore.collection('/leaderboard').where('uid', isEqualTo: uid).get();

    await _firestore.collection('/leaderboard').doc(leaderboard.docs.first.id).update(
      <String, dynamic>{'score': (leaderboard.docs.first.data()['score'] as int) + score},
    );
  }
}
