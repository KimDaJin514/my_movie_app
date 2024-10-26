import 'package:my_movie_app/domain/domain.dart';

class GetMovieGalleryUseCase {
  final MovieRepository _movieRepository;

  GetMovieGalleryUseCase({
    required MovieRepository movieRepository,
  }) : _movieRepository = movieRepository;

  Future<GalleryDto> call({
    required String language,
    required String includeImageLanguage,
    required int movieId,
  }) async {
    return await _movieRepository.getMovieGallery(
      includeImageLanguage: includeImageLanguage,
      language: language,
      movieId: movieId,
    );
  }
}
