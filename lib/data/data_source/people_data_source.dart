import 'package:my_movie_app/domain/domain.dart';

abstract class PeopleDataSource {
  Future<PersonDto> getPeopleDetail({
    required String language,
    required int id,
  });

  Future<ExternalIdDto> getSnsAccount({
    required int id,
  });

  Future<PersonDto> getPersonImage({
    required int id,
  });
}
