import 'package:flutter/material.dart';
import 'package:banana/pixel_color_image/main.dart';
import 'package:banana/riverpod/my_widget.dart' as riverpod01;
import 'package:banana/riverpod/my_widget_1.dart' as riverpod03;
import 'package:banana/riverpod/basic_provider_proxy/widget.dart' as riverpod04;
import 'package:banana/liveroom/main.dart' as liveroom;
import 'package:pixel_color_image/pixel_color_image.dart';

class NoExamplePage extends StatelessWidget {
  const NoExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text('このパートには参考画面がありません'),
      ),
    );
  }
}

class Riverpod01Page extends StatelessWidget {
  const Riverpod01Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: riverpod01.MyWidget(),
      ),
    );
  }
}

class Riverpod03Page extends StatelessWidget {
  const Riverpod03Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: riverpod03.MyWidget1(),
      ),
    );
  }
}

class Riverpod04Page extends StatelessWidget {
  const Riverpod04Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: riverpod04.MyWidget(),
      ),
    );
  }
}

class WebsocketPage extends StatelessWidget {
  const WebsocketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const liveroom.HomePage(),
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 24.0),
          bodyMedium: TextStyle(fontSize: 24.0),
          labelLarge: TextStyle(fontSize: 24.0),
          titleMedium: TextStyle(fontSize: 24.0),
          titleSmall: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class PixelColorPage extends StatelessWidget {
  const PixelColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final img = PixelColor.assetImage(
      ref: ref,
      path: 'assets/images/banana.png',
      onHover: onHover,
      onTap: onTap,
      buildImage: buildImage,
    );
    final preview = PixelColorPreview(
      ref: ref,
    );
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              preview,
              img,
            ],
          ),
        ),
      ),
    );
  }
}
