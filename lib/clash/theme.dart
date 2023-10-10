import 'package:flutter/material.dart';

/// 画像パス
class Images {
  static const tabShop = 'images/tab-shop.png';
  static const tabCollection = 'images/tab-collection.png';
  static const tabBattle = 'images/tab-battle.png';
  static const tabClan = 'images/tab-clan.png';
  static const tabEvents = 'images/tab-events.png';
  static const arrowLeft = 'images/arrow-left.png';
  static const arrowRight = 'images/arrow-right.png';
}

/// 色
class ClashColor {
  static const tabBar = Color(0xFF4C576B);
  static const dividerLight = Color(0xFF647082);
  static const dividerDark = Color(0xFF414C5F);
  static const highlightTop = Color(0x11FFFFFF);
  static const highlightBottom = Color(0x44FFFFFF);
}

/// フォント
class ClashFont {
  static const russoOne = 'RussoOne';
}

/// 言葉や単語
class L10n {
  static const shop = 'Shop';
  static const collection = 'Collection';
  static const battle = 'Battle';
  static const clan = 'Clan';
  static const events = 'Events';
}

/// タブバーの細かい設定
class TabBarConfig {
  static const initialIndex = 2;
  static const animationMillisec = 200;
  static const selectedFlex = 2;
}

/// 設計画面サイズ
class DesignSize {
  const DesignSize._({
    required this.tabBarH,
    required this.overflowH,
    required this.dividerW,
    required this.padding,
    required this.arrowW,
    required this.fontSize,
    required this.fontBorderW,
    required this.fontSpacing,
    required this.shadowH,
    required this.iconH,
    required this.highlightW,
  });

  final double tabBarH; // タブバーの高さ
  final double overflowH; // アイコンが上にはみ出す高さ
  final double dividerW; // 区切り線の幅
  final double padding; // アイコンの周りの余白
  final double arrowW; // 矢印の幅
  final double fontSize; // フォントの大きさ
  final double fontBorderW; // フォントのボーダーの幅
  final double fontSpacing; // フォントの間隔
  final double shadowH; // 影の高さ
  final double iconH; // アイコンの高さ
  final double highlightW; // ハイライトの幅

  static const expectedW = 1200.0;

  factory DesignSize(double actualW) {
    final r = actualW / expectedW;
    return DesignSize._(
      tabBarH: r * 200.0,
      overflowH: r * 25.0,
      dividerW: r * 4.0,
      padding: r * 15.0,
      arrowW: r * 40.0,
      fontSize: r * 32.0,
      fontBorderW: r * 6.0,
      fontSpacing: r * 2.0,
      iconH: r * 170.0,
      highlightW: r * 400.0,
      shadowH: r * 18.0,
    );
  }
}
