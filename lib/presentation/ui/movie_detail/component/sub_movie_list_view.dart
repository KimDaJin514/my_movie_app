part of '../movie_detail_screen.dart';

class _SubMovieListView extends StatelessWidget {
  final String title;
  final int movieId;
  final PagingVo<MovieVo> moviePaging;

  const _SubMovieListView({
    required this.title,
    required this.movieId,
    required this.moviePaging,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: moviePaging.results.isNotEmpty,
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
                onTap: () {
                  context.pushRoute(
                    MovieListRoute(appBarTitle: title, movieId: movieId),
                  );
                },
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
            children: moviePaging.results.take(6).map((movieVo) {
              return MovieListItemView(
                movieVo: movieVo,
              );
            }).toList(),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
