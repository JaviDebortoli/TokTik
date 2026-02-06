import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';
import 'package:toktik/presentation/widgets/video/fullscreen_player.dart';
import 'package:toktik/presentation/widgets/video/video_background.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  
  const VideoScrollableView({
    super.key, 
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    // Using PageView.builder to create a scrollable list of videos one at a time
    return PageView.builder(
      // Scroll physics similar to TikTok
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack( // Using Stack to overlay buttons on top of the video
          children: [
            // Video player
            SizedBox.expand(
              child: FullScreenPlayer(
                videoUrl: videoPost.videoUrl, 
                caption: videoPost.caption
              ),
            ),

            //Gradient background for better visibility of buttons and caption
            VideoBackground(),

            // Button positioned at the bottom right
            Positioned(
              bottom: 80,
              right: 20,
              child: VideoButtons(video: videoPost)
            )
          ],
        );
      },
    );
  }
}