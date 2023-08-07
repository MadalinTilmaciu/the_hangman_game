part of '../index.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    GameUser? user,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(Map<String, dynamic>.from(json));
}
