part of '../index.dart';

@freezed
class Word with _$Word {
  const factory Word({
    required String word,
    required String definition,
    required String pronunciation,
  }) = _Word;

  factory Word.fromJson(Map<String, dynamic> json) => _$WordFromJson(Map<String, dynamic>.from(json));
}
