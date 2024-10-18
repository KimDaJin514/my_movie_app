part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required PagingVo<MovieVo> popularMoviePaging,
    required PagingVo<MovieVo> nowPlayingMoviePaging,
  }) = _HomeState;

  factory HomeState.init() => HomeState(
        popularMoviePaging: PagingVo.init(),
        nowPlayingMoviePaging: PagingVo.init(),
      );
}
