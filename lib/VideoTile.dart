import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoTile extends StatefulWidget {

  String id;

   VideoTile({super.key, required this.id});

  @override
  State<VideoTile> createState() => _VideoTileState();
}

class _VideoTileState extends State<VideoTile> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
        super.initState();
        _controller = YoutubePlayerController(
            initialVideoId: widget.id,
            flags: YoutubePlayerFlags(
              mute: false,
              autoPlay: false,
            )
        );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
