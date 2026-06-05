import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// 通信の流れをまとめておくサービスクラス
class AuthService {
  /// サインイン
  Future<void> signIn() async {
    /* Google OAuth と通信 */

    // あらかじめ登録しておいたクライアントID
    const clientId = 'xxxxx.apps.googleusercontent.com';

    // アプリが知りたい情報
    const scopes = [
      'openid', // 他サービス連携用のID
      'profile', // 住所や電話番号
      'email', // メールアドレス
    ];

    // Googleでサインイン の画面へ飛ばす
    // MEMO: google_sign_in 7 では GoogleSignIn() の生成は廃止され、GoogleSignIn.instance を initialize() してから authenticate() を呼びます
    final google = GoogleSignIn.instance;
    await google.initialize(clientId: clientId);
    final account = await google.authenticate(scopeHint: scopes);

    // 受け取ったデータの中からトークンを取り出す
    // MEMO: google_sign_in 7 では authentication からは idToken のみ取得でき、accessToken は authorizationClient.authorizeScopes() から取得します
    final idToken = account.authentication.idToken;
    final authorization = await account.authorizationClient.authorizeScopes(
      scopes,
    );
    final accessToken = authorization.accessToken;

    /* Firebase と通信 */

    // Firebaseへトークンを送る
    final oAuthCredential = GoogleAuthProvider.credential(
      idToken: idToken,
      accessToken: accessToken,
    );
    await FirebaseAuth.instance.signInWithCredential(
      oAuthCredential,
    );

    /* Googleサインインを使わないときは これだけで十分 */

    // await FirebaseAuth.instance.signInWithEmailAndPassword(
    //   email: 'ここにメールアドレス',
    //   password: 'ここにパスワード',
    // );
  }

  /// サインアウト
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
