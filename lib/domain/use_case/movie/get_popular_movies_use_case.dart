import 'package:my_movie_app/domain/domain.dart';

class GetPopularMoviesUseCase {
  final MovieRepository _movieRepository;

  GetPopularMoviesUseCase({
    required MovieRepository movieRepository,
  }) : _movieRepository = movieRepository;

  Future<PagingDto<MovieDto>> call({
    required String language,
    required int page,
  }) async {
    return await _movieRepository.getPopularMovies(
      language: language,
      page: page,
    );
  }
}
