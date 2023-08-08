import 'dart:convert';

import 'package:http/http.dart';

import '../models/index.dart';

class WordsApi {
  WordsApi(
    this._client,
  );

  final Client _client;

  Future<Word> getRandomWord() async {
    final Uri uri = Uri.parse('https://random-words-api.vercel.app/word/noun');

    final Response response = await _client.get(uri);

    if (response.statusCode == 200) {
      return Word.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    }

    throw StateError(response.body);
  }
}
