import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Videoplayer extends StatefulWidget {
  @override
  _VideoplayerState createState() => _VideoplayerState();
}

class _VideoplayerState extends State<Videoplayer> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/video.mp4");
    _initializeVideoFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoFuture,
      builder: (ctx, snapshot) =>
          snapshot.connectionState == ConnectionState.done
              ? GestureDetector(
                  child: VideoPlayer(_controller),
                  onTap: () {
                    setState(() {
                      if (_controller.value.isPlaying) {
                        _controller.pause();
                      } else {
                        _controller.play();
                      }
                    });
                  },
                )
              : Center(child: CircularProgressIndicator()),
    );
  }
}
