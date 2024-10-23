part of 'movie_detail_bloc.dart';

@freezed
class MovieDetailEvent with _$MovieDetailEvent {
  const factory MovieDetailEvent.getMovieDetail({
    required int movieId,
  }) = GetMovieDetail;

  const factory MovieDetailEvent.getMovieCredits({
    required int movieId,
  }) = GetMovieCredits;
}
