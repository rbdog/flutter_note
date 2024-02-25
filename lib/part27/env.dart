import 'package:envied/envied.dart';
part 'env.g.dart';

// ------------------------------------
//
// ***重要***
// String の明記が必須になった。
//
// - 前
//   => static final pass1 = _Env.pass1;
// - 後
//   => static final String pass1 = _Env.pass1;
//
// ------------------------------------

@Envied(path: 'scripts/env/.env')
abstract class Env {
  @EnviedField(varName: 'PASSWORD_1', obfuscate: true)
  static final String pass1 = _Env.pass1;
  @EnviedField(varName: 'PASSWORD_2', obfuscate: true)
  static final String pass2 = _Env.pass2;
}
