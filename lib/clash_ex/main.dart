import 'package:banana/clash/state.dart';
import 'package:banana/clash_ex/theme.dart';
import 'package:flutter/material.dart';
import 'package:banana/clash_ex/ex_tab_route.dart';
import 'package:banana/clash_ex/ex_tab_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/gestures.dart';

void main() {
  const home = HomePage();
  const app = MaterialApp(home: home);
  const scope = ProviderScope(child: app);
  runApp(scope);
}

class DragScroller extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(pageControllerProvider);
    final screenSize = MediaQuery.of(context).size;
    final design = DesignSize.withScreenW(screenSize.width);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollBehavior: DragScroller(),
              controller: controller,
              itemCount: routes.length,
              itemBuilder: (_, i) => routes[i].body(),
            ),
          ),
          Container(
            height: design.tabBarH,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, -3),
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 5,
                )
              ],
              color: Colors.white,
            ),
            child: const ExTabBar(),
          ),
        ],
      ),
    );
  }
}
