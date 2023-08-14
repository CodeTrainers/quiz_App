// import 'package:newproj/Models/vidModel.dart';
//
// class Channel {
//   final String id, title, profilePictureURL, subscribeCount, videoCount, uploadPlaylistId;
//   List<Video> videos;
//
//
//
//   Channel({
//     required this.id,
//     required this.title,
//     required this.profilePictureURL,
//     required this.subscribeCount,
//     required this.videoCount,
//     required this.uploadPlaylistId,
//     this.videos,
//   });
//
//   factory Channel.fromMap(Map<String, dynamic> map){
//     return Channel(
//         id: map['id'],
//         title: map['snippet']['title'],
//         profilePictureURL: map['snippet']['thumbnails']['default']['url'],
//         subscribeCount: map['statistics']['subscribeCount'],
//         videoCount: map['statistics']['videoCount'],
//         uploadPlaylistId: map['contentDetails']['relatedPlaylists']['uploads'],
//
//     );
//   }
//
// }