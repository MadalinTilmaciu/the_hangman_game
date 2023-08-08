part of '../index.dart';

const String _kGetLetterPositionsPendingId = 'GetLetterPositions';

@freezed
class GetLetterPositions with _$GetLetterPositions {
  @Implements<StartAction>()
  const factory GetLetterPositions.start(
    String word,
    String letter, {
    @Default(_kGetLetterPositionsPendingId) String pendingId,
  }) = GetLetterPositionsStart;

  @Implements<StopAction>()
  const factory GetLetterPositions.successful(
    List<int> positions, {
    @Default(_kGetLetterPositionsPendingId) String pendingId,
  }) = GetLetterPositionsSuccessful;

  @Implements<StopAction>()
  const factory GetLetterPositions.error(
    Object error,
    StackTrace stackTrace, {
    @Default(_kGetLetterPositionsPendingId) String pendingId,
  }) = GetLetterPositionsError;

  static String get pendingKey => _kGetLetterPositionsPendingId;
}
