// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// generated_from: scripts/env/.env
final class _Env {
  static const List<int> _enviedkeypass1 = <int>[
    3929231680,
    1376196550,
    3111442753,
    1575317930,
    1332225834,
    124859028,
    1701077973,
    1192970759,
    1883454540,
  ];

  static const List<int> _envieddatapass1 = <int>[
    3929235873,
    1376200546,
    3111447038,
    1575305561,
    1332221932,
    124846640,
    1701073766,
    1192983245,
    1883442367,
  ];

  static final String pass1 = String.fromCharCodes(
    List<int>.generate(
      _envieddatapass1.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatapass1[i] ^ _enviedkeypass1[i]),
  );

  static const List<int> _enviedkeypass2 = <int>[
    2392624135,
    886564230,
    976521374,
    4025655880,
    2436371431,
  ];

  static const List<int> _envieddatapass2 = <int>[
    2392636648,
    886560117,
    976533578,
    4025651892,
    2436375390,
  ];

  static final String pass2 = String.fromCharCodes(
    List<int>.generate(
      _envieddatapass2.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatapass2[i] ^ _enviedkeypass2[i]),
  );
}
