part of 'movie_detail_bloc.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  factory MovieDetailState({
    required MovieVo movieVo,
    required List<PersonVo> casts,
    required PersonVo director,
    required List<PosterVo> gallery,
    required List<VideoVo> videos,
    required PagingVo<MovieVo> similarMoviePaging,
    required PagingVo<MovieVo> recommendationMoviePaging,
  }) = _HomeState;

  factory MovieDetailState.init() => MovieDetailState(
        movieVo: MovieVo.init(),
        casts: List.empty(),
        director: PersonVo.init(),
        gallery: List.empty(),
        videos: List.empty(),
        similarMoviePaging: PagingVo.init(),
        recommendationMoviePaging: PagingVo.init(),
      );
}
