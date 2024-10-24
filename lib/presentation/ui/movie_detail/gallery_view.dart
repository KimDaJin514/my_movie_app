part of 'movie_detail_screen.dart';

class GalleryView extends StatelessWidget {
  final List<PosterVo> gallery;

  const GalleryView({super.key, required this.gallery});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: gallery.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '갤러리',
            style: display.copyWith(color: white),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 130,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final PosterVo posterVo = gallery[index];
                return KeepAliveView(
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: PosterView(
                      imagePath: posterVo.filePath,
                      widthConfig: SizeConfig.instance.original,
                      height: 130,
                      width: 170,
                    ),
                  ),
                );
              },
              separatorBuilder: (_, __) => const SizedBox(width: 10),
              itemCount: gallery.length,
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
