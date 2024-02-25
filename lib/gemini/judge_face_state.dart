import 'dart:typed_data';
import 'package:banana/gemini/gemini.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'judge_face_state.g.dart';

@riverpod
class FaceAgeNotifier extends _$FaceAgeNotifier {
  @override
  Future<String?> build() async {
    return null;
  }

  Future<void> judge(Uint8List image) async {
    state = const AsyncValue.loading();
    const prompt = '''
      この画像の人物の性別や年齢を推測してください。
      差別は含まないように注視してください。
    ''';
    final gemini = Gemini();
    final faceAge = await gemini.getTextWithImage(prompt, image);
    state = AsyncValue.data(faceAge);
  }
}
