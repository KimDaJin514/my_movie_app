import 'package:my_movie_app/domain/domain.dart';

abstract class TrendingRepository {
  Future<PagingDto<MovieDto>> getTrendingMovies({
    required String language,
    required String timeWindow,
    required int page,
  });

  Future<PagingDto<PersonDto>> getTrendingActors({
    required String language,
    required String timeWindow,
    required int page,
  });
}
