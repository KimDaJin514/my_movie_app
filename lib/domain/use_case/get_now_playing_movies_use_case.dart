import 'package:my_movie_app/domain/model/movie_dto.dart';
import 'package:my_movie_app/domain/model/paging/paging_dto.dart';
import 'package:my_movie_app/domain/repository/movie_repository.dart';

class GetNowPlayingMoviesUseCase {
  final MovieRepository _movieRepository;

  GetNowPlayingMoviesUseCase({
    required MovieRepository movieRepository,
  }) : _movieRepository = movieRepository;

  Future<PagingDto<MovieDto>> call({
    required String language,
    required int page,
  }) async {
    return await _movieRepository.getNowPlayingMovies(
      language: language,
      page: page,
    );
  }
}
