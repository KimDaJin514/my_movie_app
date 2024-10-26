import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:my_movie_app/config/config.dart';
import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/remote/remote.dart';
import 'presentation/router/app_router.dart';

final locator = GetIt.instance;

initLocator() {
  _appRouterModule();
  _networkModule();
  _movieModule();
}

_appRouterModule() {
  locator.registerLazySingleton(() => AppRouter());
}

_networkModule() {
  BaseOptions options = BaseOptions(
    baseUrl: Config.instance.movieUrl,
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  );
  final dio = Dio(options)..interceptors.add(HeaderInterceptor());
  dio.interceptors.add(
    LogInterceptor(requestBody: kDebugMode, responseBody: kDebugMode),
  );
  locator.registerLazySingleton(() => dio);
}

_movieModule() {
  locator.registerLazySingleton(() => MovieService(locator<Dio>()));
  locator.registerLazySingleton<MovieDataSource>(
    () => MovieDataSourceImpl(movieService: locator()),
  );
  locator.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(movieDataSource: locator()),
  );
  locator.registerLazySingleton(
    () => GetPopularMoviesUseCase(movieRepository: locator()),
  );
  locator.registerLazySingleton(
    () => GetNowPlayingMoviesUseCase(movieRepository: locator()),
  );
  locator.registerLazySingleton(
    () => GetTopRatedMoviesUseCase(movieRepository: locator()),
  );
  locator.registerLazySingleton(
    () => GetUpcomingMoviesUseCase(movieRepository: locator()),
  );
  locator.registerLazySingleton(
    () => GetMovieDetailUseCase(movieRepository: locator()),
  );
  locator.registerLazySingleton(
    () => GetMovieCreditsUseCase(movieRepository: locator()),
  );
  locator.registerLazySingleton(
    () => GetMovieGalleryUseCase(movieRepository: locator()),
  );
  locator.registerLazySingleton(
    () => GetMovieVideoUseCase(movieRepository: locator()),
  );
  locator.registerLazySingleton(
    () => GetSimilarMoviesUseCase(movieRepository: locator()),
  );
  locator.registerLazySingleton(
    () => GetRecommendationMoviesUseCase(movieRepository: locator()),
  );
}
