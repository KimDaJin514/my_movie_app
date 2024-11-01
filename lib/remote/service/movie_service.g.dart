// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _MovieService implements MovieService {
  _MovieService(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<PagingResponse<MovieResponse, MovieDto>> getPopularMovies({
    required String language,
    required int page,
    required bool includeAdult,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'language': language,
      r'page': page,
      r'include_adult': includeAdult,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<PagingResponse<MovieResponse, MovieDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'movie/popular',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PagingResponse<MovieResponse, MovieDto> _value;
    try {
      _value = PagingResponse<MovieResponse, MovieDto>.fromJson(
        _result.data!,
        (json) => MovieResponse.fromJson(json as Map<String, dynamic>),
        (json) => MovieDto.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<PagingResponse<MovieResponse, MovieDto>> getNowPlayingMovies({
    required String language,
    required int page,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'language': language,
      r'page': page,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<PagingResponse<MovieResponse, MovieDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'movie/now_playing',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PagingResponse<MovieResponse, MovieDto> _value;
    try {
      _value = PagingResponse<MovieResponse, MovieDto>.fromJson(
        _result.data!,
        (json) => MovieResponse.fromJson(json as Map<String, dynamic>),
        (json) => MovieDto.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<PagingResponse<MovieResponse, MovieDto>> getTopRatedMovies({
    required String language,
    required int page,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'language': language,
      r'page': page,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<PagingResponse<MovieResponse, MovieDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'movie/top_rated',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PagingResponse<MovieResponse, MovieDto> _value;
    try {
      _value = PagingResponse<MovieResponse, MovieDto>.fromJson(
        _result.data!,
        (json) => MovieResponse.fromJson(json as Map<String, dynamic>),
        (json) => MovieDto.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<PagingResponse<MovieResponse, MovieDto>> getUpcomingMovies({
    required String language,
    required int page,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'language': language,
      r'page': page,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<PagingResponse<MovieResponse, MovieDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'movie/upcoming',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PagingResponse<MovieResponse, MovieDto> _value;
    try {
      _value = PagingResponse<MovieResponse, MovieDto>.fromJson(
        _result.data!,
        (json) => MovieResponse.fromJson(json as Map<String, dynamic>),
        (json) => MovieDto.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MovieResponse> getMovieDetail({
    required String language,
    required int movieId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'language': language};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<MovieResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          'movie/${movieId}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MovieResponse _value;
    try {
      _value = MovieResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<CreditsResponse> getPeopleCredits({
    required String language,
    required int movieId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'language': language};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<CreditsResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          'movie/${movieId}/credits',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late CreditsResponse _value;
    try {
      _value = CreditsResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<GalleryResponse> getMovieGallery({
    required String language,
    required String includeImageLanguage,
    required int movieId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'language': language,
      r'include_image_language': includeImageLanguage,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<GalleryResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          'movie/${movieId}/images',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late GalleryResponse _value;
    try {
      _value = GalleryResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<VideoListResponse> getMovieVideos({
    required String language,
    required int movieId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'language': language};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<VideoListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          'movie/${movieId}/videos',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late VideoListResponse _value;
    try {
      _value = VideoListResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<PagingResponse<MovieResponse, MovieDto>> getSimilarMovies({
    required String language,
    required int page,
    required int movieId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'language': language,
      r'page': page,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<PagingResponse<MovieResponse, MovieDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'movie/${movieId}/similar',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PagingResponse<MovieResponse, MovieDto> _value;
    try {
      _value = PagingResponse<MovieResponse, MovieDto>.fromJson(
        _result.data!,
        (json) => MovieResponse.fromJson(json as Map<String, dynamic>),
        (json) => MovieDto.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<PagingResponse<MovieResponse, MovieDto>> getRecommendationMovies({
    required String language,
    required int page,
    required int movieId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'language': language,
      r'page': page,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<PagingResponse<MovieResponse, MovieDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'movie/${movieId}/recommendations',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PagingResponse<MovieResponse, MovieDto> _value;
    try {
      _value = PagingResponse<MovieResponse, MovieDto>.fromJson(
        _result.data!,
        (json) => MovieResponse.fromJson(json as Map<String, dynamic>),
        (json) => MovieDto.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
