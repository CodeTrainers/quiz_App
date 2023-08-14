// import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:newproj/Models/channels_model.dart';
// import 'package:newproj/Models/vidModel.dart';
// import 'package:newproj/Services/api_service.dart';
// import 'package:newproj/VideoTile.dart';
//
// class VideoScreen extends StatefulWidget {
//   const VideoScreen({super.key});
//
//   @override
//   State<VideoScreen> createState() => _VideoScreenState();
// }
//
// class _VideoScreenState extends State<VideoScreen> {
//   late Channel _channel;
//   bool _isLoading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _initChannel();
//   }
//
//   _initChannel() async{
//     Channel channel = await APIService.instance
//         .fetchChannel(channelId: 'UC6Dy0rQ6ZDnQuHQ1EeErGUA');
//     setState(() {
//       _channel = channel;
//     });
//   }
//
//   _loadMoreVideos() async{
//     _isLoading = true;
//     List<Video> moreVideos = await APIService.instance
//       .fetchVideosfromPlaylist(playlistId: _channel.uploadPlaylistId);
//     List<Video> allVideos = _channel.videos..addAll(moreVideos);
//     setState(() {
//       _channel.videos = allVideos;
//     });
//   }
//   _buildProfileInfo(){
//     return Container(
//       margin: EdgeInsets.all(20.0),
//       padding: EdgeInsets.all(20.0),
//       height: 100.0,
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             offset: Offset(0, 1),
//             blurRadius: 6.0
//           )
//         ]
//       ),
//       child: Row(
//         children: [
//           CircleAvatar(
//             backgroundColor: Colors.white,
//             radius: 35.0,
//             backgroundImage: NetworkImage(_channel.profilePictureURL),
//           ),
//           SizedBox(width: 12.0,),
//             Expanded(child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                     _channel.title,
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w600
//                     ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 Text(
//                   '${_channel.subscribeCount} subscribers',
//                   style: TextStyle(
//                       color: Colors.grey[600],
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ],
//             ))
//
//         ],
//       ),
//     );
//   }
//
//   _buildVideo(Video video){
//     return GestureDetector(
//       onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=> VideoTile(id: video.id))),
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
//         padding: EdgeInsets.all(10.0),
//         height: 140.0,
//         decoration: BoxDecoration(
//           color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             offset: Offset(0,1),
//             blurRadius: 6.0
//             )
//           ]
//         ),
//         child: Row(
//           children: [
//             Image(
//                 width: 150,
//                 image: NetworkImage(video.thumbnail)),
//             SizedBox(width: 10,),
//             Expanded(child:
//               Text(
//                 video.title,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 18
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Students App"),
//       ),
//       body: _channel != null
//           ? NotificationListener<ScrollNotification>(
//             onNotification: (ScrollNotification scrollDetails) {
//               if(_isLoading && _channel.videos.length != int.parse(_channel.videoCount)
//                 && scrollDetails.metrics.pixels == scrollDetails.metrics.maxScrollExtent){
//                   _loadMoreVideos();
//               }
//               return false;
//             },
//             child: ListView.builder(
//             itemCount: 1 + _channel.videos.length,
//             itemBuilder: (BuildContext content, int index){
//               if(index == 0){
//                 return _buildProfileInfo();
//               }
//               Video video = _channel.videos[index -1];
//               return _buildVideo(video);
//             }),
//           )
//       :Center(
//         child: CircularProgressIndicator(
//           valueColor: AlwaysStoppedAnimation<Color>(
//             Theme.of(context).primaryColor
//           ),
//         ),
//       ),
//     );
//   }
// }
