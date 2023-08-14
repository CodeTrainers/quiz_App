class Video {
  late final String id, title, thumbnail,channelTitle;

  Video({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.channelTitle
  });

  factory Video.fromMap(Map<String, dynamic> snippet){
    return Video(
        id: snippet['resourceId']['videoId'],
        title: snippet['title'],
        thumbnail: snippet['thumbnails']['high']['url'],
        channelTitle: snippet['channelTitle']
    );
  }

}

