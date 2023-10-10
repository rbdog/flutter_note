import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/clash/clash_tab_route.dart';
import 'package:banana/clash/clash_tab_bar.dart';
import 'package:banana/clash/state.dart';
import 'package:banana/clash/theme.dart';

void main() {
  const home = HomePage();
  const app = MaterialApp(home: home);
  const scope = ProviderScope(child: app);
  runApp(scope);
}

/// ホーム画面
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(pageControllerProvider);
    final screenSize = MediaQuery.of(context).size;
    final design = DesignSize(screenSize.width);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: routes.length,
              itemBuilder: (_, i) => routes[i].body(),
            ),
          ),
          SizedBox(
            height: design.tabBarH,
            child: const ClashTabBar(),
          ),
        ],
      ),
    );
  }
}
