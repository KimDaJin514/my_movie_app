import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_movie_app/config/config.dart';
import 'package:my_movie_app/presentation/style/colors.dart';
import 'package:my_movie_app/presentation/util/image_util.dart';

class PosterView extends StatelessWidget {
  final String imagePath;
  final String widthConfig;
  final double? height;
  final bool hasDim;
  final double? width;

  const PosterView({
    super.key,
    required this.imagePath,
    required this.widthConfig,
    this.height,
    this.width,
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
          memCacheHeight: height?.cacheSize(context),
          memCacheWidth: width?.cacheSize(context),
          errorWidget: (context, string, _) => const Center(child: Text('error!!'),),
          placeholder: (context, string) => const Center(child: Text('placeholder!!'),),
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
