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
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final VideoVo videoVo = videos[index];
                final String thumbNailUrl = _getYoutubeThumbnail(
                  videoUrl: '${Config.instance.youtubeUrl}${videoVo.key}',
                );
                return KeepAliveView(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CachedNetworkImage(
                        imageUrl: thumbNailUrl,
                        height: widgetHeight,
                        memCacheHeight: widgetHeight.cacheSize(context),
                        errorWidget: (_, __, ___) => const ShimmerWidget(
                          height: widgetHeight,
                        ),
                        placeholder: (_, __) => const ShimmerWidget(
                          height: widgetHeight,
                        ),
                      ),
                      SvgPicture.asset(
                        playCircleIcon,
                        height: widgetHeight / 2.2,
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (_, __) => const SizedBox(width: 10),
              itemCount: videos.length,
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }

  String _getYoutubeThumbnail({required String videoUrl}) {
    final Uri? uri = Uri.tryParse(videoUrl);
    if (uri == null) {
      return '';
    }
    return 'https://img.youtube.com/vi/${uri.queryParameters['v']}/0.jpg';
  }
}
