import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPalyer extends StatefulWidget {
  const VideoPalyer({super.key});

  @override
  State<VideoPalyer> createState() => _VideoPalyerState();
}

class _VideoPalyerState extends State<VideoPalyer> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
            "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Video Player",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: AspectRatio(
            aspectRatio: 20 / 10,
            child: FlickVideoPlayer(flickManager: flickManager)),
      ),
    );
  }
}
