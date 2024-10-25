part of 'movie_detail_screen.dart';

class _SubMovieListView extends StatelessWidget {
  final String title;
  final List<MovieVo> movies;

  const _SubMovieListView({
    required this.title,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    final double posterWidth = (MediaQuery.of(context).size.width - 66) / 3;
    return Visibility(
      visible: movies.isNotEmpty,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: display.copyWith(color: white),
              ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '더보기',
                    style: subtitle4.copyWith(color: gray200),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 13,
            runSpacing: 23,
            children: movies.take(6).map((movieVo) => SizedBox(
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
            )).toList(),
          )
        ],
      ),
    );
  }
}
