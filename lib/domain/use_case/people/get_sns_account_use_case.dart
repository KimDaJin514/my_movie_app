import 'package:my_movie_app/domain/domain.dart';

class GetSnsAccountUseCase {
  final PeopleRepository _peopleRepository;

  GetSnsAccountUseCase({
    required PeopleRepository peopleRepository,
  }) : _peopleRepository = peopleRepository;

  Future<ExternalIdDto> call({
    required int id,
  }) async {
    return await _peopleRepository.getSnsAccount(id: id);
  }
}
