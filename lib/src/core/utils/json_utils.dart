import 'dart:convert';

import 'package:flutter/services.dart';

import '../../feature/questionnaire/model/quiz.dart';

Future<String> getJson() async =>
    await rootBundle.loadString('assets/question.json');

class JsonParserService {
  static parse() async {
    final data = jsonDecode(await getJson());
    final result = (data['quiz'] as List).map((e) => Quiz.fromJson(e)).toList();
    return result;
  }
}
