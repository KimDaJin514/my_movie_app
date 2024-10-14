import 'package:dio/dio.dart';
import 'package:my_movie_app/network_config.dart';

class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.headers.addAll(apiHeader);
    handler.next(options);
  }
}
