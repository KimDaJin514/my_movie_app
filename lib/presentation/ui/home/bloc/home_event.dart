part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getPopularMovies() = GetPopularMovies;

  const factory HomeEvent.getNowPlayingMovies({
    required bool isRefresh,
  }) = GetNowPlayingMovies;

  const factory HomeEvent.getTopRatedMovies({
    required bool isRefresh,
  }) = GetTopRatedMovies;

  const factory HomeEvent.getTrendingMovies({
    required bool isRefresh,
  }) = GetTrendingMovies;

  const factory HomeEvent.getTrendingActors({
    required bool isRefresh,
  }) = GetTrendingActors;
}
