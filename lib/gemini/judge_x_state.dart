import 'package:banana/gemini/gemini.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'judge_x_state.g.dart';

@riverpod
class PersonCharNotifier extends _$PersonCharNotifier {
  @override
  Future<String?> build() async {
    return null;
  }

  Future<void> judge(String post) async {
    state = const AsyncValue.loading();
    final prompt = '''
      以下の文章を読んで、口調や単語レベルから年齢や性別といった人物像を推測してください。
      差別は含まないように注視してください。
      ---
      $post
      ---
    ''';

    final gemini = Gemini();
    final personChar = await gemini.getText(prompt);
    state = AsyncValue.data(personChar);
  }
}
