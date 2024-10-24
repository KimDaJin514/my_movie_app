part of 'movie_detail_bloc.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  factory MovieDetailState({
    required MovieVo movieVo,
    required List<PersonVo> casts,
    required PersonVo director,
    required List<PosterVo> gallery,
    required List<VideoVo> videos,
  }) = _HomeState;

  factory MovieDetailState.init() => MovieDetailState(
        movieVo: MovieVo.init(),
        casts: List.empty(),
        director: PersonVo.init(),
        gallery: List.empty(),
        videos: List.empty(),
      );
}
