import 'package:envied/envied.dart';
part 'env.g.dart';

@Envied(path: 'scripts/env/.env')
abstract class Env {
  @EnviedField(varName: 'PASSWORD_1', obfuscate: true)
  static final pass1 = _Env.pass1;
  @EnviedField(varName: 'PASSWORD_2', obfuscate: true)
  static final pass2 = _Env.pass2;
}
