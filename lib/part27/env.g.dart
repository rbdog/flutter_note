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
    907365647,
    686778403,
    2939721773,
    1497012333,
    617789774,
    3862005550,
    3578871041,
    3299862275,
    2243747175,
  ];

  static const List<int> _envieddatapass1 = <int>[
    907378158,
    686774407,
    2939725970,
    1497016478,
    617777544,
    3862017930,
    3578858930,
    3299858377,
    2243751316,
  ];

  static final String pass1 = String.fromCharCodes(
    List<int>.generate(
      _envieddatapass1.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatapass1[i] ^ _enviedkeypass1[i]),
  );

  static const List<int> _enviedkeypass2 = <int>[
    142937999,
    3156609376,
    3733354487,
    2493306372,
    2162597745,
  ];

  static const List<int> _envieddatapass2 = <int>[
    142950240,
    3156621715,
    3733341987,
    2493310712,
    2162601928,
  ];

  static final String pass2 = String.fromCharCodes(
    List<int>.generate(
      _envieddatapass2.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatapass2[i] ^ _enviedkeypass2[i]),
  );
}
