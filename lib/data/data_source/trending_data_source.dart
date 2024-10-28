import 'package:my_movie_app/domain/domain.dart';

abstract class TrendingDataSource {
  Future<PagingDto<MovieDto>> getTrendingMovies({
    required String language,
    required String timeWindow,
    required int page,
  });
}
