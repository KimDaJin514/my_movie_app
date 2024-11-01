import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';

class PeopleRepositoryImpl extends PeopleRepository {
  final PeopleDataSource _peopleDataSource;

  PeopleRepositoryImpl({
    required PeopleDataSource peopleDataSource,
  }) : _peopleDataSource = peopleDataSource;

  @override
  Future<PersonDto> getPeopleDetail({
    required String language,
    required int id,
  }) =>
      _peopleDataSource.getPeopleDetail(
        language: language,
        id: id,
      );

  @override
  Future<ExternalIdDto> getSnsAccount({
    required int id,
  }) =>
      _peopleDataSource.getSnsAccount(id: id);

  @override
  Future<PersonDto> getPersonImage({required int id}) =>
      _peopleDataSource.getPersonImage(id: id);

  @override
  Future<MovieCreditsDto> getMovieCredits({
    required String language,
    required int id,
  }) =>
      _peopleDataSource.getMovieCredits(language: language, id: id);
}
