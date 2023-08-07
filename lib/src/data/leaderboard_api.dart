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
}
