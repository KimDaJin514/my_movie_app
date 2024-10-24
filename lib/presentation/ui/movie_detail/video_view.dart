part of 'movie_detail_screen.dart';

class VideoView extends StatelessWidget {
  final List<VideoVo> videos;

  const VideoView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    const double widgetHeight = 130;
    return Visibility(
      visible: videos.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '영상',
            style: display.copyWith(color: white),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: widgetHeight,
            child: ListView.separated(
              itemCount: videos.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final VideoVo videoVo = videos[index];
                final String videoUrl =
                    '${Config.instance.youtubeUrl}${videoVo.key}';
                final String thumbnailUrl = _getYoutubeThumbnail(
                  videoUrl: videoUrl,
                );
                return _videoItemView(
                  thumbnailUrl: thumbnailUrl,
                  videoUrl: videoUrl,
                  widgetHeight: widgetHeight,
                );
              },
              separatorBuilder: (_, __) => const SizedBox(width: 10),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }

  Widget _videoItemView({
    required String thumbnailUrl,
    required String videoUrl,
    required double widgetHeight,
  }) {
    return GestureDetector(
      onTap: () {
        _launchUrl(url: videoUrl);
      },
      child: KeepAliveView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Builder(
              builder: (context) {
                return CachedNetworkImage(
                  imageUrl: thumbnailUrl,
                  height: widgetHeight,
                  memCacheHeight: widgetHeight.cacheSize(context),
                  errorWidget: (_, __, ___) => ShimmerWidget(
                    height: widgetHeight,
                  ),
                  placeholder: (_, __) => ShimmerWidget(height: widgetHeight),
                );
              },
            ),
            SvgPicture.asset(playCircleIcon, height: widgetHeight / 2.2),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl({required String url}) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  String _getYoutubeThumbnail({required String videoUrl}) {
    final Uri? uri = Uri.tryParse(videoUrl);
    if (uri == null) {
      return '';
    }
    return 'https://img.youtube.com/vi/${uri.queryParameters['v']}/0.jpg';
  }
}
