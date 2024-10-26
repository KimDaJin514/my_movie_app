import 'package:my_movie_app/domain/domain.dart';

class GetNowPlayingMoviesUseCase {
  final MovieRepository _movieRepository;

  GetNowPlayingMoviesUseCase({
    required MovieRepository movieRepository,
  }) : _movieRepository = movieRepository;

  Future<PagingDto<MovieDto>> call({
    required String language,
    required int page,
  }) async {
    return await _movieRepository.getNowPlayingMovies(
      language: language,
      page: page,
    );
  }
}
