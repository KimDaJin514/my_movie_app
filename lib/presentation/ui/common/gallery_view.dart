import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_movie_app/config/config.dart';
import 'package:my_movie_app/presentation/presentation.dart';
import 'package:my_movie_app/presentation/router/app_router.gr.dart';

class GalleryView extends StatelessWidget {
  final List<PosterVo> gallery;
  final bool isMovie;

  const GalleryView({
    super.key,
    required this.gallery,
    this.isMovie = true,
  });

  @override
  Widget build(BuildContext context) {
    final itemWidth = MediaQuery.of(context).size.width / 2;
    return Visibility(
      visible: gallery.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isMovie ? '갤러리' : '이미지',
            style: display.copyWith(color: white),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: isMovie ? itemWidth * 0.6 : itemWidth / 0.67,
            child: ListView.separated(
              itemCount: gallery.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final PosterVo posterVo = gallery[index];
                return _galleryItemView(
                  posterVo: posterVo,
                  index: index,
                  width: itemWidth,
                );
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
    required double width,
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
                    : SizeConfig.instance.poster342,
                height: isMovie
                    ? width * posterVo.aspectRatio
                    : width / posterVo.aspectRatio,
                width: width,
              ),
            ),
          ),
        );
      },
    );
  }
}
