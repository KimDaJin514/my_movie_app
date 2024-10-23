import 'package:my_movie_app/domain/model/person/credits_dto.dart';
import 'package:my_movie_app/domain/repository/movie_repository.dart';

class GetMovieCreditsUseCase {
  final MovieRepository _movieRepository;

  GetMovieCreditsUseCase({
    required MovieRepository movieRepository,
  }) : _movieRepository = movieRepository;

  Future<CreditsDto> call({
    required String language,
    required int movieId,
  }) async {
    return await _movieRepository.getMovieCredits(
      language: language,
      movieId: movieId,
    );
  }
}
