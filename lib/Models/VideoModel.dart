import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:youtube/youtube_thumbnail.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

late YoutubePlayerController _controller;
class VideoModel {
  late String description, url;

  VideoModel({
    required this.description,
    required this.url,
  });
}

class VideoTile extends StatefulWidget {
   VideoTile({super.key, required this.videoModel});

  VideoModel videoModel;

  @override
  State<VideoTile> createState() => _VideoTileState();
}

class _VideoTileState extends State<VideoTile> {

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        showControls: true,
        mute: false,
        showFullscreenButton: true,
        loop: false,
      ),
    );
    _controller.cueVideoById(videoId: widget.videoModel.url);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(5),
      height: MediaQuery.of(context).size.width/2.2,
      width:MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5), //border corner radius
        boxShadow:[
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), //color of shadow
            spreadRadius: 5, //spread radius
            blurRadius: 7, // blur radius
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              child: YoutubePlayer(
                controller: _controller,
                aspectRatio: 0.8,
              ),
            ),
          ),
          // Text(widget.videoModel.description)
        ],
      ),
    );
  }

}

