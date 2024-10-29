import 'package:my_movie_app/domain/domain.dart';

class GetMovieCreditsUseCase {
  final PeopleRepository _peopleRepository;

  GetMovieCreditsUseCase({
    required PeopleRepository peopleRepository,
  }) : _peopleRepository = peopleRepository;

  Future<MovieCreditsDto> call({
    required String language,
    required int id,
  }) async {
    return await _peopleRepository.getMovieCredits(
      language: language,
      id: id,
    );
  }
}
