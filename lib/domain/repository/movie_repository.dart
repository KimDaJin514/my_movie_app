import 'package:my_movie_app/domain/domain.dart';

abstract class MovieRepository {
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

  Future<CreditsDto> getMovieCredits({
    required int movieId,
    required String language,
  });

  Future<GalleryDto> getMovieGallery({
    required int movieId,
    required String language,
    required String includeImageLanguage,
  });
}
