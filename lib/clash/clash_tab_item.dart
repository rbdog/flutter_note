import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/clash/clash_tab_route.dart';
import 'package:banana/clash/state.dart';
import 'package:banana/clash/bordered_text.dart';
import 'package:banana/clash/vibration_box.dart';
import 'package:banana/clash/theme.dart';
import 'package:banana/clash/toon_shadow.dart';

/// タブ 1つ分
class ClashTabItem extends ConsumerWidget {
  const ClashTabItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);
    final isSelected = selectedIndex == index;
    return isSelected
        ? _SelectedLayout(
            key: key,
            index: index,
          )
        : _UnselectedLayout(
            key: key,
            index: index,
          );
  }
}

/// 選択中のレイアウト
class _SelectedLayout extends ConsumerWidget {
  const _SelectedLayout({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screesSize = MediaQuery.of(context).size;
    final design = DesignSize(screesSize.width);
    final isFirst = index == 0;
    final isLast = index == (routes.length - 1);
    final icon = routes[index].icon;
    final label = routes[index].label;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: design.padding),
        // 左側の矢印
        SizedBox(
          width: design.arrowW,
          // 一番左のタブだったら表示しない
          child: isFirst
              ? null
              : VibrationBox(
                  repeatTimes: 1,
                  antiphase: true,
                  child: Image.asset(Images.arrowLeft),
                ),
        ),
        // アイコンとラベルを縦に並べる
        Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              // 上にアイコンをはみ出すために Positioned を使う
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: design.tabBarH + design.overflowH,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // アイコン
                    SizedBox(
                      height: design.iconH,
                      child: Image.asset(icon),
                    ),
                    // ラベル
                    SizedBox(
                      height: design.fontSize + design.shadowH,
                      // 漫画のような影付き
                      child: ToonShadow(
                        offset: design.fontSize / 2,
                        // フチ取り付きのテキスト
                        child: BorderedText(
                          label,
                          borderWidth: design.fontBorderW,
                          spacing: design.fontSpacing,
                          textSise: design.fontSize,
                          fontFamily: ClashFont.russoOne,
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
        // 右側の矢印
        SizedBox(
          width: design.arrowW,
          // 一番右のタブだったら表示しない
          child: isLast
              ? null
              : VibrationBox(
                  repeatTimes: 1,
                  antiphase: false,
                  child: Image.asset(Images.arrowRight),
                ),
        ),
        SizedBox(width: design.padding),
      ],
    );
  }
}

/// 選択されていないときのレイアウト
class _UnselectedLayout extends StatelessWidget {
  const _UnselectedLayout({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final screesSize = MediaQuery.of(context).size;
    final design = DesignSize(screesSize.width);
    final icon = routes[index].icon;

    return SizedBox(
      height: design.iconH,
      child: Image.asset(icon),
    );
  }
}
