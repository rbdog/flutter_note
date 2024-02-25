import 'dart:typed_data';
import 'package:google_generative_ai/google_generative_ai.dart';

// APIキーの隠し方は envied の動画を参考にしてください
const apiKey = 'XXXXXXXX_AAAA1111BBBB2222CCCC3333DDDD44';

class Gemini {
  Future<String?> getText(String prompt) async {
    final model = GenerativeModel(
      model: 'gemini-pro',
      apiKey: apiKey,
    );

    final content = [
      Content.text(prompt),
    ];

    final response = await model.generateContent(content);
    return response.text;
  }

  Future<String?> getTextWithImage(String prompt, Uint8List image) async {
    final model = GenerativeModel(
      model: 'gemini-pro-vision',
      apiKey: apiKey,
    );

    final textPart = TextPart(prompt);
    final dataPart = DataPart('image/png', image);
    final content = [
      Content.multi([textPart, dataPart])
    ];

    final response = await model.generateContent(content);
    return response.text;
  }
}
