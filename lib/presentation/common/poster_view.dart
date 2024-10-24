import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_movie_app/config/config.dart';
import 'package:my_movie_app/presentation/style/colors.dart';
import 'package:my_movie_app/presentation/ui/common/shimmer_widget.dart';
import 'package:my_movie_app/presentation/util/image_util.dart';

class PosterView extends StatelessWidget {
  final String imagePath;
  final String widthConfig;
  final double height;
  final double width;
  final bool hasDim;

  const PosterView({
    super.key,
    required this.imagePath,
    required this.widthConfig,
    required this.height,
    required this.width,
    this.hasDim = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: '${Config.instance.imageUrl}$widthConfig$imagePath',
          height: height,
          width: width,
          // memCacheHeight: height.cacheSize(context),
          memCacheWidth: width.cacheSize(context),
          errorWidget: (_, __, ___) => ShimmerWidget(height: height),
          placeholder: (_, __) => ShimmerWidget(height: height),
        ),
        Visibility(
          visible: hasDim,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  gray950.withOpacity(1),
                ],
                begin: Alignment.center,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
