part of '../movie_detail_screen.dart';

class _GalleryView extends StatelessWidget {
  final List<PosterVo> gallery;

  const _GalleryView({required this.gallery});

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
              itemCount: gallery.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final PosterVo posterVo = gallery[index];
                return _galleryItemView(posterVo: posterVo, index: index);
              },
              separatorBuilder: (_, __) => const SizedBox(width: 10),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget _galleryItemView({
    required PosterVo posterVo,
    required int index,
  }) {
    return Builder(
      builder: (context) {
        return GestureDetector(
          onTap: () {
            context.pushRoute(
              ImageDetailRoute(gallery: gallery, selectedIndex: index),
            );
          },
          child: KeepAliveView(
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: PosterView(
                imagePath: posterVo.filePath,
                widthConfig: posterVo.aspectRatio > 1
                    ? SizeConfig.instance.backDrop300
                    : SizeConfig.instance.poster185,
                height: 130,
                width: 185,
              ),
            ),
          ),
        );
      },
    );
  }
}
