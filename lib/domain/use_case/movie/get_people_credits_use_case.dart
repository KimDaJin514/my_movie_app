import 'package:my_movie_app/domain/domain.dart';

class GetPeopleCreditsUseCase {
  final MovieRepository _movieRepository;

  GetPeopleCreditsUseCase({
    required MovieRepository movieRepository,
  }) : _movieRepository = movieRepository;

  Future<CreditsDto> call({
    required String language,
    required int movieId,
  }) async {
    return await _movieRepository.getPeopleCredits(
      language: language,
      movieId: movieId,
    );
  }
}
