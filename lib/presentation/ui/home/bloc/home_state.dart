part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required List<MovieVo> popularMovies,
    required PagingVo<MovieVo> nowPlayingMoviePaging,
    required PagingVo<MovieVo> topRatedMoviePaging,
    required PagingVo<MovieVo> trendingMoviePaging,
    required PagingVo<PersonVo> trendingActorPaging,
  }) = _HomeState;

  factory HomeState.init() => HomeState(
        popularMovies: List.empty(),
        nowPlayingMoviePaging: PagingVo.init(),
        topRatedMoviePaging: PagingVo.init(),
        trendingMoviePaging: PagingVo.init(),
        trendingActorPaging: PagingVo.init(),
      );
}
