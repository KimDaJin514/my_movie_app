import 'package:my_movie_app/data/data_source/movie_data_source.dart';
import 'package:my_movie_app/domain/model/movie/movie_dto.dart';
import 'package:my_movie_app/domain/model/paging/paging_dto.dart';
import 'package:my_movie_app/remote/service/movie_service.dart';

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
}
