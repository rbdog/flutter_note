import 'package:banana/clash/bordered_text.dart';
import 'package:banana/clash/state.dart';
import 'package:banana/clash/toon_shadow.dart';
import 'package:banana/clash/vibration_box.dart';
import 'package:banana/clash_ex/ex_tab_route.dart';
import 'package:banana/clash_ex/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExTabItem extends ConsumerWidget {
  const ExTabItem({super.key, required this.index});
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

class _SelectedLayout extends ConsumerWidget {
  const _SelectedLayout({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screesSize = MediaQuery.of(context).size;
    final design = DesignSize.withScreenW(screesSize.width);
    final iconPath = routes[index].selectedIcon;
    final label = routes[index].label;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: design.padding),
        SizedBox(
          width: design.arrowW,
          child: VibrationBox(
            repeatTimes: 3,
            antiphase: true,
            child: Image.asset('images/star-left.png'),
          ),
        ),
        Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: design.tabBarH + design.overflowH,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: design.iconH,
                      child: Image.asset(iconPath),
                    ),
                    SizedBox(
                      height: design.fontSize + design.shadowH,
                      child: ToonShadow(
                        offset: design.fontSize / 2,
                        child: BorderedText(
                          label,
                          borderWidth: design.fontBorderW,
                          borderColor: Colors.orange,
                          spacing: design.fontSpacing,
                          textSise: design.fontSize,
                          fontFamily: ExFont.russoOne,
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
        SizedBox(
          width: design.arrowW,
          child: VibrationBox(
            repeatTimes: 3,
            antiphase: false,
            child: Image.asset('images/star-right.png'),
          ),
        ),
        SizedBox(width: design.padding),
      ],
    );
  }
}

class _UnselectedLayout extends StatelessWidget {
  const _UnselectedLayout({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final screesSize = MediaQuery.of(context).size;
    final design = DesignSize.withScreenW(screesSize.width);
    final iconPath = routes[index].unselectedIcon;

    return SizedBox(
      height: design.iconH,
      child: Image.asset(iconPath),
    );
  }
}
