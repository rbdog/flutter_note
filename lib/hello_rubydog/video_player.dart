import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoPlayer extends HookWidget {
  const VideoPlayer({
    super.key,
    required this.videoId,
  });
  final String videoId;

  @override
  Widget build(BuildContext context) {
    final controller = useState(
      YoutubePlayerController.fromVideoId(
        videoId: videoId,
        autoPlay: false,
      )..setSize(320, 180),
    );
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: YoutubePlayer(
        controller: controller.value,
      ),
    );
  }
}
