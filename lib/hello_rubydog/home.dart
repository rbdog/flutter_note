import 'package:flutter/material.dart';
import 'package:banana/hello_rubydog/nomal_videos.dart';
import 'package:banana/hello_rubydog/special_videos.dart';
import 'package:banana/hello_rubydog/video.dart';
import 'package:banana/hello_rubydog/video_detail_page.dart';
import 'package:banana/hello_rubydog/widgets.dart';

/// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void pushExample(BuildContext context, Video video) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) {
        return VideoDetailPage(video: video);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverToBoxAdapter(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 100),
              child: Image.asset('assets/images/flutter-note.png'),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 2),
          ),
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.75,
            ),
            itemCount: nomalVideos.length,
            itemBuilder: (context, index) {
              final video = nomalVideos[index];
              return VideoItem(
                video: video,
                onTap: () => pushExample(context, video),
              );
            },
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 50),
          ),
          SliverToBoxAdapter(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 100),
              child: Image.asset('assets/images/flutter-note-special.png'),
            ),
          ),
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.75,
            ),
            itemCount: specialVideos.length,
            itemBuilder: (context, index) {
              final video = specialVideos[index];
              return VideoItem(
                video: video,
                onTap: () => pushExample(context, video),
              );
            },
          ),
        ],
      ),
    );
  }
}
