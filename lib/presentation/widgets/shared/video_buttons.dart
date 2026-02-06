import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  
  const VideoButtons({
    super.key, 
    required this.video
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(value: video.likes, icon: Icons.favorite),
        SizedBox(height: 20,),
        _CustomIconButton(value: video.views, icon: Icons.visibility),
        SizedBox(height: 25,),
        SpinPerfect( // Adding a spinning animation to the play button
          infinite: true,
          duration: Duration(seconds: 5),
          child: IconButton(
            icon: Icon(Icons.play_circle, color: Colors.white, size: 35,),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData icon;
  final Color? color;

  const _CustomIconButton({
    required this.value, 
    required this.icon, 
    iconColor
  }): color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, color: color, size: 30,),
          onPressed: () {},
        ),
        Text(HumanFormats.humanReadableNumber(value.toDouble()), style: TextStyle(color: color),)
      ],
    );
  }
}