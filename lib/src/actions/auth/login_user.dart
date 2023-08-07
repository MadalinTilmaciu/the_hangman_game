part of '../index.dart';

const String _kLoginUserPendingId = 'LoginUser';

@freezed
class LoginUser with _$LoginUser {
  @Implements<StartAction>()
  const factory LoginUser.start({
    required String email,
    required String password,
    @Default(_kLoginUserPendingId) String pendingId,
  }) = LoginUserStart;

  @Implements<StopAction>()
  const factory LoginUser.successful({
    @Default(_kLoginUserPendingId) String pendingId,
  }) = LoginUserSuccessful;

  @Implements<StopAction>()
  const factory LoginUser.error(
    Object error,
    StackTrace stackTrace, {
    @Default(_kLoginUserPendingId) String pendingId,
  }) = LoginUserError;

  static String get pendingKey => _kLoginUserPendingId;
}
