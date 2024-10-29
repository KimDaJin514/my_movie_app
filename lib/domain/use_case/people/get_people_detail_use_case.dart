import 'package:my_movie_app/domain/domain.dart';

class GetPeopleDetailUseCase {
  final PeopleRepository _peopleRepository;

  GetPeopleDetailUseCase({
    required PeopleRepository peopleRepository,
  }) : _peopleRepository = peopleRepository;

  Future<PersonDto> call({
    required String language,
    required int id,
  }) async {
    return await _peopleRepository.getPeopleDetail(
      language: language,
      id: id,
    );
  }
}
