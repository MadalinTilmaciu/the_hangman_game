// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameState _$GameStateFromJson(Map<String, dynamic> json) {
  return _GameState.fromJson(json);
}

/// @nodoc
mixin _$GameState {
  AuthState get auth => throw _privateConstructorUsedError;
  LeaderboardState get leaderboardList => throw _privateConstructorUsedError;
  Set<String> get pendingActions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) = _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call({AuthState auth, LeaderboardState leaderboardList, Set<String> pendingActions});

  $AuthStateCopyWith<$Res> get auth;
  $LeaderboardStateCopyWith<$Res> get leaderboardList;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? leaderboardList = null,
    Object? pendingActions = null,
  }) {
    return _then(_value.copyWith(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthState,
      leaderboardList: null == leaderboardList
          ? _value.leaderboardList
          : leaderboardList // ignore: cast_nullable_to_non_nullable
              as LeaderboardState,
      pendingActions: null == pendingActions
          ? _value.pendingActions
          : pendingActions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<$Res> get auth {
    return $AuthStateCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LeaderboardStateCopyWith<$Res> get leaderboardList {
    return $LeaderboardStateCopyWith<$Res>(_value.leaderboardList, (value) {
      return _then(_value.copyWith(leaderboardList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$$_GameStateCopyWith(_$_GameState value, $Res Function(_$_GameState) then) =
      __$$_GameStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthState auth, LeaderboardState leaderboardList, Set<String> pendingActions});

  @override
  $AuthStateCopyWith<$Res> get auth;
  @override
  $LeaderboardStateCopyWith<$Res> get leaderboardList;
}

/// @nodoc
class __$$_GameStateCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res, _$_GameState>
    implements _$$_GameStateCopyWith<$Res> {
  __$$_GameStateCopyWithImpl(_$_GameState _value, $Res Function(_$_GameState) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? leaderboardList = null,
    Object? pendingActions = null,
  }) {
    return _then(_$_GameState(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthState,
      leaderboardList: null == leaderboardList
          ? _value.leaderboardList
          : leaderboardList // ignore: cast_nullable_to_non_nullable
              as LeaderboardState,
      pendingActions: null == pendingActions
          ? _value._pendingActions
          : pendingActions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameState implements _GameState {
  const _$_GameState(
      {this.auth = const AuthState(),
      this.leaderboardList = const LeaderboardState(),
      final Set<String> pendingActions = const <String>{}})
      : _pendingActions = pendingActions;

  factory _$_GameState.fromJson(Map<String, dynamic> json) => _$$_GameStateFromJson(json);

  @override
  @JsonKey()
  final AuthState auth;
  @override
  @JsonKey()
  final LeaderboardState leaderboardList;
  final Set<String> _pendingActions;
  @override
  @JsonKey()
  Set<String> get pendingActions {
    if (_pendingActions is EqualUnmodifiableSetView) return _pendingActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_pendingActions);
  }

  @override
  String toString() {
    return 'GameState(auth: $auth, leaderboardList: $leaderboardList, pendingActions: $pendingActions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameState &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.leaderboardList, leaderboardList) || other.leaderboardList == leaderboardList) &&
            const DeepCollectionEquality().equals(other._pendingActions, _pendingActions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, auth, leaderboardList, const DeepCollectionEquality().hash(_pendingActions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameStateCopyWith<_$_GameState> get copyWith => __$$_GameStateCopyWithImpl<_$_GameState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameStateToJson(
      this,
    );
  }
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {final AuthState auth, final LeaderboardState leaderboardList, final Set<String> pendingActions}) = _$_GameState;

  factory _GameState.fromJson(Map<String, dynamic> json) = _$_GameState.fromJson;

  @override
  AuthState get auth;
  @override
  LeaderboardState get leaderboardList;
  @override
  Set<String> get pendingActions;
  @override
  @JsonKey(ignore: true)
  _$$_GameStateCopyWith<_$_GameState> get copyWith => throw _privateConstructorUsedError;
}

GameUser _$GameUserFromJson(Map<String, dynamic> json) {
  return _GameUser.fromJson(json);
}

/// @nodoc
mixin _$GameUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameUserCopyWith<GameUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameUserCopyWith<$Res> {
  factory $GameUserCopyWith(GameUser value, $Res Function(GameUser) then) = _$GameUserCopyWithImpl<$Res, GameUser>;
  @useResult
  $Res call({String uid, String email, String displayName});
}

/// @nodoc
class _$GameUserCopyWithImpl<$Res, $Val extends GameUser> implements $GameUserCopyWith<$Res> {
  _$GameUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameUserCopyWith<$Res> implements $GameUserCopyWith<$Res> {
  factory _$$_GameUserCopyWith(_$_GameUser value, $Res Function(_$_GameUser) then) = __$$_GameUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String email, String displayName});
}

/// @nodoc
class __$$_GameUserCopyWithImpl<$Res> extends _$GameUserCopyWithImpl<$Res, _$_GameUser>
    implements _$$_GameUserCopyWith<$Res> {
  __$$_GameUserCopyWithImpl(_$_GameUser _value, $Res Function(_$_GameUser) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
  }) {
    return _then(_$_GameUser(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameUser implements _GameUser {
  const _$_GameUser({required this.uid, required this.email, required this.displayName});

  factory _$_GameUser.fromJson(Map<String, dynamic> json) => _$$_GameUserFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayName;

  @override
  String toString() {
    return 'GameUser(uid: $uid, email: $email, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameUser &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) || other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, email, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameUserCopyWith<_$_GameUser> get copyWith => __$$_GameUserCopyWithImpl<_$_GameUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameUserToJson(
      this,
    );
  }
}

abstract class _GameUser implements GameUser {
  const factory _GameUser({required final String uid, required final String email, required final String displayName}) =
      _$_GameUser;

  factory _GameUser.fromJson(Map<String, dynamic> json) = _$_GameUser.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$_GameUserCopyWith<_$_GameUser> get copyWith => throw _privateConstructorUsedError;
}

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return _AuthState.fromJson(json);
}

/// @nodoc
mixin _$AuthState {
  GameUser? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) = _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({GameUser? user});

  $GameUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GameUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $GameUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(_$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameUser? user});

  @override
  $GameUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(_$_AuthState _value, $Res Function(_$_AuthState) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_AuthState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GameUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthState implements _AuthState {
  const _$_AuthState({this.user});

  factory _$_AuthState.fromJson(Map<String, dynamic> json) => _$$_AuthStateFromJson(json);

  @override
  final GameUser? user;

  @override
  String toString() {
    return 'AuthState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith => __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthStateToJson(
      this,
    );
  }
}

abstract class _AuthState implements AuthState {
  const factory _AuthState({final GameUser? user}) = _$_AuthState;

  factory _AuthState.fromJson(Map<String, dynamic> json) = _$_AuthState.fromJson;

  @override
  GameUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith => throw _privateConstructorUsedError;
}

LeaderboardUser _$LeaderboardUserFromJson(Map<String, dynamic> json) {
  return _LeaderboardUser.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardUser {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaderboardUserCopyWith<LeaderboardUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardUserCopyWith<$Res> {
  factory $LeaderboardUserCopyWith(LeaderboardUser value, $Res Function(LeaderboardUser) then) =
      _$LeaderboardUserCopyWithImpl<$Res, LeaderboardUser>;
  @useResult
  $Res call({String uid, String name, int score});
}

/// @nodoc
class _$LeaderboardUserCopyWithImpl<$Res, $Val extends LeaderboardUser> implements $LeaderboardUserCopyWith<$Res> {
  _$LeaderboardUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeaderboardUserCopyWith<$Res> implements $LeaderboardUserCopyWith<$Res> {
  factory _$$_LeaderboardUserCopyWith(_$_LeaderboardUser value, $Res Function(_$_LeaderboardUser) then) =
      __$$_LeaderboardUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String name, int score});
}

/// @nodoc
class __$$_LeaderboardUserCopyWithImpl<$Res> extends _$LeaderboardUserCopyWithImpl<$Res, _$_LeaderboardUser>
    implements _$$_LeaderboardUserCopyWith<$Res> {
  __$$_LeaderboardUserCopyWithImpl(_$_LeaderboardUser _value, $Res Function(_$_LeaderboardUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? score = null,
  }) {
    return _then(_$_LeaderboardUser(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeaderboardUser implements _LeaderboardUser {
  const _$_LeaderboardUser({required this.uid, required this.name, required this.score});

  factory _$_LeaderboardUser.fromJson(Map<String, dynamic> json) => _$$_LeaderboardUserFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final int score;

  @override
  String toString() {
    return 'LeaderboardUser(uid: $uid, name: $name, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaderboardUser &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeaderboardUserCopyWith<_$_LeaderboardUser> get copyWith =>
      __$$_LeaderboardUserCopyWithImpl<_$_LeaderboardUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeaderboardUserToJson(
      this,
    );
  }
}

abstract class _LeaderboardUser implements LeaderboardUser {
  const factory _LeaderboardUser({required final String uid, required final String name, required final int score}) =
      _$_LeaderboardUser;

  factory _LeaderboardUser.fromJson(Map<String, dynamic> json) = _$_LeaderboardUser.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$_LeaderboardUserCopyWith<_$_LeaderboardUser> get copyWith => throw _privateConstructorUsedError;
}

LeaderboardState _$LeaderboardStateFromJson(Map<String, dynamic> json) {
  return _LeaderboardState.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardState {
  List<LeaderboardUser> get leaderboardList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaderboardStateCopyWith<LeaderboardState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardStateCopyWith<$Res> {
  factory $LeaderboardStateCopyWith(LeaderboardState value, $Res Function(LeaderboardState) then) =
      _$LeaderboardStateCopyWithImpl<$Res, LeaderboardState>;
  @useResult
  $Res call({List<LeaderboardUser> leaderboardList});
}

/// @nodoc
class _$LeaderboardStateCopyWithImpl<$Res, $Val extends LeaderboardState> implements $LeaderboardStateCopyWith<$Res> {
  _$LeaderboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaderboardList = null,
  }) {
    return _then(_value.copyWith(
      leaderboardList: null == leaderboardList
          ? _value.leaderboardList
          : leaderboardList // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeaderboardStateCopyWith<$Res> implements $LeaderboardStateCopyWith<$Res> {
  factory _$$_LeaderboardStateCopyWith(_$_LeaderboardState value, $Res Function(_$_LeaderboardState) then) =
      __$$_LeaderboardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LeaderboardUser> leaderboardList});
}

/// @nodoc
class __$$_LeaderboardStateCopyWithImpl<$Res> extends _$LeaderboardStateCopyWithImpl<$Res, _$_LeaderboardState>
    implements _$$_LeaderboardStateCopyWith<$Res> {
  __$$_LeaderboardStateCopyWithImpl(_$_LeaderboardState _value, $Res Function(_$_LeaderboardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaderboardList = null,
  }) {
    return _then(_$_LeaderboardState(
      leaderboardList: null == leaderboardList
          ? _value._leaderboardList
          : leaderboardList // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeaderboardState implements _LeaderboardState {
  const _$_LeaderboardState({final List<LeaderboardUser> leaderboardList = const <LeaderboardUser>[]})
      : _leaderboardList = leaderboardList;

  factory _$_LeaderboardState.fromJson(Map<String, dynamic> json) => _$$_LeaderboardStateFromJson(json);

  final List<LeaderboardUser> _leaderboardList;
  @override
  @JsonKey()
  List<LeaderboardUser> get leaderboardList {
    if (_leaderboardList is EqualUnmodifiableListView) return _leaderboardList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaderboardList);
  }

  @override
  String toString() {
    return 'LeaderboardState(leaderboardList: $leaderboardList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaderboardState &&
            const DeepCollectionEquality().equals(other._leaderboardList, _leaderboardList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_leaderboardList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeaderboardStateCopyWith<_$_LeaderboardState> get copyWith =>
      __$$_LeaderboardStateCopyWithImpl<_$_LeaderboardState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeaderboardStateToJson(
      this,
    );
  }
}

abstract class _LeaderboardState implements LeaderboardState {
  const factory _LeaderboardState({final List<LeaderboardUser> leaderboardList}) = _$_LeaderboardState;

  factory _LeaderboardState.fromJson(Map<String, dynamic> json) = _$_LeaderboardState.fromJson;

  @override
  List<LeaderboardUser> get leaderboardList;
  @override
  @JsonKey(ignore: true)
  _$$_LeaderboardStateCopyWith<_$_LeaderboardState> get copyWith => throw _privateConstructorUsedError;
}
