import 'package:flutter/material.dart';
import 'package:banana/nintendo/colors.dart';
import 'package:banana/nintendo/sizes.dart';

class MyTextStyles {
  // XLサイズ 太字
  static const xlBold = TextStyle(
    color: MyColors.black,
    fontSize: Sizes.p18,
    fontWeight: FontWeight.bold,
  );

  // Lサイズ 太字
  static const lBold = TextStyle(
    color: MyColors.black,
    fontSize: Sizes.p16,
    fontWeight: FontWeight.bold,
  );

  // Mサイズ
  static const m = TextStyle(
    color: MyColors.black,
    fontSize: Sizes.p14,
  );

  // Mサイズ 太字
  static const mBold = TextStyle(
    color: MyColors.black,
    fontSize: Sizes.p14,
    fontWeight: FontWeight.bold,
  );

  // Mサイズ グレー
  static final mGrey = TextStyle(
    color: MyColors.darkGrey,
    fontSize: Sizes.p14,
  );

  // Sサイズ
  static const s = TextStyle(
    color: MyColors.black,
    fontSize: Sizes.p12,
  );

  // Sサイズ グレー
  static final sGrey = TextStyle(
    color: MyColors.darkGrey,
    fontSize: Sizes.p12,
  );

  // XSサイズ 緑
  static const xsGreen = TextStyle(
    color: MyColors.green,
    fontSize: Sizes.p10,
  );
}
