import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieDataSource _movieDataSource;

  MovieRepositoryImpl({
    required MovieDataSource movieDataSource,
  }) : _movieDataSource = movieDataSource;

  @override
  Future<PagingDto<MovieDto>> getPopularMovies({
    required String language,
    required int page,
    required bool includeAdult,
  }) =>
      _movieDataSource.getPopularMovies(
        language: language,
        page: page,
        includeAdult: includeAdult,
      );

  @override
  Future<PagingDto<MovieDto>> getNowPlayingMovies({
    required String language,
    required int page,
  }) =>
      _movieDataSource.getNowPlayingMovies(
        language: language,
        page: page,
      );

  @override
  Future<PagingDto<MovieDto>> getTopRatedMovies({
    required String language,
    required int page,
  }) =>
      _movieDataSource.getTopRatedMovies(
        language: language,
        page: page,
      );

  @override
  Future<PagingDto<MovieDto>> getUpcomingMovies({
    required String language,
    required int page,
  }) =>
      _movieDataSource.getUpcomingMovies(
        language: language,
        page: page,
      );

  @override
  Future<MovieDto> getMovieDetail({
    required int movieId,
    required String language,
  }) =>
      _movieDataSource.getMovieDetail(
        language: language,
        movieId: movieId,
      );

  @override
  Future<CreditsDto> getPeopleCredits({
    required int movieId,
    required String language,
  }) =>
      _movieDataSource.getPeopleCredits(
        language: language,
        movieId: movieId,
      );

  @override
  Future<GalleryDto> getMovieGallery({
    required int movieId,
    required String language,
    required String includeImageLanguage,
  }) =>
      _movieDataSource.getMovieGallery(
        movieId: movieId,
        language: language,
        includeImageLanguage: includeImageLanguage,
      );

  @override
  Future<VideoListDto> getMovieVideos({
    required int movieId,
    required String language,
  }) =>
      _movieDataSource.getMovieVideos(
        movieId: movieId,
        language: language,
      );

  @override
  Future<PagingDto<MovieDto>> getSimilarMovies({
    required int movieId,
    required String language,
    required int page,
  }) =>
      _movieDataSource.getSimilarMovies(
        movieId: movieId,
        language: language,
        page: page,
      );

  @override
  Future<PagingDto<MovieDto>> getRecommendationMovies({
    required int movieId,
    required String language,
    required int page,
  }) =>
      _movieDataSource.getRecommendationMovies(
        movieId: movieId,
        language: language,
        page: page,
      );
}
