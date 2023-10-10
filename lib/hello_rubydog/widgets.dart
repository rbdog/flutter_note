import 'package:flutter/material.dart';
import 'package:banana/hello_rubydog/video.dart';

class WidgetChip extends StatelessWidget {
  const WidgetChip({
    super.key,
    required this.widget,
  });
  final String widget;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.blue,
      label: Text(
        widget,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

class TagChip extends StatelessWidget {
  const TagChip({
    super.key,
    required this.tag,
  });
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.orange,
      label: Text(
        tag,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

class VideoItem extends StatelessWidget {
  const VideoItem({
    super.key,
    required this.video,
    required this.onTap,
  });
  final Video video;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // サムネ
          AspectRatio(
            aspectRatio: 16.0 / 9.0,
            child: Ink(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                // borderRadius: const BorderRadius.all(Radius.circular(3)),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/${video.thumb}',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: InkWell(
                // borderRadius: const BorderRadius.all(Radius.circular(3)),
                onTap: onTap,
              ),
            ),
          ),
          const SizedBox(height: 2),
          // タグの一覧
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Wrap(
                  spacing: 2,
                  runSpacing: 2,
                  direction: Axis.vertical,
                  children: video.widgets
                          .map<Widget>(
                            (widget) => WidgetChip(widget: widget),
                          )
                          .toList() +
                      video.tags
                          .map<Widget>(
                            (tag) => TagChip(tag: tag),
                          )
                          .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
