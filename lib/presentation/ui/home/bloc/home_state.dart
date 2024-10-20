part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required List<MovieVo> popularMovies,
    required PagingVo<MovieVo> nowPlayingMoviePaging,
    required PagingVo<MovieVo> topRatedMoviePaging,
  }) = _HomeState;

  factory HomeState.init() => HomeState(
        popularMovies: List.empty(),
        nowPlayingMoviePaging: PagingVo.init(),
        topRatedMoviePaging: PagingVo.init(),
      );
}
