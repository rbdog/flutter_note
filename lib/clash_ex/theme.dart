import 'package:flutter/material.dart';

class Images {
  static const arrowLeft = 'images/arrow-left.png';
  static const arrowRight = 'images/arrow-right.png';
  static const tabShop = 'images/tab-shop.png';
  static const tabCollection = 'images/tab-collection.png';
  static const tabBattle = 'images/tab-battle.png';
  static const tabClan = 'images/tab-clan.png';
  static const tabEvents = 'images/tab-events.png';
}

class ExColor {
  static final tabBar = Colors.orange[300];
  static final dividerLight = Colors.orange[200];
  static final dividerDark = Colors.orange[400];
  static final highlightTop = Colors.white.withOpacity(0.8);
  static final highlightBottom = Colors.white.withOpacity(0.4);
}

class ExFont {
  static const russoOne = 'RussoOne';
}

class L10n {
  static const shop = 'Shop';
  static const collection = 'Collection';
  static const battle = 'Battle';
  static const clan = 'Clan';
  static const events = 'Events';
}

class TabBarConfig {
  const TabBarConfig({
    this.initialIndex = 2,
    this.animMillisec = 200,
    this.selectedFlex = 2,
  });

  final int initialIndex;
  final int animMillisec;
  final int selectedFlex;
}

const config = TabBarConfig();

class DesignSize {
  const DesignSize({
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

  final double tabBarH;
  final double overflowH;
  final double dividerW;
  final double padding;
  final double arrowW;
  final double fontSize;
  final double fontBorderW;
  final double fontSpacing;
  final double shadowH;
  final double iconH;
  final double highlightW;

  static const screenW = 1200.0;

  factory DesignSize.withScreenW(double actualW) {
    final r = actualW / screenW;
    return DesignSize(
      tabBarH: r * 200.0,
      overflowH: r * 80.0,
      dividerW: r * 4.0,
      padding: r * 15.0,
      arrowW: r * 80.0,
      fontSize: r * 32.0,
      fontBorderW: r * 6.0,
      fontSpacing: r * 2.0,
      iconH: r * 170.0,
      highlightW: r * 400.0,
      shadowH: r * 18.0,
    );
  }
}
