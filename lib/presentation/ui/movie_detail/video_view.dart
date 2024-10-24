part of 'movie_detail_screen.dart';

class VideoView extends StatelessWidget {
  final List<VideoVo> videos;
  const VideoView({super.key, required this.videos});

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
          SizedBox(
            height: 130,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final VideoVo videoVo = videos[index];
                return KeepAliveView(
                  // child: Container(
                  //   clipBehavior: Clip.hardEdge,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   child: PosterView(
                  //     imagePath: videoVo.filePath,
                  //     widthConfig: SizeConfig.instance.original,
                  //     height: 130,
                  //     width: 170,
                  //   ),
                  // ),
                  child: Container(),
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
}
