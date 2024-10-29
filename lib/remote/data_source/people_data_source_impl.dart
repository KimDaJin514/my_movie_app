import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/remote/remote.dart';

class PeopleDataSourceImpl extends PeopleDataSource {
  final PeopleService _peopleService;

  PeopleDataSourceImpl({
    required PeopleService peopleService,
  }) : _peopleService = peopleService;

  @override
  Future<PersonDto> getPeopleDetail({
    required String language,
    required int id,
  }) async {
    final response = await _peopleService.getPeopleDetail(
      language: language,
      id: id,
    );
    return response.mapper();
  }

  @override
  Future<ExternalIdDto> getSnsAccount({
    required int id,
  }) async {
    final response = await _peopleService.getSnsAccount(
      id: id,
    );
    return response.mapper();
  }

  @override
  Future<PersonDto> getPersonImage({required int id}) async {
    final response = await _peopleService.getPersonImage(
      id: id,
    );
    return response.mapper();
  }
}
