import 'dart:typed_data';
import 'package:banana/gemini/judge_face_state.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// 画面 顔写真から年齢を判定する
class JudgeFacePage extends HookWidget {
  const JudgeFacePage({super.key});

  @override
  Widget build(BuildContext context) {
    final image = useState<Uint8List?>(null);
    return Scaffold(
      body: Column(
        children: [
          _PickButton(
            onPicked: (img) {
              image.value = img;
            },
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            height: 120,
            alignment: Alignment.center,
            child: image.value == null
                ? const SizedBox.shrink()
                : Image.memory(image.value!),
          ),
          const SizedBox(height: 10),
          _JudgeButton(image: image.value),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              color: Colors.lightBlue[50],
              alignment: Alignment.center,
              child: const _FaceAge(),
            ),
          ),
        ],
      ),
    );
  }
}

/// 写真選択ボタン
class _PickButton extends ConsumerWidget {
  const _PickButton({
    required this.onPicked,
  });

  final void Function(Uint8List image) onPicked;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () async {
        final result = await FilePicker.platform.pickFiles();
        if (result == null) return;
        if (result.files.single.extension != 'png') {
          debugPrint('画像形式がpngのものを選択してください');
          return;
        }
        final bytes = result.files.single.bytes;
        if (bytes == null) return;
        onPicked(bytes);
      },
      child: const Text('写真を選択'),
    );
  }
}

/// 判定ボタン
class _JudgeButton extends ConsumerWidget {
  const _JudgeButton({
    required this.image,
  });

  final Uint8List? image;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final faceAge = ref.watch(faceAgeNotifierProvider);
    if (faceAge.isLoading) {
      return const CircularProgressIndicator();
    } else {
      return ElevatedButton(
        onPressed: () async {
          if (image == null) return;
          final notifier = ref.read(faceAgeNotifierProvider.notifier);
          await notifier.judge(image!);
        },
        child: const Text('判定する'),
      );
    }
  }
}

/// 判定された顔年齢
class _FaceAge extends ConsumerWidget {
  const _FaceAge();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final faceAge = ref.watch(faceAgeNotifierProvider);

    if (faceAge.value == null) {
      return const Icon(
        Icons.person,
        color: Colors.grey,
        size: 50,
      );
    } else {
      return Text(faceAge.value ?? '');
    }
  }
}
