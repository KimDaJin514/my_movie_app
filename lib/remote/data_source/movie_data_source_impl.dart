import 'package:my_movie_app/data/data_source/movie_data_source.dart';
import 'package:my_movie_app/domain/model/movie_dto.dart';
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
}
