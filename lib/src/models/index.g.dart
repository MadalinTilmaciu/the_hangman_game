// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameState _$$_GameStateFromJson(Map<String, dynamic> json) => _$_GameState(
      auth: json['auth'] == null ? const AuthState() : AuthState.fromJson(json['auth'] as Map<String, dynamic>),
      leaderboardList: json['leaderboardList'] == null
          ? const LeaderboardState()
          : LeaderboardState.fromJson(json['leaderboardList'] as Map<String, dynamic>),
      word: json['word'] == null ? const WordState() : WordState.fromJson(json['word'] as Map<String, dynamic>),
      pendingActions:
          (json['pendingActions'] as List<dynamic>?)?.map((dynamic e) => e as String).toSet() ?? const <String>{},
    );

Map<String, dynamic> _$$_GameStateToJson(_$_GameState instance) => <String, dynamic>{
      'auth': instance.auth,
      'leaderboardList': instance.leaderboardList,
      'word': instance.word,
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

_$_LeaderboardUser _$$_LeaderboardUserFromJson(Map<String, dynamic> json) => _$_LeaderboardUser(
      uid: json['uid'] as String,
      name: json['name'] as String,
      score: json['score'] as int,
    );

Map<String, dynamic> _$$_LeaderboardUserToJson(_$_LeaderboardUser instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'score': instance.score,
    };

_$_LeaderboardState _$$_LeaderboardStateFromJson(Map<String, dynamic> json) => _$_LeaderboardState(
      leaderboardList: (json['leaderboardList'] as List<dynamic>?)
              ?.map((dynamic e) => LeaderboardUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LeaderboardUser>[],
    );

Map<String, dynamic> _$$_LeaderboardStateToJson(_$_LeaderboardState instance) => <String, dynamic>{
      'leaderboardList': instance.leaderboardList,
    };

_$_Word _$$_WordFromJson(Map<String, dynamic> json) => _$_Word(
      word: json['word'] as String,
      definition: json['definition'] as String,
      pronunciation: json['pronunciation'] as String,
    );

Map<String, dynamic> _$$_WordToJson(_$_Word instance) => <String, dynamic>{
      'word': instance.word,
      'definition': instance.definition,
      'pronunciation': instance.pronunciation,
    };

_$_WordState _$$_WordStateFromJson(Map<String, dynamic> json) => _$_WordState(
      word: json['word'] == null ? null : Word.fromJson(json['word'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WordStateToJson(_$_WordState instance) => <String, dynamic>{
      'word': instance.word,
    };
