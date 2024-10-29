import 'package:dio/dio.dart';
import 'package:my_movie_app/data/model/movie/video_list_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'movie_service.g.dart';

@RestApi()
abstract class MovieService {
  factory MovieService(Dio dio, {String baseUrl}) = _MovieService;

  /// 인기 영화 조회
  @GET('movie/popular')
  Future<PagingResponse<MovieResponse, MovieDto>> getPopularMovies({
    @Query('language') required String language,
    @Query('page') required int page,
  });

  /// 현재 상영중인 영화 조회
  @GET('movie/now_playing')
  Future<PagingResponse<MovieResponse, MovieDto>> getNowPlayingMovies({
    @Query('language') required String language,
    @Query('page') required int page,
  });

  /// 평점 좋은 영화 조회
  @GET('movie/top_rated')
  Future<PagingResponse<MovieResponse, MovieDto>> getTopRatedMovies({
    @Query('language') required String language,
    @Query('page') required int page,
  });

  /// 개봉 예정 영화 조회
  @GET('movie/upcoming')
  Future<PagingResponse<MovieResponse, MovieDto>> getUpcomingMovies({
    @Query('language') required String language,
    @Query('page') required int page,
  });

  /// 영화 상세 조회
  @GET('movie/{movieId}')
  Future<MovieResponse> getMovieDetail({
    @Query('language') required String language,
    @Path('movieId') required int movieId,
  });

  /// 영화 크레딧 조회
  @GET('movie/{movieId}/credits')
  Future<CreditsResponse> getPeopleCredits({
    @Query('language') required String language,
    @Path('movieId') required int movieId,
  });

  /// 영화 이미지 조회
  @GET('movie/{movieId}/images')
  Future<GalleryResponse> getMovieGallery({
    @Query('language') required String language,
    @Query('include_image_language') required String includeImageLanguage,
    @Path('movieId') required int movieId,
  });

  /// 영화 영상 조회
  @GET('movie/{movieId}/videos')
  Future<VideoListResponse> getMovieVideos({
    @Query('language') required String language,
    @Path('movieId') required int movieId,
  });

  /// 비슷한 영화 조회
  @GET('movie/{movieId}/similar')
  Future<PagingResponse<MovieResponse, MovieDto>> getSimilarMovies({
    @Query('language') required String language,
    @Query('page') required int page,
    @Path('movieId') required int movieId,
  });

  /// 추천 영화 조회
  @GET('movie/{movieId}/recommendations')
  Future<PagingResponse<MovieResponse, MovieDto>> getRecommendationMovies({
    @Query('language') required String language,
    @Query('page') required int page,
    @Path('movieId') required int movieId,
  });
}
