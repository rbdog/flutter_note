import 'package:banana/hello_rubydog/nomal_examples.dart';
import 'package:banana/hello_rubydog/video.dart';
import 'package:banana/part9/main.dart' as part09;
import 'package:banana/part13/main.dart' as part13;
import 'package:banana/part14/main.dart' as part14;
import 'package:banana/part15/main.dart' as part15;
import 'package:banana/part16/main.dart' as part16;
import 'package:banana/part17/main.dart' as part17;
import 'package:banana/part18/main.dart' as part18;
import 'package:banana/part20/main.dart' as part20;
import 'package:banana/part22/main.dart' as part22;
import 'package:banana/part23/main.dart' as part23;
import 'package:banana/part24/router.dart' as part24;
import 'package:banana/part25/main.dart' as part25;
import 'package:banana/part26/main.dart' as part26;
import 'package:banana/part27/main.dart' as part27;
import 'package:banana/part28/main.dart' as part28;
import 'package:banana/part29/main.dart' as part29;
import 'package:banana/part30/main.dart' as part30;
import 'package:banana/part31/main.dart' as part31;
import 'package:banana/part32/main.dart' as part32;

final nomalVideos = [
  Video(
    '入門 01',
    'flut01.png',
    [],
    ['環境構築', 'VSCode', 'Chrome', 'Flutter'],
    () => const NoExamplePage(),
    null,
    'GN6HXSrObzg',
  ),
  Video(
    '入門 02',
    'flut02.png',
    ['Text', 'Center', 'Scaffold', 'MaterialApp'],
    [],
    () => const Part02Page(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part2',
    'aEu17XiWSZ0',
  ),
  Video(
    '入門 03',
    'flut03.png',
    ['Column', 'Row'],
    [],
    () => const Part03Page(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part3',
    'XLC7QmNW8A4',
  ),
  Video(
    '入門 04',
    'flut04.png',
    ['Image'],
    [],
    () => const Part04Page(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part4',
    'ZYpnosbnd6w',
  ),
  Video(
    '入門 05',
    'flut05.png',
    ['Container'],
    [],
    () => const Part05Page(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part5',
    '8Ze2F-kQpUQ',
  ),
  Video(
    '入門 06',
    'flut06.png',
    ['StatelessWidget'],
    ['import'],
    () => const Part06Page(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part6',
    'IgH1EOlB11Q',
  ),
  Video(
    '入門 07',
    'flut07.png',
    ['ElevatedButton', 'TextButton他'],
    ['関数'],
    () => const Part07Page(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part7',
    'KXc38uyYWbs',
  ),
  Video(
    '入門 08',
    'flut08.png',
    ['TextField'],
    [],
    () => const Part08Page(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part8',
    '-1si6nPD3Fs',
  ),
  Video(
    '入門 09',
    'flut09.png',
    [],
    ['riverpod', '状態管理'],
    () => const part09.Example(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part9',
    'w2xo2FjDUNQ',
  ),
  Video(
    '入門 10',
    'flut10.png',
    ['ListView'],
    ['描画', '表示'],
    () => const Part10Page(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part10',
    'dZzkFJR8p-w',
  ),
  Video(
    '入門 11',
    'flut11.png',
    [],
    ['go_router', '画面遷移'],
    () => Part11App(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part11',
    '9lRpNOwHH4Y',
  ),
  Video(
    '入門 12',
    'flut12.png',
    ['Drawer', 'DrawerHeader'],
    ['サイドメニュー'],
    () => const Part12Page(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part12',
    'TOVjS4g4mWU',
  ),
  Video(
    '入門 13',
    'flut13.png',
    ['BottomNavigationBar'],
    ['下タブ'],
    () => const part13.Root(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part13',
    'BYOra__jR9g',
  ),
  Video(
    '入門 14',
    'flut14.png',
    ['Switch', 'Slider'],
    ['トグルスイッチ'],
    () => const part14.Home(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part14',
    'HNkJ31fNIA4',
  ),
  Video(
    '入門 15',
    'flut15.png',
    ['Checkbox', 'Radio'],
    [],
    () => const part15.Home(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part15',
    'cQ8Aec55N9w',
  ),
  Video(
    '入門 16',
    'flut16.png',
    ['CircleProgressIndicator他'],
    ['進捗インジケーター', 'ぐるぐる'],
    () => const part16.Home(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part16',
    'cqsXkU14MhI',
  ),
  Video(
    '入門 17',
    'flut17.png',
    [],
    ['freezed', 'immutable', 'class'],
    () => const part17.Home(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part17',
    'm0O9lS4rUPs',
  ),
  Video(
    '入門 18',
    'flut18.png',
    ['PageView'],
    ['カルーセル', '影', '角丸'],
    () => const part18.Home(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part18',
    'aO0JpDtqCws',
  ),
  Video(
    '入門 19',
    'flut19.png',
    [],
    ['JSON'],
    () => const NoExamplePage(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part19',
    'HWjJ_UyydUU',
  ),
  Video(
    '入門 20',
    'flut20.png',
    [],
    ['フォント', 'ライセンス'],
    () => const part20.HomePage(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part20',
    'Ef_P-7TQ0Eg',
  ),
  Video(
    '入門 21',
    'flut21.png',
    [],
    ['フレーバー', 'Dev-Stg-Prd', 'if文'],
    () => const NoExamplePage(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part21',
    'U9kdK1bWifM',
  ),
  Video(
    '入門 22',
    'flut22.png',
    ['ExpansionTile'],
    ['コンストラクタ', '引数'],
    () => const part22.HomePage(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part22',
    '3GBxlMPhP7o',
  ),
  Video(
    '入門 23',
    'flut23.png',
    [],
    ['Firebase', 'CLI', 'Analytics'],
    () => const part23.HomePage(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part23',
    'BWTQkkLC-Mo',
  ),
  Video(
    '入門 24',
    'flut24.png',
    [],
    ['Authentication', 'サインイン', '認証プロバイダー他'],
    () => const part24.MyApp(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part24',
    'KsixooHekJE',
  ),
  Video(
    '入門 25',
    'flut25.png',
    [],
    ['device_preview', 'レスポンシブデザイン', 'ブレークポイント他'],
    () => const part25.HomePage(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part25',
    'UKuHzea0mek',
  ),
  Video(
    '入門 26',
    'flut26.png',
    ['DropdownButton'],
    ['Dart3', 'switch式'],
    () => const part26.HomePage(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part26',
    'PJjFH6ciHSo',
  ),
  Video(
    '入門 27',
    'flut27.png',
    [],
    ['envied', '秘密情報'],
    () => const part27.HomePage(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part27',
    '5C0MFSIH5qI',
  ),
  Video(
    '入門 28',
    'flut28.png',
    ['Stack', 'Positioned', 'Align'],
    ['重なり', 'はみ出し'],
    () => const part28.MyApp(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part28',
    'CAGXYvOyZtU',
  ),
  Video(
    '入門 29',
    'flut29.png',
    ['AlertDialog他'],
    ['showDialog'],
    () => const part29.HomePage(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part29',
    'U3T1_qO5ts4',
  ),
  Video(
    '入門 30',
    'flut30.png',
    [],
    ['shared_preferences', 'データ永続化', 'KV'],
    () => const part30.HomePage(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part30',
    'eNP7eotwpH4',
  ),
  Video(
    '入門 31',
    'flut31.png',
    [],
    ['データベース', 'Firestore', 'CRUD', 'セキュリティ'],
    () => const part31.HomePage(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part31',
    'ZKww9U0jvAM',
  ),
  Video(
    '入門 32',
    'flut32.png',
    [],
    ['DateTime', 'ISO8601', 'タイマー'],
    () => const part32.HomePage(),
    'https://github.com/rbdog/flutter_note/tree/main/lib/part32',
    'OCx3RWdJCU8',
  ),
  // Video(
  //   '入門 33',
  //   'flut33.png',
  //   [],
  //   [],
  //   () => const NoExamplePage(),
  //   '',
  //   '',
  // ),
  // Video(
  //   '入門 34',
  //   'flut34.png',
  //   [],
  //   [],
  //   () => const NoExamplePage(),
  //   '',
  //   '',
  // ),
];
