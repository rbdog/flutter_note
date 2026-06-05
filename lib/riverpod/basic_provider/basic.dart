import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'basic.g.dart';

// basicProvider

@riverpod
int basic(Ref ref) {
  return 123;
}
