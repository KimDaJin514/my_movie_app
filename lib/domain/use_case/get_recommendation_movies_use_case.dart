import 'package:my_movie_app/domain/domain.dart';

class GetRecommendationMoviesUseCase {
  final MovieRepository _movieRepository;

  GetRecommendationMoviesUseCase({
    required MovieRepository movieRepository,
  }) : _movieRepository = movieRepository;

  Future<PagingDto<MovieDto>> call({
    required int movieId,
    required String language,
    required int page,
  }) async {
    return await _movieRepository.getRecommendationMovies(
      movieId: movieId,
      language: language,
      page: page,
    );
  }
}
