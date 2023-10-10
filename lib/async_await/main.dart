import 'package:flutter/material.dart';

void main() {
  xxx();
}

xxx() async {
  debugPrint('私は x です');
  debugPrint('y を await します');
  await yyy();
  debugPrint('y を await しました');
}

Future yyy() async {
  debugPrint('私は y です');
  debugPrint('z を await します');
  await zzz();
  debugPrint('z を await しました');
}

Future zzz() {
  debugPrint('私は z です');
  debugPrint('通信中...しばらくお待ちください');
  return Future.delayed(const Duration(seconds: 3));
}
