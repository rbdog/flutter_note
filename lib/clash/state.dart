import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/clash/theme.dart';

/// 画面の横移動を管理するページコントローラー
final pageControllerProvider = Provider(
  (ref) {
    const iniIndex = TabBarConfig.initialIndex;
    final controller = PageController(initialPage: iniIndex);
    ref.onDispose(controller.dispose);
    return controller;
  },
);

/// 横移動の現在地
final _asyncPageProvider = StreamProvider(
  (ref) {
    final pageController = ref.watch(pageControllerProvider);
    final streamController = StreamController<double?>();
    void notify() {
      final position = pageController.page;
      streamController.add(position);
    }

    pageController.addListener(notify);
    ref.onDispose(() => pageController.removeListener(notify));
    return streamController.stream;
  },
);

/// ハイライトの位置
final highlightAlignProvider = Provider.family<double, int>(
  (ref, tabCount) {
    final asyncPage = ref.watch(_asyncPageProvider);
    final iniPage = TabBarConfig.initialIndex.toDouble();
    final page = asyncPage.value ?? iniPage;
    const minPage = 0;
    final maxPage = tabCount - 1;
    // 内分点の公式
    final m = page - minPage;
    final n = maxPage - page;
    final x = (m - n) / (m + n);
    return x;
  },
);

/// 選択中のタブ番号
final selectedIndexProvider = Provider<int>(
  (ref) {
    final asyncPage = ref.watch(_asyncPageProvider);
    const iniIndex = TabBarConfig.initialIndex;
    return asyncPage.value?.round() ?? iniIndex;
  },
);
