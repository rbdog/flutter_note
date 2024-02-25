// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _Env {
  static const List<int> _enviedkeypass1 = <int>[
    1090176458,
    1224822555,
    944442074,
    1334648684,
    693641025,
    2399345540,
    3367584671,
    2788696320,
    2998679594,
  ];

  static const List<int> _envieddatapass1 = <int>[
    1090188587,
    1224835007,
    944454245,
    1334652831,
    693645191,
    2399349536,
    3367596844,
    2788692426,
    2998667481,
  ];

  static final String pass1 = String.fromCharCodes(List<int>.generate(
    _envieddatapass1.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatapass1[i] ^ _enviedkeypass1[i]));

  static const List<int> _enviedkeypass2 = <int>[
    2708233566,
    894539785,
    2427891548,
    1981858917,
    1057615028,
  ];

  static const List<int> _envieddatapass2 = <int>[
    2708237745,
    894544122,
    2427887496,
    1981871257,
    1057610765,
  ];

  static final String pass2 = String.fromCharCodes(List<int>.generate(
    _envieddatapass2.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatapass2[i] ^ _enviedkeypass2[i]));
}
