import 'package:flutter/services.dart';

Future<String> getJson() async =>
    await rootBundle.loadString('assets/question.json');
