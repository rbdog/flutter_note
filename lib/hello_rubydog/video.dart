import 'package:flutter/material.dart';

class Video {
  Video(
    this.title,
    this.thumb,
    this.widgets,
    this.tags,
    this.example,
    this.githubUrl,
    this.youtubeId,
  );
  final String title;
  final String thumb;
  final List<String> widgets;
  final List<String> tags;
  final Widget Function() example;
  final String? githubUrl;
  final String youtubeId;
}
