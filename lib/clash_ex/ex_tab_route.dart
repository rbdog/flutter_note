import 'package:banana/clash_ex/fake_page.dart';
import 'package:flutter/material.dart';

class ExTabRoute {
  const ExTabRoute({
    required this.body,
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.label,
  });

  final Widget Function() body;
  final String selectedIcon;
  final String unselectedIcon;
  final String label;
}

final routes = [
  ExTabRoute(
    body: () => const FakePage(text: '1'),
    selectedIcon: 'images/flower-blossomed.png',
    unselectedIcon: 'images/flower-young.png',
    label: 'Flower',
  ),
  ExTabRoute(
    body: () => const FakePage(text: '2'),
    selectedIcon: 'images/butterfly-adult.png',
    unselectedIcon: 'images/butterfly-pupa.png',
    label: 'Butterfly',
  ),
  ExTabRoute(
    body: () => const FakePage(text: '3'),
    selectedIcon: 'images/clam-opened.png',
    unselectedIcon: 'images/clam-closed.png',
    label: 'Clam',
  ),
  ExTabRoute(
    body: () => const FakePage(text: '4'),
    selectedIcon: 'images/dino-resurrected.png',
    unselectedIcon: 'images/dino-fossil.png',
    label: 'Dino',
  ),
];
