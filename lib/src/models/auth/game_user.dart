part of '../index.dart';

@freezed
class GameUser with _$GameUser {
  const factory GameUser({
    required String uid,
    required String email,
    required String displayName,
  }) = _GameUser;

  factory GameUser.fromJson(Map<String, dynamic> json) => _$GameUserFromJson(Map<String, dynamic>.from(json));
}
