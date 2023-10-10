import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

/// ファイアーストアと通信するクラス
class FirestoreService {
  final db = FirebaseFirestore.instance;

  /* Create 作成 */
  Future<void> create() async {
    await db.collection('songs').doc('S01').set(
      {
        'title': 'Poker Face',
        'artist': 'レディー ガガ',
        'released': 2008,
        'genre': 'エレクトロポップ',
      },
    );

    await db.collection('songs').doc('S02').set(
      {
        'title': '米津玄師',
        'artist': 'Lemon',
        'released': 2018,
        'genre': 'J-POP',
      },
    );
    await db.collection('songs').doc('S03').set(
      {
        'title': 'クリスマス・イブ',
        'artist': '山下達郎',
        'released': 1983,
        'genre': 'J-POP',
      },
    );
    await db.collection('songs').doc('S04').set(
      {
        'title': 'Shape of you',
        'artist': 'エド シーラン',
        'released': 2017,
        'genre': 'トロピカルハウス',
      },
    );
    await db.collection('songs').doc('S05').set(
      {
        'title': 'Wonderwall',
        'artist': 'オアシス',
        'released': 1995,
        'genre': 'ブリットポップ',
      },
    );
    await db.collection('songs').doc('S06').set(
      {
        'title': 'ブルーバード',
        'artist': 'いきものがかり',
        'released': 2008,
        'genre': 'J-POP',
      },
    );
    await db.collection('songs').doc('S07').set(
      {
        'title': 'Beat it',
        'artist': 'マイケル ジャクソン',
        'released': 1983,
        'genre': 'ハードロック',
      },
    );
    await db.collection('songs').doc('S08').set(
      {
        'title': 'STAY',
        'artist': 'ザ キッド ラロイ',
        'released': 2021,
        'genre': 'ポップラップ',
      },
    );
    await db.collection('songs').doc('S09').set(
      {
        'title': 'チェリー',
        'artist': 'スピッツ',
        'released': 1996,
        'genre': 'J-POP',
      },
    );
    await db.collection('songs').doc('S10').set(
      {
        'title': 'ミックスナッツ',
        'artist': 'Official髭男dism',
        'released': 2022,
        'genre': 'J-POP',
      },
    );
  }

  /* Read 読み出し */
  Future<void> read() async {
    final doc = await db.collection('songs').doc('S07').get();
    // 見つけた曲を文字に変換
    final song = doc.data().toString();
    debugPrint(song);
  }

  /* Update 変更 */
  Future<void> update() async {
    await db.collection('songs').doc('S09').update(
      {
        'genre': 'ロック',
      },
    );
  }

  /* Delete 削除 */
  Future<void> delete() async {
    await db.collection('songs').doc('S02').delete();
  }

  /* Create 応用 1 */
  Future<void> create1() async {
    // セキュリティルールが必要
    // https://qiita.com/nade/items/b06761ad6dc564c01536
    await db.collection('songs').doc('S10').set(
      {
        'title': '新時代',
        'artist': 'ウタ',
      },
    );
  }

  /* Create 応用 2 */
  Future<void> create2() async {
    await db.collection('songs').doc('S10').set(
      {
        'title': '新時代',
        'artist': 'ウタ',
      },
      SetOptions(merge: false), // 古いほうを消して上書き
    );
  }

  /* Create 応用 3 */
  Future<void> create3() async {
    await db.collection('songs').doc('S10').set(
      {
        'artist': 'Ado',
        'released': 2022,
        'genre': 'J-POP',
      },
      SetOptions(merge: true), // 古いほうと合体
    );
  }

  /* Read 応用 1~3 */
  Future<void> read123() async {
    final snapshot = await db
        .collection('songs')
        .where('genre', isEqualTo: 'J-POP') // J-POPのみ
        .orderBy('released') // リリース年順
        .limit(3) // 3曲
        .get();

    // 見つかった曲を全部つなげて文字にする
    final docs = snapshot.docs.map(
      (doc) => doc.data().toString(),
    );
    final songs = docs.join();
    debugPrint(songs);
  }
}
