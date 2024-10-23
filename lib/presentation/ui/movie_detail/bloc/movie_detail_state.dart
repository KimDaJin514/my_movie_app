part of 'movie_detail_bloc.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  factory MovieDetailState({
    required MovieVo movieVo,
    required CreditsVo credits,
  }) = _HomeState;

  factory MovieDetailState.init() => MovieDetailState(
        movieVo: MovieVo.init(),
        credits: CreditsVo.init(),
      );
}
