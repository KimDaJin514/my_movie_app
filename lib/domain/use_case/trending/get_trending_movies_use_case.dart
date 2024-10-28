import 'package:my_movie_app/domain/domain.dart';

class GetTrendingMoviesUseCase {
  final TrendingRepository _trendingRepository;

  GetTrendingMoviesUseCase({
    required TrendingRepository trendingRepository,
  }) : _trendingRepository = trendingRepository;

  Future<PagingDto<MovieDto>> call({
    required String language,
    required String timeWindow,
    required int page,
  }) async {
    return await _trendingRepository.getTrendingMovies(
      language: language,
      timeWindow: timeWindow,
      page: page,
    );
  }
}
