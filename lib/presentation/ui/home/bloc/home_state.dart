part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required PagingVo<MovieVo> moviePaging,
  }) = _HomeState;

  factory HomeState.init() => HomeState(
        moviePaging: PagingVo.init(),
      );
}
