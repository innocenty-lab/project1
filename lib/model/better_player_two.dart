import 'package:eklbm_bima_ciputra_satrio/model/buildAboutText.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:eklbm_bima_ciputra_satrio/model/video_player_widget.dart';

class AssetPlayerWidgetTwo extends StatefulWidget {
  @override
  _AssetPlayerWidgetTwoState createState() => _AssetPlayerWidgetTwoState();
}

class _AssetPlayerWidgetTwoState extends State<AssetPlayerWidgetTwo> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset('assets/video/video2.mp4')
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMuted = controller.value.volume == 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Video Kelistrikan'),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          VideoPlayerWidget(controller: controller),
          const SizedBox(
            height: 32,
          ),
          if (controller != null && controller.value.isInitialized)
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.red,
              child: IconButton(
                icon: Icon(
                  isMuted ? Icons.volume_mute : Icons.volume_up,
                  color: Colors.white,
                ),
                onPressed: () => controller.setVolume(isMuted ? 1 : 0),
              ),
            )
        ],
      ),
    );
  }
}
