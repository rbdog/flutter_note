import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/clash/clash_tab_item.dart';
import 'package:banana/clash/clash_tab_route.dart';
import 'package:banana/clash/state.dart';
import 'package:banana/clash/theme.dart';

/// タブバー
class ClashTabBar extends StatelessWidget {
  const ClashTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 背面レイヤー
        _BackgroundLayer(key: key),
        // 前面レイヤー
        _ForegroundLayer(key: key),
      ],
    );
  }
}

/// 背面レイヤー
class _BackgroundLayer extends ConsumerWidget {
  const _BackgroundLayer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final align = ref.watch(highlightAlignProvider(routes.length));
    final screenSize = MediaQuery.of(context).size;
    final design = DesignSize(screenSize.width);

    return ColoredBox(
      color: ClashColor.tabBar,
      child: Stack(
        children: [
          // ハイライト部分
          Align(
            alignment: Alignment(align, 0),
            child: SizedBox(
              height: double.infinity,
              width: design.highlightW,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      ClashColor.highlightTop,
                      ClashColor.highlightBottom,
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

/// 前面レイヤー
class _ForegroundLayer extends ConsumerWidget {
  const _ForegroundLayer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);
    final screenSize = MediaQuery.of(context).size;
    final design = DesignSize(screenSize.width);

    return Row(
      // タブの数だけ並べる
      children: List.generate(
        routes.length,
        (index) {
          final isSelected = selectedIndex == index;
          final flex = isSelected ? TabBarConfig.selectedFlex : 1;

          return Expanded(
            flex: flex,

            // タップ可能
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                // タップされたとき
                final controller = ref.read(pageControllerProvider);
                const duration = Duration(
                  milliseconds: TabBarConfig.animationMillisec,
                );
                controller.animateToPage(
                  index,
                  duration: duration,
                  curve: Curves.easeOut,
                );
              },
              child: Row(
                children: [
                  // 区切り線
                  Container(
                    width: design.dividerW,
                    color: ClashColor.dividerDark,
                  ),
                  // タブ本体
                  Expanded(
                    child: ClashTabItem(index: index),
                  ),
                  // 区切り線
                  Container(
                    width: design.dividerW,
                    color: ClashColor.dividerLight,
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
