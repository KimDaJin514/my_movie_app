import 'package:my_movie_app/domain/model/movie_dto.dart';
import 'package:my_movie_app/domain/model/paging/paging_dto.dart';
import 'package:my_movie_app/domain/repository/movie_repository.dart';

class GetUpcomingMoviesUseCase {
  final MovieRepository _movieRepository;

  GetUpcomingMoviesUseCase({
    required MovieRepository movieRepository,
  }) : _movieRepository = movieRepository;

  Future<PagingDto<MovieDto>> call({
    required String language,
    required int page,
  }) async {
    return await _movieRepository.getUpcomingMovies(
      language: language,
      page: page,
    );
  }
}
