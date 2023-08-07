import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/index.dart';

part 'index.freezed.dart';

part 'auth/create_user.dart';
part 'auth/login_user.dart';
part 'auth/logout_user.dart';
part 'auth/initialize_app.dart';

part 'leaderboard/get_leaderboard.dart';

abstract class PendingActions {
  String get pendingId;
}

abstract class StartAction implements PendingActions {}

abstract class StopAction implements PendingActions {}

typedef ActionResult = void Function(dynamic action);
