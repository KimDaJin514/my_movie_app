import 'package:my_movie_app/domain/model/movie/movie_dto.dart';
import 'package:my_movie_app/domain/model/paging/paging_dto.dart';

abstract class MovieDataSource {
  Future<PagingDto<MovieDto>> getPopularMovies({
    required String language,
    required int page,
  });

  Future<PagingDto<MovieDto>> getNowPlayingMovies({
    required String language,
    required int page,
  });

  Future<PagingDto<MovieDto>> getTopRatedMovies({
    required String language,
    required int page,
  });

  Future<PagingDto<MovieDto>> getUpcomingMovies({
    required String language,
    required int page,
  });

  Future<MovieDto> getMovieDetail({
    required int movieId,
    required String language,
  });
}
