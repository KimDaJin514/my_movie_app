part of 'people_detail_screen.dart';

class _FilmographyView extends StatelessWidget {
  final List<MovieVo> movies;

  const _FilmographyView({required this.movies});

  @override
  Widget build(BuildContext context) {
    final double posterWidth = (MediaQuery.of(context).size.width - 66) / 3;
    return Visibility(
      visible: movies.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '필모그래피',
            style: display.copyWith(color: white),
          ),
          const SizedBox(height: 12),
          ListView.builder(
            shrinkWrap: true,
            itemCount: movies.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final MovieVo movieVo = movies[index];
              return _movieItemView(
                posterWidth: posterWidth,
                movieVo: movieVo,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _movieItemView({
    required double posterWidth,
    required MovieVo movieVo,
  }) {
    return Builder(
      builder: (context) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            context.pushRoute(MovieDetailRoute(movieId: movieVo.id));
          },
          child: KeepAliveView(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: gray700),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: posterWidth * 1.4,
                child: Row(
                  children: [
                    PosterView(
                      imagePath: movieVo.posterPath,
                      widthConfig: SizeConfig.instance.original,
                      height: posterWidth * 1.4,
                      width: posterWidth,
                    ),
                    const SizedBox(width: 10),
                    _movieInfoView(movieVo: movieVo),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }

  Widget _movieInfoView({required MovieVo movieVo}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              movieVo.title,
              style: h3.copyWith(color: gray300),
            ),
            Text(
              movieVo.releaseDate,
              style: labelBold.copyWith(color: gray500),
            ),
            Visibility(
              visible: movieVo.character.isNotEmpty,
              child: Text(
                '${movieVo.character}역',
                style: labelBold.copyWith(color: gray500),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: yellow500,
                  size: 15,
                ),
                const SizedBox(width: 2),
                Text(
                  movieVo.voteAverage.toStringAsFixed(1),
                  style: subtitle4.copyWith(color: white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
