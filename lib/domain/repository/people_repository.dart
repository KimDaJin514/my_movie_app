import 'package:my_movie_app/domain/domain.dart';

abstract class PeopleRepository {
  Future<PersonDto> getPeopleDetail({
    required String language,
    required int id,
  });

  Future<ExternalIdDto> getSnsAccount({
    required int id,
  });
}
