import 'package:flutter/material.dart';
import '../../core/res/responsive.dart';
import 'custom_video_player.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final web =Responsive.isWeb(context);
    return Center(
      child: CustomVideoPlayer(
        videoUrl: "assets/images/s7.mp4",
                      height:web?400: 300,
                      width:web?1000: 600,
        ),
    );
  }
}



