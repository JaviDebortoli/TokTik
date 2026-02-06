import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FullScreenPlayer extends StatefulWidget {
  final String videoUrl;
  final String caption;

  const FullScreenPlayer({
    super.key, 
    required this.videoUrl, 
    required this.caption
  });

  @override
  State<FullScreenPlayer> createState() => _FullScreenPlayerState();
}

class _FullScreenPlayerState extends State<FullScreenPlayer> {
  late VideoPlayerController _controller;
  late Future<void> _initializationFuture;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(widget.videoUrl)
      ..setLooping(true);
    
    _initializationFuture = _controller.initialize().then((_) {
      _controller.play();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializationFuture, 
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return Center( child: CircularProgressIndicator(strokeWidth: 2));
        } else if ((snapshot.hasError)) {
          return Center(child: Text('Error loading video'));
        }
          
        return GestureDetector(
          onTap: () {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          },
          child: AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: Stack(
              children: [
                VideoPlayer(_controller),
                Positioned(
                  bottom: 80,
                  left: 20,
                  child: _VideoCaption(widget.caption),
                ),
              ],
            ),
          ),
        );
      } 
    );
  }
}

class _VideoCaption extends StatelessWidget {
  final String caption;
  
  const _VideoCaption(
    this.caption
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textStyle = Theme.of(context).textTheme.titleLarge;

    return SizedBox(
      width: size.width * 0.6,
      child: Text(caption, maxLines: 2, style: textStyle,)
    );
  }
}