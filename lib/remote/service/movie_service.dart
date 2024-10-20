import 'package:dio/dio.dart';
import 'package:my_movie_app/data/model/movie_response.dart';
import 'package:my_movie_app/data/model/paging/paging_response.dart';
import 'package:my_movie_app/domain/model/movie_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_service.g.dart';

@RestApi()
abstract class MovieService {
  factory MovieService(Dio dio, {String baseUrl}) = _MovieService;

  /// 인기 영화 조회
  @GET('popular')
  Future<PagingResponse<MovieResponse, MovieDto>> getPopularMovies({
    @Query('language') required String language,
    @Query('page') required int page,
  });

  /// 현재 상영중인 영화 조회
  @GET('now_playing')
  Future<PagingResponse<MovieResponse, MovieDto>> getNowPlayingMovies({
    @Query('language') required String language,
    @Query('page') required int page,
  });

  /// 평점 좋은 영화 조회
  @GET('top_rated')
  Future<PagingResponse<MovieResponse, MovieDto>> getTopRatedMovies({
    @Query('language') required String language,
    @Query('page') required int page,
  });
}
