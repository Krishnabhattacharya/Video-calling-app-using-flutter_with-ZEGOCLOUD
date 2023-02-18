import 'package:flutter/material.dart';
import 'package:video_calling_app/videocall.dart';

void main() {
  runApp(VideoScreen());
}



class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: VideoCall(),
    );
  }
}