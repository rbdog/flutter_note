import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/nintendo/colors.dart';
import 'package:banana/nintendo/messages.dart';
import 'package:banana/nintendo/my_page.dart';
import 'package:banana/nintendo/sizes.dart';

// 選択中のタブインデックス
final tabIndexProvider = StateProvider((ref) {
  // 今回は コード例なのでいきなり Myページ を表示
  // 0: 空ページ
  // 1: 空ページ
  // 2: Myページ
  return 2;
});

// ホーム画面全体
class Home extends ConsumerWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // インデックス
    final tabIndex = ref.watch(tabIndexProvider);

    // アイテムたち
    const items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.tv_outlined),
        label: Messages.news,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_basket_outlined),
        label: Messages.store,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline_rounded),
        label: Messages.myPage,
      ),
    ];

    // 下のバー
    final bar = BottomNavigationBar(
      items: items,
      backgroundColor: MyColors.white, // バーの色
      selectedItemColor: MyColors.red, // 選ばれたアイテムの色
      unselectedItemColor: MyColors.darkGrey, // 選ばれていないアイテムの色
      currentIndex: tabIndex,
      onTap: (index) {
        // タップされたとき インデックスを変更する
        ref.read(tabIndexProvider.notifier).state = index;
      },
      elevation: Sizes.zero,
    );

    // 画面たち
    const pages = [
      Scaffold(), // 空のページ
      Scaffold(), // 空のページ
      MyPage(), // 空のページ
    ];

    return ColoredBox(
      color: MyColors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: MyColors.lightGrey,
          body: pages[tabIndex],
          bottomNavigationBar: bar,
        ),
      ),
    );
  }
}
