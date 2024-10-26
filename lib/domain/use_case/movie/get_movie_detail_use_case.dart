import 'package:my_movie_app/domain/domain.dart';

class GetMovieDetailUseCase {
  final MovieRepository _movieRepository;

  GetMovieDetailUseCase({
    required MovieRepository movieRepository,
  }) : _movieRepository = movieRepository;

  Future<MovieDto> call({
    required String language,
    required int movieId,
  }) async {
    return await _movieRepository.getMovieDetail(
      language: language,
      movieId: movieId,
    );
  }
}
