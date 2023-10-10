// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

class _Env {
  static const List<int> _enviedkeypass1 = [
    3268763001,
    63678212,
    3322914694,
    3995920302,
    2779584293,
    3390690629,
    162800668,
    1096488439,
    577507887
  ];
  static const List<int> _envieddatapass1 = [
    3268767128,
    63674272,
    3322910521,
    3995916125,
    2779588579,
    3390694881,
    162796719,
    1096492349,
    577512156
  ];
  static final pass1 = String.fromCharCodes(
    List.generate(_envieddatapass1.length, (i) => i, growable: false)
        .map((i) => _envieddatapass1[i] ^ _enviedkeypass1[i])
        .toList(growable: false),
  );
  static const List<int> _enviedkeypass2 = [
    2630793940,
    2641372546,
    1147492218,
    1677103296,
    2668132987
  ];
  static const List<int> _envieddatapass2 = [
    2630781499,
    2641368433,
    1147496366,
    1677107260,
    2668120770
  ];
  static final pass2 = String.fromCharCodes(
    List.generate(_envieddatapass2.length, (i) => i, growable: false)
        .map((i) => _envieddatapass2[i] ^ _enviedkeypass2[i])
        .toList(growable: false),
  );
}
