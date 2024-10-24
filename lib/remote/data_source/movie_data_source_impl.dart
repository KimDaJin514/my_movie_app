import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/remote/remote.dart';

class MovieDataSourceImpl extends MovieDataSource {
  final MovieService _movieService;

  MovieDataSourceImpl({
    required MovieService movieService,
  }) : _movieService = movieService;

  @override
  Future<PagingDto<MovieDto>> getPopularMovies({
    required String language,
    required int page,
  }) async {
    final response = await _movieService.getPopularMovies(
      language: language,
      page: page,
    );
    return response.mapper();
  }

  @override
  Future<PagingDto<MovieDto>> getNowPlayingMovies({
    required String language,
    required int page,
  }) async {
    final response = await _movieService.getNowPlayingMovies(
      language: language,
      page: page,
    );
    return response.mapper();
  }

  @override
  Future<PagingDto<MovieDto>> getTopRatedMovies({
    required String language,
    required int page,
  }) async {
    final response = await _movieService.getTopRatedMovies(
      language: language,
      page: page,
    );
    return response.mapper();
  }

  @override
  Future<PagingDto<MovieDto>> getUpcomingMovies({
    required String language,
    required int page,
  }) async {
    final response = await _movieService.getUpcomingMovies(
      language: language,
      page: page,
    );
    return response.mapper();
  }

  @override
  Future<MovieDto> getMovieDetail({
    required int movieId,
    required String language,
  }) async {
    final response = await _movieService.getMovieDetail(
      movieId: movieId,
      language: language,
    );
    return response.mapper();
  }

  @override
  Future<CreditsDto> getMovieCredits({
    required int movieId,
    required String language,
  }) async {
    final response = await _movieService.getMovieCredits(
      movieId: movieId,
      language: language,
    );
    return response.mapper();
  }

  @override
  Future<GalleryDto> getMovieGallery({
    required int movieId,
    required String language,
    required String includeImageLanguage,
  }) async {
    final response = await _movieService.getMovieGallery(
      movieId: movieId,
      language: language,
      includeImageLanguage: includeImageLanguage,
    );
    return response.mapper();
  }
}
