import 'package:my_movie_app/data/data_source/movie_data_source.dart';
import 'package:my_movie_app/domain/model/movie_dto.dart';
import 'package:my_movie_app/domain/model/paging/paging_dto.dart';
import 'package:my_movie_app/domain/repository/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieDataSource _movieDataSource;

  MovieRepositoryImpl({
    required MovieDataSource movieDataSource,
  }) : _movieDataSource = movieDataSource;

  @override
  Future<PagingDto<MovieDto>> getPopularMovies({
    required String language,
    required int page,
  }) =>
      _movieDataSource.getPopularMovies(
        language: language,
        page: page,
      );
}