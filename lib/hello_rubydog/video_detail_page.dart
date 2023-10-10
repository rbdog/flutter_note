import 'package:flutter/material.dart';
import 'package:banana/hello_rubydog/github_button.dart';
import 'package:banana/hello_rubydog/video.dart';
import 'package:banana/hello_rubydog/video_player.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoDetailPage extends StatelessWidget {
  const VideoDetailPage({
    super.key,
    required this.video,
  });
  final Video video;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(video.title),
          actions: [
            GithubButton(
              onPressed: () {
                launchUrl(
                  Uri.parse(video.githubUrl!),
                  webOnlyWindowName: '_blank',
                );
              },
            ),
          ]),
      body: Column(
        children: [
          const SizedBox(height: 8),
          SizedBox(
            height: 150,
            child: VideoPlayer(videoId: video.youtubeId),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Container(
              color: Colors.indigo,
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 500,
                  child: video.example(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
