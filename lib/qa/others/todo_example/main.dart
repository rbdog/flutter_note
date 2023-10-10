import 'package:flutter/material.dart';
import 'package:banana/qa/others/todo_example/todo_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  const view = TodoView();
  const app = MaterialApp(home: view);
  const scope = ProviderScope(child: app);
  runApp(scope);
}
