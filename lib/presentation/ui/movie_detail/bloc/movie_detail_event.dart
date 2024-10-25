part of 'movie_detail_bloc.dart';

@freezed
class MovieDetailEvent with _$MovieDetailEvent {
  const factory MovieDetailEvent.getMovieDetail({
    required int movieId,
  }) = GetMovieDetail;

  const factory MovieDetailEvent.getMovieCredits({
    required int movieId,
  }) = GetMovieCredits;

  const factory MovieDetailEvent.getMovieGallery({
    required int movieId,
  }) = GetMovieGallery;

  const factory MovieDetailEvent.getMovieVideos({
    required int movieId,
  }) = GetMovieVideos;

  const factory MovieDetailEvent.getSimilarMovies({
    required bool isRefresh,
    required int movieId,
  }) = GetSimilarMovies;
}
