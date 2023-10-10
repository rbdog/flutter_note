import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'family.g.dart';

@riverpod
int family(FamilyRef ref, String id) {
  if (id == '日本') {
    return 3;
  }

  if (id == 'アメリカ') {
    return 2;
  }

  return 0;
}
