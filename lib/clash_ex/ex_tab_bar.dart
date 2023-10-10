import 'package:banana/clash/state.dart';
import 'package:banana/clash_ex/ex_tab_item.dart';
import 'package:banana/clash_ex/ex_tab_route.dart';
import 'package:banana/clash_ex/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExTabBar extends StatelessWidget {
  const ExTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _BackgroundLayer(key: key),
        _ForegroundLayer(key: key),
      ],
    );
  }
}

class _BackgroundLayer extends ConsumerWidget {
  const _BackgroundLayer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final align = ref.watch(highlightAlignProvider(routes.length));
    final screenSize = MediaQuery.of(context).size;
    final highlightW = screenSize.width * (2 / 5);

    return ColoredBox(
      color: ExColor.tabBar!,
      child: Stack(
        children: [
          Align(
            alignment: Alignment(align, 0),
            child: SizedBox(
              height: double.infinity,
              width: highlightW,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      ExColor.highlightTop,
                      ExColor.highlightBottom,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ForegroundLayer extends ConsumerWidget {
  const _ForegroundLayer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);
    final screenSize = MediaQuery.of(context).size;
    final design = DesignSize.withScreenW(screenSize.width);

    return Row(
      children: List.generate(
        routes.length,
        (index) {
          final isSelected = selectedIndex == index;
          final flex = isSelected ? config.selectedFlex : 1;

          return Expanded(
            flex: flex,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                final controller = ref.read(pageControllerProvider);
                final duration = Duration(
                  milliseconds: config.animMillisec,
                );
                controller.animateToPage(
                  index,
                  duration: duration,
                  curve: Curves.easeOut,
                );
              },
              child: Row(
                children: [
                  Container(
                    width: design.dividerW,
                    color: ExColor.dividerDark,
                  ),
                  Expanded(
                    child: ExTabItem(index: index),
                  ),
                  Container(
                    width: design.dividerW,
                    color: ExColor.dividerLight,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
