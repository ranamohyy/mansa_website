import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:video_player/video_player.dart';
class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer({super.key,required this.videoUrl,
  required this.width, required this.height
  });
final String videoUrl;
final double height;
final double width;

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}
class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
 late VideoPlayerController videoPlayerController ;
  ChewieController ?chewieController;
 @override
  void initState() {
   initializeVideo();
   super.initState();
  }
 void initializeVideo()async{
   videoPlayerController=VideoPlayerController.asset(widget.videoUrl,
   videoPlayerOptions: VideoPlayerOptions(allowBackgroundPlayback: false,mixWithOthers: false)
   );
   await videoPlayerController.initialize();
   await videoPlayerController.position;
   videoPlayerController.setLooping(false);
   videoPlayerController.addListener(() {
     if (mounted) setState(() {});
     Duration? position = videoPlayerController.value.position;
     Duration? duration = videoPlayerController.value.duration;
     if (position != null && duration != null && position > duration) {
       setState(() {
         videoPlayerController.seekTo(duration);
       });
     }
   });

   chewieController=ChewieController(
       videoPlayerController: videoPlayerController,
     aspectRatio: videoPlayerController.value.aspectRatio,
     allowFullScreen: true,
     autoPlay: false,
     looping: false,
     showControls: true,
       allowMuting: true,
     allowPlaybackSpeedChanging: false,
     isLive: false,
     placeholder: Container(color: Colors.black,),
     hideControlsTimer: const Duration(seconds: 3),
       materialProgressColors: ChewieProgressColors(
         handleColor: kSecondColor,
           playedColor: kSecondColor,
           bufferedColor:Colors.grey,
           backgroundColor: Colors.white
       ),
     // customControls: MaterialControls(showPlayButton: true,)
   );

    setState(() {});
 }
 @override
  void dispose() {
   videoPlayerController.dispose();
   chewieController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return chewieController!=null?
          SizedBox(
          height:widget.height,
          width:widget.width,
            child: Chewie(
              controller: chewieController!,
            ),
        ):

  const  Center(
      child:  SizedBox(
        child: CircularProgressIndicator(),
      ),
    );


  }
}
