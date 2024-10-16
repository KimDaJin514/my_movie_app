import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_movie_app/config.dart';
import 'package:my_movie_app/presentation/style/colors.dart';

class PosterView extends StatelessWidget {
  final String imagePath;
  final String width;
  final double? height;
  final bool hasDim;

  const PosterView({
    super.key,
    required this.imagePath,
    required this.width,
    this.height,
    this.hasDim = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          fit: BoxFit.fitHeight,
          imageUrl: '${Config.instance.imageUrl}$width$imagePath',
          height: height,
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
