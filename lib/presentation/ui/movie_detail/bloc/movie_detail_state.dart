part of 'movie_detail_bloc.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  factory MovieDetailState({
    required MovieVo movieVo,
  }) = _HomeState;

  factory MovieDetailState.init() => MovieDetailState(
    movieVo: MovieVo.init(),
  );
}
