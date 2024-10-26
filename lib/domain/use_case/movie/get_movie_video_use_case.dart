import 'package:my_movie_app/domain/domain.dart';

class GetMovieVideoUseCase {
  final MovieRepository _movieRepository;

  GetMovieVideoUseCase({
    required MovieRepository movieRepository,
  }) : _movieRepository = movieRepository;

  Future<VideoListDto> call({
    required String language,
    required int movieId,
  }) async {
    return await _movieRepository.getMovieVideos(
      language: language,
      movieId: movieId,
    );
  }
}
