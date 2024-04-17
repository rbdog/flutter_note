import 'package:banana/qa/others/todo_example2/check_box_new.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/* このファイルは真似しなくてOK */
void main() {
  const page = CheckBox();
  const app = MaterialApp(home: page);
  const scope = ProviderScope(child: app);
  runApp(scope);
}
