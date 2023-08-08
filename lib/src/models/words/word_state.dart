part of '../index.dart';

@freezed
class WordState with _$WordState {
  const factory WordState({
    Word? word,
    List<int>? letterPositions,
  }) = _WordState;

  factory WordState.fromJson(Map<String, dynamic> json) => _$WordStateFromJson(Map<String, dynamic>.from(json));
}
