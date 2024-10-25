import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_movie_app/config/config.dart';
import 'package:my_movie_app/presentation/presentation.dart';
import 'package:my_movie_app/presentation/router/app_router.gr.dart';

class MovieListItemView extends StatelessWidget {
  final MovieVo movieVo;

  const MovieListItemView({
    super.key,
    required this.movieVo,
  });

  @override
  Widget build(BuildContext context) {
    final double posterWidth = (MediaQuery.of(context).size.width - 66) / 3;
    return GestureDetector(
      onTap: () {
        context.pushRoute(MovieDetailRoute(movieId: movieVo.id));
      },
      child: SizedBox(
        width: posterWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PosterView(
              imagePath: movieVo.posterPath,
              widthConfig: SizeConfig.instance.original,
              height: posterWidth * 1.5,
              width: posterWidth,
            ),
            const SizedBox(height: 3),
            Text(
              movieVo.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: body2XS.copyWith(color: gray200),
            ),
          ],
        ),
      ),
    );
  }
}
