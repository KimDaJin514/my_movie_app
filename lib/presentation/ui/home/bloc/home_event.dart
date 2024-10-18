part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getPopularMovies({
    required bool isRefresh,
  }) = GetPopularMovies;

  const factory HomeEvent.getNowPlayingMovies({
    required bool isRefresh,
  }) = GetNowPlayingMovies;
}
