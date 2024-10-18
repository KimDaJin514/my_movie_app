import 'package:my_movie_app/domain/model/movie_dto.dart';
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
}
