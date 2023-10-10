import 'package:flutter/material.dart';

void main() {
  xxx();
}

xxx() async {
  debugPrint('私は x です');
  debugPrint('y を await します');
  final data = await yyy();
  debugPrint('y から受け取ったデータは $data');
}

Future<int> yyy() async {
  debugPrint('私は y です');
  debugPrint('z を await します');
  final data = await zzz();
  debugPrint('z から受け取ったデータは $data');
  return data;
}

Future<int> zzz() {
  debugPrint('私は z です');
  debugPrint('通信中...しばらくお待ちください');
  return Future.delayed(const Duration(seconds: 3), () => 777);
}
