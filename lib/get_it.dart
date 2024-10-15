import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:my_movie_app/config.dart';
import 'package:my_movie_app/data/data_source/movie_data_source.dart';
import 'package:my_movie_app/data/repository/movie_repository_impl.dart';
import 'package:my_movie_app/domain/repository/movie_repository.dart';
import 'package:my_movie_app/domain/use_case/get_popular_movies_use_case.dart';
import 'package:my_movie_app/remote/data_source/movie_data_source_impl.dart';
import 'package:my_movie_app/remote/service/movie_service.dart';
import 'presentation/router/app_router.dart';
import 'remote/interceptor/header_interceptor.dart';

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
    baseUrl: Config.instance.baseUrl,
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
}
