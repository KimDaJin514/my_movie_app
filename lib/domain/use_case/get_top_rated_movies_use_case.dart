import 'package:my_movie_app/domain/domain.dart';

class GetTopRatedMoviesUseCase {
  final MovieRepository _movieRepository;

  GetTopRatedMoviesUseCase({
    required MovieRepository movieRepository,
  }) : _movieRepository = movieRepository;

  Future<PagingDto<MovieDto>> call({
    required String language,
    required int page,
  }) async {
    return await _movieRepository.getTopRatedMovies(
      language: language,
      page: page,
    );
  }
}
