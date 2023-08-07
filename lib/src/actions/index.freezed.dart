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

/// @nodoc
mixin _$CreateUser {
  String get pendingId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String password, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password, String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUserStart value) start,
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUserStart value)? start,
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUserStart value)? start,
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateUserCopyWith<CreateUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserCopyWith<$Res> {
  factory $CreateUserCopyWith(CreateUser value, $Res Function(CreateUser) then) =
      _$CreateUserCopyWithImpl<$Res, CreateUser>;
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class _$CreateUserCopyWithImpl<$Res, $Val extends CreateUser> implements $CreateUserCopyWith<$Res> {
  _$CreateUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_value.copyWith(
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserStartCopyWith<$Res> implements $CreateUserCopyWith<$Res> {
  factory _$$CreateUserStartCopyWith(_$CreateUserStart value, $Res Function(_$CreateUserStart) then) =
      __$$CreateUserStartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String password, String pendingId});
}

/// @nodoc
class __$$CreateUserStartCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res, _$CreateUserStart>
    implements _$$CreateUserStartCopyWith<$Res> {
  __$$CreateUserStartCopyWithImpl(_$CreateUserStart _value, $Res Function(_$CreateUserStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? pendingId = null,
  }) {
    return _then(_$CreateUserStart(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateUserStart implements CreateUserStart {
  const _$CreateUserStart(
      {required this.name, required this.email, required this.password, this.pendingId = _kCreateUserPendingId});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'CreateUser.start(name: $name, email: $email, password: $password, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserStart &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, password, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserStartCopyWith<_$CreateUserStart> get copyWith =>
      __$$CreateUserStartCopyWithImpl<_$CreateUserStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String password, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(name, email, password, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password, String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(name, email, password, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(name, email, password, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUserStart value) start,
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUserStart value)? start,
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUserStart value)? start,
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class CreateUserStart implements CreateUser, StartAction {
  const factory CreateUserStart(
      {required final String name,
      required final String email,
      required final String password,
      final String pendingId}) = _$CreateUserStart;

  String get name;
  String get email;
  String get password;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserStartCopyWith<_$CreateUserStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserSuccessfulCopyWith<$Res> implements $CreateUserCopyWith<$Res> {
  factory _$$CreateUserSuccessfulCopyWith(_$CreateUserSuccessful value, $Res Function(_$CreateUserSuccessful) then) =
      __$$CreateUserSuccessfulCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class __$$CreateUserSuccessfulCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res, _$CreateUserSuccessful>
    implements _$$CreateUserSuccessfulCopyWith<$Res> {
  __$$CreateUserSuccessfulCopyWithImpl(_$CreateUserSuccessful _value, $Res Function(_$CreateUserSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_$CreateUserSuccessful(
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateUserSuccessful implements CreateUserSuccessful {
  const _$CreateUserSuccessful({this.pendingId = _kCreateUserPendingId});

  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'CreateUser.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserSuccessful &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserSuccessfulCopyWith<_$CreateUserSuccessful> get copyWith =>
      __$$CreateUserSuccessfulCopyWithImpl<_$CreateUserSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String password, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password, String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUserStart value) start,
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUserStart value)? start,
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUserStart value)? start,
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateUserSuccessful implements CreateUser, StopAction {
  const factory CreateUserSuccessful({final String pendingId}) = _$CreateUserSuccessful;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserSuccessfulCopyWith<_$CreateUserSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserErrorCopyWith<$Res> implements $CreateUserCopyWith<$Res> {
  factory _$$CreateUserErrorCopyWith(_$CreateUserError value, $Res Function(_$CreateUserError) then) =
      __$$CreateUserErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class __$$CreateUserErrorCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res, _$CreateUserError>
    implements _$$CreateUserErrorCopyWith<$Res> {
  __$$CreateUserErrorCopyWithImpl(_$CreateUserError _value, $Res Function(_$CreateUserError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
    Object? pendingId = null,
  }) {
    return _then(_$CreateUserError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateUserError implements CreateUserError {
  const _$CreateUserError(this.error, this.stackTrace, {this.pendingId = _kCreateUserPendingId});

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'CreateUser.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserErrorCopyWith<_$CreateUserError> get copyWith =>
      __$$CreateUserErrorCopyWithImpl<_$CreateUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String password, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password, String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateUserStart value) start,
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateUserStart value)? start,
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateUserStart value)? start,
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateUserError implements CreateUser, StopAction {
  const factory CreateUserError(final Object error, final StackTrace stackTrace, {final String pendingId}) =
      _$CreateUserError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserErrorCopyWith<_$CreateUserError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginUser {
  String get pendingId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUserStart value) start,
    required TResult Function(LoginUserSuccessful value) successful,
    required TResult Function(LoginUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginUserStart value)? start,
    TResult? Function(LoginUserSuccessful value)? successful,
    TResult? Function(LoginUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUserStart value)? start,
    TResult Function(LoginUserSuccessful value)? successful,
    TResult Function(LoginUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginUserCopyWith<LoginUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserCopyWith<$Res> {
  factory $LoginUserCopyWith(LoginUser value, $Res Function(LoginUser) then) = _$LoginUserCopyWithImpl<$Res, LoginUser>;
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class _$LoginUserCopyWithImpl<$Res, $Val extends LoginUser> implements $LoginUserCopyWith<$Res> {
  _$LoginUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_value.copyWith(
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginUserStartCopyWith<$Res> implements $LoginUserCopyWith<$Res> {
  factory _$$LoginUserStartCopyWith(_$LoginUserStart value, $Res Function(_$LoginUserStart) then) =
      __$$LoginUserStartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String pendingId});
}

/// @nodoc
class __$$LoginUserStartCopyWithImpl<$Res> extends _$LoginUserCopyWithImpl<$Res, _$LoginUserStart>
    implements _$$LoginUserStartCopyWith<$Res> {
  __$$LoginUserStartCopyWithImpl(_$LoginUserStart _value, $Res Function(_$LoginUserStart) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? pendingId = null,
  }) {
    return _then(_$LoginUserStart(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUserStart implements LoginUserStart {
  const _$LoginUserStart({required this.email, required this.password, this.pendingId = _kLoginUserPendingId});

  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'LoginUser.start(email: $email, password: $password, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserStart &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserStartCopyWith<_$LoginUserStart> get copyWith =>
      __$$LoginUserStartCopyWithImpl<_$LoginUserStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(email, password, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(email, password, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(email, password, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUserStart value) start,
    required TResult Function(LoginUserSuccessful value) successful,
    required TResult Function(LoginUserError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginUserStart value)? start,
    TResult? Function(LoginUserSuccessful value)? successful,
    TResult? Function(LoginUserError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUserStart value)? start,
    TResult Function(LoginUserSuccessful value)? successful,
    TResult Function(LoginUserError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class LoginUserStart implements LoginUser, StartAction {
  const factory LoginUserStart({required final String email, required final String password, final String pendingId}) =
      _$LoginUserStart;

  String get email;
  String get password;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$LoginUserStartCopyWith<_$LoginUserStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginUserSuccessfulCopyWith<$Res> implements $LoginUserCopyWith<$Res> {
  factory _$$LoginUserSuccessfulCopyWith(_$LoginUserSuccessful value, $Res Function(_$LoginUserSuccessful) then) =
      __$$LoginUserSuccessfulCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class __$$LoginUserSuccessfulCopyWithImpl<$Res> extends _$LoginUserCopyWithImpl<$Res, _$LoginUserSuccessful>
    implements _$$LoginUserSuccessfulCopyWith<$Res> {
  __$$LoginUserSuccessfulCopyWithImpl(_$LoginUserSuccessful _value, $Res Function(_$LoginUserSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_$LoginUserSuccessful(
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUserSuccessful implements LoginUserSuccessful {
  const _$LoginUserSuccessful({this.pendingId = _kLoginUserPendingId});

  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'LoginUser.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserSuccessful &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserSuccessfulCopyWith<_$LoginUserSuccessful> get copyWith =>
      __$$LoginUserSuccessfulCopyWithImpl<_$LoginUserSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUserStart value) start,
    required TResult Function(LoginUserSuccessful value) successful,
    required TResult Function(LoginUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginUserStart value)? start,
    TResult? Function(LoginUserSuccessful value)? successful,
    TResult? Function(LoginUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUserStart value)? start,
    TResult Function(LoginUserSuccessful value)? successful,
    TResult Function(LoginUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginUserSuccessful implements LoginUser, StopAction {
  const factory LoginUserSuccessful({final String pendingId}) = _$LoginUserSuccessful;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$LoginUserSuccessfulCopyWith<_$LoginUserSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginUserErrorCopyWith<$Res> implements $LoginUserCopyWith<$Res> {
  factory _$$LoginUserErrorCopyWith(_$LoginUserError value, $Res Function(_$LoginUserError) then) =
      __$$LoginUserErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class __$$LoginUserErrorCopyWithImpl<$Res> extends _$LoginUserCopyWithImpl<$Res, _$LoginUserError>
    implements _$$LoginUserErrorCopyWith<$Res> {
  __$$LoginUserErrorCopyWithImpl(_$LoginUserError _value, $Res Function(_$LoginUserError) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
    Object? pendingId = null,
  }) {
    return _then(_$LoginUserError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUserError implements LoginUserError {
  const _$LoginUserError(this.error, this.stackTrace, {this.pendingId = _kLoginUserPendingId});

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'LoginUser.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserErrorCopyWith<_$LoginUserError> get copyWith =>
      __$$LoginUserErrorCopyWithImpl<_$LoginUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUserStart value) start,
    required TResult Function(LoginUserSuccessful value) successful,
    required TResult Function(LoginUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginUserStart value)? start,
    TResult? Function(LoginUserSuccessful value)? successful,
    TResult? Function(LoginUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUserStart value)? start,
    TResult Function(LoginUserSuccessful value)? successful,
    TResult Function(LoginUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginUserError implements LoginUser, StopAction {
  const factory LoginUserError(final Object error, final StackTrace stackTrace, {final String pendingId}) =
      _$LoginUserError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$LoginUserErrorCopyWith<_$LoginUserError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LogoutUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogoutUserStart value) start,
    required TResult Function(LogoutUserSuccessful value) successful,
    required TResult Function(LogoutUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutUserStart value)? start,
    TResult? Function(LogoutUserSuccessful value)? successful,
    TResult? Function(LogoutUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutUserStart value)? start,
    TResult Function(LogoutUserSuccessful value)? successful,
    TResult Function(LogoutUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutUserCopyWith<$Res> {
  factory $LogoutUserCopyWith(LogoutUser value, $Res Function(LogoutUser) then) =
      _$LogoutUserCopyWithImpl<$Res, LogoutUser>;
}

/// @nodoc
class _$LogoutUserCopyWithImpl<$Res, $Val extends LogoutUser> implements $LogoutUserCopyWith<$Res> {
  _$LogoutUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogoutUserStartCopyWith<$Res> {
  factory _$$LogoutUserStartCopyWith(_$LogoutUserStart value, $Res Function(_$LogoutUserStart) then) =
      __$$LogoutUserStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutUserStartCopyWithImpl<$Res> extends _$LogoutUserCopyWithImpl<$Res, _$LogoutUserStart>
    implements _$$LogoutUserStartCopyWith<$Res> {
  __$$LogoutUserStartCopyWithImpl(_$LogoutUserStart _value, $Res Function(_$LogoutUserStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutUserStart implements LogoutUserStart {
  const _$LogoutUserStart();

  @override
  String toString() {
    return 'LogoutUser.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LogoutUserStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogoutUserStart value) start,
    required TResult Function(LogoutUserSuccessful value) successful,
    required TResult Function(LogoutUserError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutUserStart value)? start,
    TResult? Function(LogoutUserSuccessful value)? successful,
    TResult? Function(LogoutUserError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutUserStart value)? start,
    TResult Function(LogoutUserSuccessful value)? successful,
    TResult Function(LogoutUserError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class LogoutUserStart implements LogoutUser {
  const factory LogoutUserStart() = _$LogoutUserStart;
}

/// @nodoc
abstract class _$$LogoutUserSuccessfulCopyWith<$Res> {
  factory _$$LogoutUserSuccessfulCopyWith(_$LogoutUserSuccessful value, $Res Function(_$LogoutUserSuccessful) then) =
      __$$LogoutUserSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutUserSuccessfulCopyWithImpl<$Res> extends _$LogoutUserCopyWithImpl<$Res, _$LogoutUserSuccessful>
    implements _$$LogoutUserSuccessfulCopyWith<$Res> {
  __$$LogoutUserSuccessfulCopyWithImpl(_$LogoutUserSuccessful _value, $Res Function(_$LogoutUserSuccessful) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutUserSuccessful implements LogoutUserSuccessful {
  const _$LogoutUserSuccessful();

  @override
  String toString() {
    return 'LogoutUser.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LogoutUserSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogoutUserStart value) start,
    required TResult Function(LogoutUserSuccessful value) successful,
    required TResult Function(LogoutUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutUserStart value)? start,
    TResult? Function(LogoutUserSuccessful value)? successful,
    TResult? Function(LogoutUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutUserStart value)? start,
    TResult Function(LogoutUserSuccessful value)? successful,
    TResult Function(LogoutUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LogoutUserSuccessful implements LogoutUser {
  const factory LogoutUserSuccessful() = _$LogoutUserSuccessful;
}

/// @nodoc
abstract class _$$LogoutUserErrorCopyWith<$Res> {
  factory _$$LogoutUserErrorCopyWith(_$LogoutUserError value, $Res Function(_$LogoutUserError) then) =
      __$$LogoutUserErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$LogoutUserErrorCopyWithImpl<$Res> extends _$LogoutUserCopyWithImpl<$Res, _$LogoutUserError>
    implements _$$LogoutUserErrorCopyWith<$Res> {
  __$$LogoutUserErrorCopyWithImpl(_$LogoutUserError _value, $Res Function(_$LogoutUserError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$LogoutUserError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$LogoutUserError implements LogoutUserError {
  const _$LogoutUserError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'LogoutUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutUserError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutUserErrorCopyWith<_$LogoutUserError> get copyWith =>
      __$$LogoutUserErrorCopyWithImpl<_$LogoutUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogoutUserStart value) start,
    required TResult Function(LogoutUserSuccessful value) successful,
    required TResult Function(LogoutUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutUserStart value)? start,
    TResult? Function(LogoutUserSuccessful value)? successful,
    TResult? Function(LogoutUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutUserStart value)? start,
    TResult Function(LogoutUserSuccessful value)? successful,
    TResult Function(LogoutUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LogoutUserError implements LogoutUser {
  const factory LogoutUserError(final Object error, final StackTrace stackTrace) = _$LogoutUserError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$LogoutUserErrorCopyWith<_$LogoutUserError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InitializeApp {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(GameUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(GameUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(GameUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeAppStart value) start,
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeAppStart value)? start,
    TResult? Function(InitializeAppSuccessful value)? successful,
    TResult? Function(InitializeAppError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeAppStart value)? start,
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeAppCopyWith<$Res> {
  factory $InitializeAppCopyWith(InitializeApp value, $Res Function(InitializeApp) then) =
      _$InitializeAppCopyWithImpl<$Res, InitializeApp>;
}

/// @nodoc
class _$InitializeAppCopyWithImpl<$Res, $Val extends InitializeApp> implements $InitializeAppCopyWith<$Res> {
  _$InitializeAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeAppStartCopyWith<$Res> {
  factory _$$InitializeAppStartCopyWith(_$InitializeAppStart value, $Res Function(_$InitializeAppStart) then) =
      __$$InitializeAppStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeAppStartCopyWithImpl<$Res> extends _$InitializeAppCopyWithImpl<$Res, _$InitializeAppStart>
    implements _$$InitializeAppStartCopyWith<$Res> {
  __$$InitializeAppStartCopyWithImpl(_$InitializeAppStart _value, $Res Function(_$InitializeAppStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeAppStart implements InitializeAppStart {
  const _$InitializeAppStart();

  @override
  String toString() {
    return 'InitializeApp.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$InitializeAppStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(GameUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(GameUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(GameUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeAppStart value) start,
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeAppStart value)? start,
    TResult? Function(InitializeAppSuccessful value)? successful,
    TResult? Function(InitializeAppError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeAppStart value)? start,
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class InitializeAppStart implements InitializeApp {
  const factory InitializeAppStart() = _$InitializeAppStart;
}

/// @nodoc
abstract class _$$InitializeAppSuccessfulCopyWith<$Res> {
  factory _$$InitializeAppSuccessfulCopyWith(
          _$InitializeAppSuccessful value, $Res Function(_$InitializeAppSuccessful) then) =
      __$$InitializeAppSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({GameUser? user});

  $GameUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$InitializeAppSuccessfulCopyWithImpl<$Res> extends _$InitializeAppCopyWithImpl<$Res, _$InitializeAppSuccessful>
    implements _$$InitializeAppSuccessfulCopyWith<$Res> {
  __$$InitializeAppSuccessfulCopyWithImpl(
      _$InitializeAppSuccessful _value, $Res Function(_$InitializeAppSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$InitializeAppSuccessful(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GameUser?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GameUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $GameUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$InitializeAppSuccessful implements InitializeAppSuccessful {
  const _$InitializeAppSuccessful(this.user);

  @override
  final GameUser? user;

  @override
  String toString() {
    return 'InitializeApp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeAppSuccessful &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeAppSuccessfulCopyWith<_$InitializeAppSuccessful> get copyWith =>
      __$$InitializeAppSuccessfulCopyWithImpl<_$InitializeAppSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(GameUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(GameUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(GameUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeAppStart value) start,
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeAppStart value)? start,
    TResult? Function(InitializeAppSuccessful value)? successful,
    TResult? Function(InitializeAppError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeAppStart value)? start,
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeAppSuccessful implements InitializeApp {
  const factory InitializeAppSuccessful(final GameUser? user) = _$InitializeAppSuccessful;

  GameUser? get user;
  @JsonKey(ignore: true)
  _$$InitializeAppSuccessfulCopyWith<_$InitializeAppSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeAppErrorCopyWith<$Res> {
  factory _$$InitializeAppErrorCopyWith(_$InitializeAppError value, $Res Function(_$InitializeAppError) then) =
      __$$InitializeAppErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$InitializeAppErrorCopyWithImpl<$Res> extends _$InitializeAppCopyWithImpl<$Res, _$InitializeAppError>
    implements _$$InitializeAppErrorCopyWith<$Res> {
  __$$InitializeAppErrorCopyWithImpl(_$InitializeAppError _value, $Res Function(_$InitializeAppError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$InitializeAppError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$InitializeAppError implements InitializeAppError {
  const _$InitializeAppError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'InitializeApp.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeAppError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeAppErrorCopyWith<_$InitializeAppError> get copyWith =>
      __$$InitializeAppErrorCopyWithImpl<_$InitializeAppError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(GameUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(GameUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(GameUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeAppStart value) start,
    required TResult Function(InitializeAppSuccessful value) successful,
    required TResult Function(InitializeAppError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeAppStart value)? start,
    TResult? Function(InitializeAppSuccessful value)? successful,
    TResult? Function(InitializeAppError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeAppStart value)? start,
    TResult Function(InitializeAppSuccessful value)? successful,
    TResult Function(InitializeAppError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeAppError implements InitializeApp {
  const factory InitializeAppError(final Object error, final StackTrace stackTrace) = _$InitializeAppError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$InitializeAppErrorCopyWith<_$InitializeAppError> get copyWith => throw _privateConstructorUsedError;
}
