import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_movie_app/config.dart';
import 'package:my_movie_app/presentation/style/colors.dart';

class PosterView extends StatefulWidget {
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
  State<PosterView> createState() => _PosterViewState();
}

class _PosterViewState extends State<PosterView> with AutomaticKeepAliveClientMixin<PosterView> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(
      children: [
        CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: '${Config.instance.imageUrl}${widget.width}${widget.imagePath}',
          height: widget.height,
        ),
        Visibility(
          visible: widget.hasDim,
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

  @override
  bool get wantKeepAlive => true;
}
