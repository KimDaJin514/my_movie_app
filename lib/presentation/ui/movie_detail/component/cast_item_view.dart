import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_movie_app/config/config.dart';
import 'package:my_movie_app/presentation/common/keep_alive_view.dart';
import 'package:my_movie_app/presentation/model/person/person_vo.dart';
import 'package:my_movie_app/presentation/style/colors.dart';
import 'package:my_movie_app/presentation/style/fonts.dart';
import 'package:my_movie_app/presentation/util/image_util.dart';

class CastItemView extends StatelessWidget {
  final PersonVo personVo;
  final bool isDirector;
  final bool isDense;

  const CastItemView({
    super.key,
    required this.personVo,
    this.isDirector = false,
    this.isDense = true,
  });

  @override
  Widget build(BuildContext context) {
    return KeepAliveView(
      child: GestureDetector(
        onTap: () {

        },
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: isDense ? 10 : 15,
          ),
          child: Row(
            children: [
              Container(
                width: 52,
                height: 52,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: gray700,
                ),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: '${Config.instance.imageUrl}w185${personVo.profilePath}',
                  width: 52,
                  memCacheWidth: 52.cacheSize(context),
                  errorWidget: (_, __, ___) => const Icon(
                    Icons.person,
                    color: gray900,
                    size: 25,
                  ),
                  placeholder: (_, __) => const Icon(
                    Icons.person,
                    color: gray900,
                    size: 25,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      personVo.name,
                      style: h3.copyWith(color: gray100),
                    ),
                    Text(
                      isDirector ? '감독' : '${personVo.characterName}역',
                      style: labelBold.copyWith(color: gray400),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
