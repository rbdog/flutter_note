import 'package:banana/gemini/judge_face_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  const app = ProviderScope(
    child: MaterialApp(
      home: JudgeFacePage(),
    ),
  );

  runApp(app);
}
