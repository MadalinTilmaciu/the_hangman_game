// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameState _$$_GameStateFromJson(Map<String, dynamic> json) => _$_GameState(
      auth: json['auth'] == null ? const AuthState() : AuthState.fromJson(json['auth'] as Map<String, dynamic>),
      pendingActions:
          (json['pendingActions'] as List<dynamic>?)?.map((dynamic e) => e as String).toSet() ?? const <String>{},
    );

Map<String, dynamic> _$$_GameStateToJson(_$_GameState instance) => <String, dynamic>{
      'auth': instance.auth,
      'pendingActions': instance.pendingActions.toList(),
    };

_$_GameUser _$$_GameUserFromJson(Map<String, dynamic> json) => _$_GameUser(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
    );

Map<String, dynamic> _$$_GameUserToJson(_$_GameUser instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
    };

_$_AuthState _$$_AuthStateFromJson(Map<String, dynamic> json) => _$_AuthState(
      user: json['user'] == null ? null : GameUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthStateToJson(_$_AuthState instance) => <String, dynamic>{
      'user': instance.user,
    };
