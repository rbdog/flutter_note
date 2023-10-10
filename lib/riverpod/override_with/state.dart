import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'state.g.dart';

// 本物

@riverpod
String apple(AppleRef ref) {
  return 'りんご';
}
