import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:my_movie_app/data/data.dart';

part 'people_service.g.dart';

@RestApi()
abstract class PeopleService {
  factory PeopleService(Dio dio, {String baseUrl}) = _PeopleService;

  /// 인물 상세 조회
  @GET('person/{id}')
  Future<PersonResponse> getPeopleDetail({
    @Query('language') required String language,
    @Path('id') required int id,
  });

  /// sns 계정 조회
  @GET('person/{id}/external_ids')
  Future<ExternalIdResponse> getSnsAccount({
    @Path('id') required int id,
  });

  /// 인물 이미지 조회
  @GET('person/{id}/images')
  Future<PersonResponse> getPersonImage({
    @Path('id') required int id,
  });
}
