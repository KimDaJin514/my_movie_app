part of '../movie_detail_screen.dart';

class _VideoView extends StatelessWidget {
  final List<VideoVo> videos;
  final double widgetHeight = 130;

  const _VideoView({required this.videos});

  @override
  Widget build(BuildContext context) {
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
          Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: videos
                        .map(
                          (videoVo) => _videoItemView(video: videoVo),
                        )
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget _videoItemView({
    required VideoVo video,
  }) {
    final String videoUrl = '${Config.instance.youtubeUrl}${video.key}';
    double widgetWidth = 0;

    final imageProvider = NetworkImage(
      _getYoutubeThumbnail(videoUrl: videoUrl),
    );
    final ImageStream stream = imageProvider.resolve(
      const ImageConfiguration(),
    );
    final ImageStreamListener listener = ImageStreamListener(
      (image, _) {
        double aspectRatio = image.image.width / image.image.height;
        widgetWidth = widgetHeight * aspectRatio;
      },
    );
    stream.addListener(listener);

    return GestureDetector(
      onTap: () {
        _launchUrl(url: videoUrl);
      },
      child: KeepAliveView(
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Builder(
                    builder: (context) {
                      return CachedNetworkImage(
                        imageUrl: _getYoutubeThumbnail(videoUrl: videoUrl),
                        height: widgetHeight,
                        width: widgetWidth,
                        memCacheHeight: widgetHeight.cacheSize(context),
                        memCacheWidth: widgetWidth.cacheSize(context),
                        errorWidget: (_, __, ___) => ShimmerWidget(
                          height: widgetHeight,
                        ),
                        placeholder: (_, __) => ShimmerWidget(
                          height: widgetHeight,
                        ),
                      );
                    },
                  ),
                  SvgPicture.asset(playCircleIcon, height: widgetHeight / 2.2),
                ],
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: widgetWidth,
                child: RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: video.isOfficial ? '[공식] ' : '',
                        style: labelBold.copyWith(color: gray200),
                      ),
                      TextSpan(
                        text: '${video.type.text} - ${video.name}',
                        style: body2XS.copyWith(color: white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
