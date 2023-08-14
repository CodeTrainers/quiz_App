// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'package:newproj/Models/channels_model.dart';
// import 'package:newproj/Models/vidModel.dart';
// import 'package:newproj/Utilities/Keys.dart';
//
// class APIService {
//   APIService._instantiate();
//
//   static final APIService instance = APIService._instantiate();
//
//   final String baseUrl = 'www.googleapis.com';
//   String nextPageToken = '';
//
//   Future<Channel> fetchChannel({required String channelId}) async{
//     Map<String, String> parameters = {
//       'part': 'snippet, contentDetails, statistics',
//       'id': channelId,
//       'key':API_KEY,
//     };
//
//     Uri uri = Uri.https(
//         baseUrl,
//         'youtube/v3/channels',
//         parameters,
//     );
//
//     Map<String, String> headers = {
//       HttpHeaders.contentTypeHeader: 'application/json',
//     };
//
//     //Get Channel
//     var response = await http.get(uri, headers: headers);
//     if(response.statusCode == 200){
//       Map<String, dynamic> date = json.decode(response.body)['items'][0];
//       Channel channel = Channel.fromMap(date);
//
//       //fetch first batch of videos from uploads playlist
//       channel.videos = await fetchVideosfromPlaylist(
//         playlistId: channel.uploadPlaylistId,
//       );
//       return channel;
//     }else{
//       throw json.decode(response.body)['error']['message'];
//     }
//
//   }
//
//   Future<List<Video>> fetchVideosfromPlaylist ({required String playlistId}) async{
//     Map<String, String> parameters = {
//       'part': 'snippet',
//       'playlistId': playlistId,
//       'maxResults': '8',
//       'pageToken': nextPageToken,
//       'key': API_KEY,
//     };
//
//     Uri uri = Uri.https(
//       baseUrl,
//       'youtube/v3/playlistItems',
//       parameters,
//     );
//
//     Map<String, String> headers = {
//       HttpHeaders.contentTypeHeader: 'application/json',
//     };
//
//     //Get playlist videos
//     var response = await http.get(uri, headers: headers);
//     if(response.statusCode == 200){
//       var data = json.decode(response.body);
//       nextPageToken = data['nextPageToken'] ?? '';
//       List<dynamic> videosJson = data['items'];
//
//       //Fetch first 8 videos
//       List<Video> videos = [];
//       videosJson.forEach(
//             (json) => videos.add(
//               Video.fromMap(json['snippet']),
//              ),
//       );
//
//       return videos;
//
//     }else{
//       throw json.decode(response.body)['error']['message'];
//     }
//   }
//
// }