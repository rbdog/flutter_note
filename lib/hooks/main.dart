import 'package:flutter/material.dart';
import 'package:banana/hooks/page_1.dart';
import 'package:banana/hooks/page_2.dart';
import 'package:banana/hooks/page_3.dart';
import 'package:banana/hooks/page_4.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

/// アプリ本体
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/1': (context) => const Page1(),
        '/2': (context) => const Page2(),
        '/3': (context) => const Page3(),
        '/4': (context) => const Page4(),
      },
    );
  }
}

/// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/1');
              },
              child: const Text('1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/2');
              },
              child: const Text('2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/3');
              },
              child: const Text('3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/4');
              },
              child: const Text('4'),
            ),
          ],
        ),
      ),
    );
  }
}
