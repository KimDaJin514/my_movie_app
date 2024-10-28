import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_movie_app/config/config.dart';
import 'package:my_movie_app/presentation/presentation.dart';

class ProfileImageView extends StatelessWidget {
  final PersonVo personVo;
  final double width;

  const ProfileImageView({
    super.key,
    required this.personVo,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(shape: BoxShape.circle, color: gray700),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: '${Config.instance.imageUrl}w185${personVo.profilePath}',
        width: width,
        memCacheWidth: width.cacheSize(context),
        errorWidget: (_, __, ___) => _defaultIcon(),
        placeholder: (_, __) => _defaultIcon(),
      ),
    );
  }

  Widget _defaultIcon() {
    return Icon(
      Icons.person,
      color: gray900,
      size: width / 2,
    );
  }
}
