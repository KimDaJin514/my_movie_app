enum VideoType {
  teaser(
    type: 'Teaser',
  ),
  trailer(
    type: 'Trailer',
  );

  final String type;

  const VideoType({required this.type});

  static VideoType mapVideoType({
    required String type,
  }) {
    return VideoType.values.firstWhere(
      (videoType) => videoType.type == type,
      orElse: () => VideoType.teaser,
    );
  }
}
