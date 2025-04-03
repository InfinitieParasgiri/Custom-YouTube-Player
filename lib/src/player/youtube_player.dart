import 'package:flutter/material.dart';
import '../controller/youtube_player_controller.dart';
import '../utils/youtube_player_flags.dart';

class YoutubePlayer extends StatefulWidget {
  const YoutubePlayer({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final YoutubePlayerController controller;

  @override
  State<YoutubePlayer> createState() => _YoutubePlayerState();
}

class _YoutubePlayerState extends State<YoutubePlayer> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color: Colors.black,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
} 