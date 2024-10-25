enum VideoType {
  teaser(
    type: 'Teaser',
    text: '티저',
  ),
  trailer(
    type: 'Trailer',
    text: '트레일러',
  );

  final String type;
  final String text;

  const VideoType({
    required this.type,
    required this.text,
  });

  static VideoType mapVideoType({
    required String type,
  }) {
    return VideoType.values.firstWhere(
      (videoType) => videoType.type == type,
      orElse: () => VideoType.teaser,
    );
  }
}
