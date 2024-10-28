import 'package:dio/dio.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:retrofit/retrofit.dart';
import 'package:my_movie_app/data/data.dart';

part 'trending_service.g.dart';

@RestApi()
abstract class TrendingService {
  factory TrendingService(Dio dio, {String baseUrl}) = _TrendingService;

  /// 트렌드 영화 조회
  @GET('trending/movie/{timeWindow}')
  Future<PagingResponse<MovieResponse, MovieDto>> getTrendingMovies({
    @Query('language') required String language,
    @Query('page') required int page,
    @Path('timeWindow') required String timeWindow,
  });
}
