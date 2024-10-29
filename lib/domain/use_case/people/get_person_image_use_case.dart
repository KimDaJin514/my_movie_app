import 'package:my_movie_app/domain/domain.dart';

class GetPersonImageUseCase {
  final PeopleRepository _peopleRepository;

  GetPersonImageUseCase({
    required PeopleRepository peopleRepository,
  }) : _peopleRepository = peopleRepository;

  Future<PersonDto> call({
    required int id,
  }) async {
    return await _peopleRepository.getPersonImage(id: id);
  }
}
