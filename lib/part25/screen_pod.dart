
import 'package:flutter/material.dart';

///
/// [Example]
/// ```dart
/// 1. ウィジェットの中から `watch` する
/// final screen = ScreenRef(context).watch(screenProvider);
///
/// 2. データを取り出して使う
/// final sizeClass = screen.sizeClass; // スマホ or タブレット or パソコン
/// final orientation = screen.orientation; // 回転の向き
/// final designW = screen.designW(100); // デザイン基準に合わせて伸縮する幅
/// final designH = screen.designH(100); // デザイン基準に合わせて伸縮する高さ
/// ```

// --------------------------- //

/// 画面サイズクラス
enum ScreenSizeClass {
  /// スマホ
  phone,

  /// タブレット
  tablet,

  /// パソコン
  desktop,

  ///その他をここに追加
}

// --------------------------- //

/// 画面サイズの設定値
const screenProvider = ScreenProvider(
  designWidth: 390, // iPhone14の幅をデザイン基準にする
  designHeight: 844,
  breakpoints: {
    ScreenSizeClass.phone: 320, // スマホ表示に必要な最低限の幅
    ScreenSizeClass.tablet: 600,
    ScreenSizeClass.desktop: 1000,
  },
);

// --------------------------- //

/// Screen Data
class Screen<SizeClass> {
  const Screen._({
    required this.sizeClass,
    required double ratioToDesignW,
    required double ratioToDesignH,
    required this.orientation,
  })  : _ratioToDesignH = ratioToDesignH,
        _ratioToDesignW = ratioToDesignW;

  /// サイズクラス
  final SizeClass sizeClass;

  /// 設計に対する実際のサイズ比 幅
  final double _ratioToDesignW;

  /// 設計に対する実際のサイズ比 高さ
  final double _ratioToDesignH;

  /// 画面の回転の向き
  final Orientation orientation;

  /// デザイン基準より大きい画面では大きく, 小さい画面では小さくなる幅
  double designW(double value) => value * _ratioToDesignW;

  /// デザイン基準より大きい画面では大きく, 小さい画面では小さくなる高さ
  double designH(double value) => value * _ratioToDesignH;
}

/// Provider for design config
class ScreenProvider<SizeClass> {
  const ScreenProvider({
    required this.designWidth,
    required this.designHeight,
    required this.breakpoints,
  });
  final double designWidth;
  final double designHeight;
  final Map<SizeClass, double> breakpoints;
}

/// Something like WidgetRef in Riverpod.
class ScreenRef {
  const ScreenRef(this.context);
  final BuildContext context;

  /// ref.watch(provider)
  Screen<SizeClass> watch<SizeClass>(
    ScreenProvider<SizeClass> provider,
  ) {
    // 全ての画面サイズクラス (ブレークポイントが大きい順)
    final sizeClasses = provider.breakpoints.entries.toList();
    sizeClasses.sort(
      (a, b) => b.value.compareTo(a.value),
    );
    final size = MediaQuery.of(context).size;

    final sizeClass = sizeClasses.firstWhere(
      (it) => size.width > it.value,
      orElse: () => throw 'unsupported screen size',
    );
    final ratioToDesignW = size.width / provider.designWidth;
    final ratioToDesignH = size.height / provider.designHeight;
    final orientation = MediaQuery.of(context).orientation;

    return Screen._(
      sizeClass: sizeClass.key,
      ratioToDesignW: ratioToDesignW,
      ratioToDesignH: ratioToDesignH,
      orientation: orientation,
    );
  }
}
