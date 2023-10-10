import 'package:flutter/material.dart';
import 'package:banana/clash/fake_page.dart';
import 'package:banana/clash/theme.dart';

/// 画面とアイコンとラベル
class ClashTabRoute {
  const ClashTabRoute({
    required this.body,
    required this.icon,
    required this.label,
  });

  // 画面
  final Widget Function() body;
  // アイコン
  final String icon;
  // ラベル
  final String label;
}

// 実際のデータを決めていく
final routes = [
  ClashTabRoute(
    body: () => const FakePage(text: 'A'),
    icon: Images.tabShop,
    label: L10n.shop,
  ),
  ClashTabRoute(
    body: () => const FakePage(text: 'B'),
    icon: Images.tabCollection,
    label: L10n.collection,
  ),
  ClashTabRoute(
    body: () => const FakePage(text: 'C'),
    icon: Images.tabBattle,
    label: L10n.battle,
  ),
  ClashTabRoute(
    body: () => const FakePage(text: 'D'),
    icon: Images.tabClan,
    label: L10n.clan,
  ),
  ClashTabRoute(
    body: () => const FakePage(text: 'E'),
    icon: Images.tabEvents,
    label: L10n.events,
  ),
];
