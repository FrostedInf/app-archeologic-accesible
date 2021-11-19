import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _VideoPlayerScren();
  }
}

class _VideoPlayerScren extends State<VideoPlayerScreen> {
  late VideoPlayerController _videoPlayerController1;
  late ChewieController _chewieController;

  @override
  void initState() {
    // dependencies initial configuration
    super.initState();
    _videoPlayerController1 =
        VideoPlayerController.asset('assets/video/videolsm23recortado.mp4');

    _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController1,
        aspectRatio: 2 / 3,
        autoPlay: false,
        looping: false,
        showControls: true,
        allowMuting: true,
        autoInitialize: true,
        deviceOrientationsOnEnterFullScreen: [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown
        ]);
    _chewieController.addListener(() {
      if (!_chewieController.isFullScreen) {
        SystemChrome.setPreferredOrientations(
            [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
      }
    });
    //_chewieController.setVolume(0.0);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _videoPlayerController1.dispose();
    _chewieController.dispose();

    super.dispose();
  }

  /*Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://assets.mixkit.co/videos/preview/mixkit-daytime-city-traffic-aerial-view-56-large.mp4');
    await Future.wait([
      _videoPlayerController1.initialize(),
    ]);
    _createChewieController();
    setState(() {});
  }*/

  //void _createChewieController() {
  //final subtitles = [
  //Subtitle(
  //index: 0,
  //start: const Duration(seconds: 10),
  //end: const Duration(seconds: 20),
  //text: 'Whats up? :)'
  //// text: const TextSpan(
  ////   text: 'Whats up? :)',
  ////   style: TextStyle(color: Colors.amber, fontSize: 22, fontStyle: FontStyle.italic),
  //// ),
  //),
  //];

  //_chewieController = ChewieController(
  //videoPlayerController: _videoPlayerController1,
  //autoPlay: false,
  //looping: false,
  //subtitle: Subtitles(subtitles),
  //subtitleBuilder: (context, dynamic subtitle) => Container(
  //padding: const EdgeInsets.all(10.0),
  //child: subtitle is InlineSpan
  //? RichText(
  //text: subtitle,
  //)
  //: Text(
  //subtitle.toString(),
  //style: const TextStyle(color: Colors.black),
  //),
  //),
  //);
  //}

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }
}
