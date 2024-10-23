import 'package:my_movie_app/domain/model/movie/movie_dto.dart';
import 'package:my_movie_app/domain/model/paging/paging_dto.dart';
import 'package:my_movie_app/domain/repository/movie_repository.dart';

class GetTopRatedMoviesUseCase {
  final MovieRepository _movieRepository;

  GetTopRatedMoviesUseCase({
    required MovieRepository movieRepository,
  }) : _movieRepository = movieRepository;

  Future<PagingDto<MovieDto>> call({
    required String language,
    required int page,
  }) async {
    return await _movieRepository.getTopRatedMovies(
      language: language,
      page: page,
    );
  }
}
