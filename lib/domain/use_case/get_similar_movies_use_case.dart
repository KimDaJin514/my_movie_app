import 'package:my_movie_app/domain/domain.dart';

class GetSimilarMoviesUseCase {
  final MovieRepository _movieRepository;

  GetSimilarMoviesUseCase({
    required MovieRepository movieRepository,
  }) : _movieRepository = movieRepository;

  Future<PagingDto<MovieDto>> call({
    required int movieId,
    required String language,
    required int page,
  }) async {
    return await _movieRepository.getSimilarMovies(
      movieId: movieId,
      language: language,
      page: page,
    );
  }
}
