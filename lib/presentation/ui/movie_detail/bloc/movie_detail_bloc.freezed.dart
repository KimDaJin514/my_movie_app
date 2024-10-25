// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieDetailEvent {
  int get movieId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) getMovieDetail,
    required TResult Function(int movieId) getMovieCredits,
    required TResult Function(int movieId) getMovieGallery,
    required TResult Function(int movieId) getMovieVideos,
    required TResult Function(bool isRefresh, int movieId) getSimilarMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? getMovieDetail,
    TResult? Function(int movieId)? getMovieCredits,
    TResult? Function(int movieId)? getMovieGallery,
    TResult? Function(int movieId)? getMovieVideos,
    TResult? Function(bool isRefresh, int movieId)? getSimilarMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? getMovieDetail,
    TResult Function(int movieId)? getMovieCredits,
    TResult Function(int movieId)? getMovieGallery,
    TResult Function(int movieId)? getMovieVideos,
    TResult Function(bool isRefresh, int movieId)? getSimilarMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieDetail value) getMovieDetail,
    required TResult Function(GetMovieCredits value) getMovieCredits,
    required TResult Function(GetMovieGallery value) getMovieGallery,
    required TResult Function(GetMovieVideos value) getMovieVideos,
    required TResult Function(GetSimilarMovies value) getSimilarMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovieDetail value)? getMovieDetail,
    TResult? Function(GetMovieCredits value)? getMovieCredits,
    TResult? Function(GetMovieGallery value)? getMovieGallery,
    TResult? Function(GetMovieVideos value)? getMovieVideos,
    TResult? Function(GetSimilarMovies value)? getSimilarMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieDetail value)? getMovieDetail,
    TResult Function(GetMovieCredits value)? getMovieCredits,
    TResult Function(GetMovieGallery value)? getMovieGallery,
    TResult Function(GetMovieVideos value)? getMovieVideos,
    TResult Function(GetSimilarMovies value)? getSimilarMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieDetailEventCopyWith<MovieDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailEventCopyWith<$Res> {
  factory $MovieDetailEventCopyWith(
          MovieDetailEvent value, $Res Function(MovieDetailEvent) then) =
      _$MovieDetailEventCopyWithImpl<$Res, MovieDetailEvent>;
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class _$MovieDetailEventCopyWithImpl<$Res, $Val extends MovieDetailEvent>
    implements $MovieDetailEventCopyWith<$Res> {
  _$MovieDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_value.copyWith(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMovieDetailImplCopyWith<$Res>
    implements $MovieDetailEventCopyWith<$Res> {
  factory _$$GetMovieDetailImplCopyWith(_$GetMovieDetailImpl value,
          $Res Function(_$GetMovieDetailImpl) then) =
      __$$GetMovieDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class __$$GetMovieDetailImplCopyWithImpl<$Res>
    extends _$MovieDetailEventCopyWithImpl<$Res, _$GetMovieDetailImpl>
    implements _$$GetMovieDetailImplCopyWith<$Res> {
  __$$GetMovieDetailImplCopyWithImpl(
      _$GetMovieDetailImpl _value, $Res Function(_$GetMovieDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_$GetMovieDetailImpl(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetMovieDetailImpl implements GetMovieDetail {
  const _$GetMovieDetailImpl({required this.movieId});

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailEvent.getMovieDetail(movieId: $movieId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieDetailImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMovieDetailImplCopyWith<_$GetMovieDetailImpl> get copyWith =>
      __$$GetMovieDetailImplCopyWithImpl<_$GetMovieDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) getMovieDetail,
    required TResult Function(int movieId) getMovieCredits,
    required TResult Function(int movieId) getMovieGallery,
    required TResult Function(int movieId) getMovieVideos,
    required TResult Function(bool isRefresh, int movieId) getSimilarMovies,
  }) {
    return getMovieDetail(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? getMovieDetail,
    TResult? Function(int movieId)? getMovieCredits,
    TResult? Function(int movieId)? getMovieGallery,
    TResult? Function(int movieId)? getMovieVideos,
    TResult? Function(bool isRefresh, int movieId)? getSimilarMovies,
  }) {
    return getMovieDetail?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? getMovieDetail,
    TResult Function(int movieId)? getMovieCredits,
    TResult Function(int movieId)? getMovieGallery,
    TResult Function(int movieId)? getMovieVideos,
    TResult Function(bool isRefresh, int movieId)? getSimilarMovies,
    required TResult orElse(),
  }) {
    if (getMovieDetail != null) {
      return getMovieDetail(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieDetail value) getMovieDetail,
    required TResult Function(GetMovieCredits value) getMovieCredits,
    required TResult Function(GetMovieGallery value) getMovieGallery,
    required TResult Function(GetMovieVideos value) getMovieVideos,
    required TResult Function(GetSimilarMovies value) getSimilarMovies,
  }) {
    return getMovieDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovieDetail value)? getMovieDetail,
    TResult? Function(GetMovieCredits value)? getMovieCredits,
    TResult? Function(GetMovieGallery value)? getMovieGallery,
    TResult? Function(GetMovieVideos value)? getMovieVideos,
    TResult? Function(GetSimilarMovies value)? getSimilarMovies,
  }) {
    return getMovieDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieDetail value)? getMovieDetail,
    TResult Function(GetMovieCredits value)? getMovieCredits,
    TResult Function(GetMovieGallery value)? getMovieGallery,
    TResult Function(GetMovieVideos value)? getMovieVideos,
    TResult Function(GetSimilarMovies value)? getSimilarMovies,
    required TResult orElse(),
  }) {
    if (getMovieDetail != null) {
      return getMovieDetail(this);
    }
    return orElse();
  }
}

abstract class GetMovieDetail implements MovieDetailEvent {
  const factory GetMovieDetail({required final int movieId}) =
      _$GetMovieDetailImpl;

  @override
  int get movieId;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMovieDetailImplCopyWith<_$GetMovieDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMovieCreditsImplCopyWith<$Res>
    implements $MovieDetailEventCopyWith<$Res> {
  factory _$$GetMovieCreditsImplCopyWith(_$GetMovieCreditsImpl value,
          $Res Function(_$GetMovieCreditsImpl) then) =
      __$$GetMovieCreditsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class __$$GetMovieCreditsImplCopyWithImpl<$Res>
    extends _$MovieDetailEventCopyWithImpl<$Res, _$GetMovieCreditsImpl>
    implements _$$GetMovieCreditsImplCopyWith<$Res> {
  __$$GetMovieCreditsImplCopyWithImpl(
      _$GetMovieCreditsImpl _value, $Res Function(_$GetMovieCreditsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_$GetMovieCreditsImpl(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetMovieCreditsImpl implements GetMovieCredits {
  const _$GetMovieCreditsImpl({required this.movieId});

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailEvent.getMovieCredits(movieId: $movieId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieCreditsImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMovieCreditsImplCopyWith<_$GetMovieCreditsImpl> get copyWith =>
      __$$GetMovieCreditsImplCopyWithImpl<_$GetMovieCreditsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) getMovieDetail,
    required TResult Function(int movieId) getMovieCredits,
    required TResult Function(int movieId) getMovieGallery,
    required TResult Function(int movieId) getMovieVideos,
    required TResult Function(bool isRefresh, int movieId) getSimilarMovies,
  }) {
    return getMovieCredits(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? getMovieDetail,
    TResult? Function(int movieId)? getMovieCredits,
    TResult? Function(int movieId)? getMovieGallery,
    TResult? Function(int movieId)? getMovieVideos,
    TResult? Function(bool isRefresh, int movieId)? getSimilarMovies,
  }) {
    return getMovieCredits?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? getMovieDetail,
    TResult Function(int movieId)? getMovieCredits,
    TResult Function(int movieId)? getMovieGallery,
    TResult Function(int movieId)? getMovieVideos,
    TResult Function(bool isRefresh, int movieId)? getSimilarMovies,
    required TResult orElse(),
  }) {
    if (getMovieCredits != null) {
      return getMovieCredits(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieDetail value) getMovieDetail,
    required TResult Function(GetMovieCredits value) getMovieCredits,
    required TResult Function(GetMovieGallery value) getMovieGallery,
    required TResult Function(GetMovieVideos value) getMovieVideos,
    required TResult Function(GetSimilarMovies value) getSimilarMovies,
  }) {
    return getMovieCredits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovieDetail value)? getMovieDetail,
    TResult? Function(GetMovieCredits value)? getMovieCredits,
    TResult? Function(GetMovieGallery value)? getMovieGallery,
    TResult? Function(GetMovieVideos value)? getMovieVideos,
    TResult? Function(GetSimilarMovies value)? getSimilarMovies,
  }) {
    return getMovieCredits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieDetail value)? getMovieDetail,
    TResult Function(GetMovieCredits value)? getMovieCredits,
    TResult Function(GetMovieGallery value)? getMovieGallery,
    TResult Function(GetMovieVideos value)? getMovieVideos,
    TResult Function(GetSimilarMovies value)? getSimilarMovies,
    required TResult orElse(),
  }) {
    if (getMovieCredits != null) {
      return getMovieCredits(this);
    }
    return orElse();
  }
}

abstract class GetMovieCredits implements MovieDetailEvent {
  const factory GetMovieCredits({required final int movieId}) =
      _$GetMovieCreditsImpl;

  @override
  int get movieId;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMovieCreditsImplCopyWith<_$GetMovieCreditsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMovieGalleryImplCopyWith<$Res>
    implements $MovieDetailEventCopyWith<$Res> {
  factory _$$GetMovieGalleryImplCopyWith(_$GetMovieGalleryImpl value,
          $Res Function(_$GetMovieGalleryImpl) then) =
      __$$GetMovieGalleryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class __$$GetMovieGalleryImplCopyWithImpl<$Res>
    extends _$MovieDetailEventCopyWithImpl<$Res, _$GetMovieGalleryImpl>
    implements _$$GetMovieGalleryImplCopyWith<$Res> {
  __$$GetMovieGalleryImplCopyWithImpl(
      _$GetMovieGalleryImpl _value, $Res Function(_$GetMovieGalleryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_$GetMovieGalleryImpl(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetMovieGalleryImpl implements GetMovieGallery {
  const _$GetMovieGalleryImpl({required this.movieId});

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailEvent.getMovieGallery(movieId: $movieId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieGalleryImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMovieGalleryImplCopyWith<_$GetMovieGalleryImpl> get copyWith =>
      __$$GetMovieGalleryImplCopyWithImpl<_$GetMovieGalleryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) getMovieDetail,
    required TResult Function(int movieId) getMovieCredits,
    required TResult Function(int movieId) getMovieGallery,
    required TResult Function(int movieId) getMovieVideos,
    required TResult Function(bool isRefresh, int movieId) getSimilarMovies,
  }) {
    return getMovieGallery(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? getMovieDetail,
    TResult? Function(int movieId)? getMovieCredits,
    TResult? Function(int movieId)? getMovieGallery,
    TResult? Function(int movieId)? getMovieVideos,
    TResult? Function(bool isRefresh, int movieId)? getSimilarMovies,
  }) {
    return getMovieGallery?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? getMovieDetail,
    TResult Function(int movieId)? getMovieCredits,
    TResult Function(int movieId)? getMovieGallery,
    TResult Function(int movieId)? getMovieVideos,
    TResult Function(bool isRefresh, int movieId)? getSimilarMovies,
    required TResult orElse(),
  }) {
    if (getMovieGallery != null) {
      return getMovieGallery(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieDetail value) getMovieDetail,
    required TResult Function(GetMovieCredits value) getMovieCredits,
    required TResult Function(GetMovieGallery value) getMovieGallery,
    required TResult Function(GetMovieVideos value) getMovieVideos,
    required TResult Function(GetSimilarMovies value) getSimilarMovies,
  }) {
    return getMovieGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovieDetail value)? getMovieDetail,
    TResult? Function(GetMovieCredits value)? getMovieCredits,
    TResult? Function(GetMovieGallery value)? getMovieGallery,
    TResult? Function(GetMovieVideos value)? getMovieVideos,
    TResult? Function(GetSimilarMovies value)? getSimilarMovies,
  }) {
    return getMovieGallery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieDetail value)? getMovieDetail,
    TResult Function(GetMovieCredits value)? getMovieCredits,
    TResult Function(GetMovieGallery value)? getMovieGallery,
    TResult Function(GetMovieVideos value)? getMovieVideos,
    TResult Function(GetSimilarMovies value)? getSimilarMovies,
    required TResult orElse(),
  }) {
    if (getMovieGallery != null) {
      return getMovieGallery(this);
    }
    return orElse();
  }
}

abstract class GetMovieGallery implements MovieDetailEvent {
  const factory GetMovieGallery({required final int movieId}) =
      _$GetMovieGalleryImpl;

  @override
  int get movieId;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMovieGalleryImplCopyWith<_$GetMovieGalleryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMovieVideosImplCopyWith<$Res>
    implements $MovieDetailEventCopyWith<$Res> {
  factory _$$GetMovieVideosImplCopyWith(_$GetMovieVideosImpl value,
          $Res Function(_$GetMovieVideosImpl) then) =
      __$$GetMovieVideosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class __$$GetMovieVideosImplCopyWithImpl<$Res>
    extends _$MovieDetailEventCopyWithImpl<$Res, _$GetMovieVideosImpl>
    implements _$$GetMovieVideosImplCopyWith<$Res> {
  __$$GetMovieVideosImplCopyWithImpl(
      _$GetMovieVideosImpl _value, $Res Function(_$GetMovieVideosImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_$GetMovieVideosImpl(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetMovieVideosImpl implements GetMovieVideos {
  const _$GetMovieVideosImpl({required this.movieId});

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailEvent.getMovieVideos(movieId: $movieId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieVideosImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMovieVideosImplCopyWith<_$GetMovieVideosImpl> get copyWith =>
      __$$GetMovieVideosImplCopyWithImpl<_$GetMovieVideosImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) getMovieDetail,
    required TResult Function(int movieId) getMovieCredits,
    required TResult Function(int movieId) getMovieGallery,
    required TResult Function(int movieId) getMovieVideos,
    required TResult Function(bool isRefresh, int movieId) getSimilarMovies,
  }) {
    return getMovieVideos(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? getMovieDetail,
    TResult? Function(int movieId)? getMovieCredits,
    TResult? Function(int movieId)? getMovieGallery,
    TResult? Function(int movieId)? getMovieVideos,
    TResult? Function(bool isRefresh, int movieId)? getSimilarMovies,
  }) {
    return getMovieVideos?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? getMovieDetail,
    TResult Function(int movieId)? getMovieCredits,
    TResult Function(int movieId)? getMovieGallery,
    TResult Function(int movieId)? getMovieVideos,
    TResult Function(bool isRefresh, int movieId)? getSimilarMovies,
    required TResult orElse(),
  }) {
    if (getMovieVideos != null) {
      return getMovieVideos(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieDetail value) getMovieDetail,
    required TResult Function(GetMovieCredits value) getMovieCredits,
    required TResult Function(GetMovieGallery value) getMovieGallery,
    required TResult Function(GetMovieVideos value) getMovieVideos,
    required TResult Function(GetSimilarMovies value) getSimilarMovies,
  }) {
    return getMovieVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovieDetail value)? getMovieDetail,
    TResult? Function(GetMovieCredits value)? getMovieCredits,
    TResult? Function(GetMovieGallery value)? getMovieGallery,
    TResult? Function(GetMovieVideos value)? getMovieVideos,
    TResult? Function(GetSimilarMovies value)? getSimilarMovies,
  }) {
    return getMovieVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieDetail value)? getMovieDetail,
    TResult Function(GetMovieCredits value)? getMovieCredits,
    TResult Function(GetMovieGallery value)? getMovieGallery,
    TResult Function(GetMovieVideos value)? getMovieVideos,
    TResult Function(GetSimilarMovies value)? getSimilarMovies,
    required TResult orElse(),
  }) {
    if (getMovieVideos != null) {
      return getMovieVideos(this);
    }
    return orElse();
  }
}

abstract class GetMovieVideos implements MovieDetailEvent {
  const factory GetMovieVideos({required final int movieId}) =
      _$GetMovieVideosImpl;

  @override
  int get movieId;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMovieVideosImplCopyWith<_$GetMovieVideosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSimilarMoviesImplCopyWith<$Res>
    implements $MovieDetailEventCopyWith<$Res> {
  factory _$$GetSimilarMoviesImplCopyWith(_$GetSimilarMoviesImpl value,
          $Res Function(_$GetSimilarMoviesImpl) then) =
      __$$GetSimilarMoviesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isRefresh, int movieId});
}

/// @nodoc
class __$$GetSimilarMoviesImplCopyWithImpl<$Res>
    extends _$MovieDetailEventCopyWithImpl<$Res, _$GetSimilarMoviesImpl>
    implements _$$GetSimilarMoviesImplCopyWith<$Res> {
  __$$GetSimilarMoviesImplCopyWithImpl(_$GetSimilarMoviesImpl _value,
      $Res Function(_$GetSimilarMoviesImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = null,
    Object? movieId = null,
  }) {
    return _then(_$GetSimilarMoviesImpl(
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSimilarMoviesImpl implements GetSimilarMovies {
  const _$GetSimilarMoviesImpl(
      {required this.isRefresh, required this.movieId});

  @override
  final bool isRefresh;
  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailEvent.getSimilarMovies(isRefresh: $isRefresh, movieId: $movieId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSimilarMoviesImpl &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh) &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh, movieId);

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSimilarMoviesImplCopyWith<_$GetSimilarMoviesImpl> get copyWith =>
      __$$GetSimilarMoviesImplCopyWithImpl<_$GetSimilarMoviesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) getMovieDetail,
    required TResult Function(int movieId) getMovieCredits,
    required TResult Function(int movieId) getMovieGallery,
    required TResult Function(int movieId) getMovieVideos,
    required TResult Function(bool isRefresh, int movieId) getSimilarMovies,
  }) {
    return getSimilarMovies(isRefresh, movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? getMovieDetail,
    TResult? Function(int movieId)? getMovieCredits,
    TResult? Function(int movieId)? getMovieGallery,
    TResult? Function(int movieId)? getMovieVideos,
    TResult? Function(bool isRefresh, int movieId)? getSimilarMovies,
  }) {
    return getSimilarMovies?.call(isRefresh, movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? getMovieDetail,
    TResult Function(int movieId)? getMovieCredits,
    TResult Function(int movieId)? getMovieGallery,
    TResult Function(int movieId)? getMovieVideos,
    TResult Function(bool isRefresh, int movieId)? getSimilarMovies,
    required TResult orElse(),
  }) {
    if (getSimilarMovies != null) {
      return getSimilarMovies(isRefresh, movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieDetail value) getMovieDetail,
    required TResult Function(GetMovieCredits value) getMovieCredits,
    required TResult Function(GetMovieGallery value) getMovieGallery,
    required TResult Function(GetMovieVideos value) getMovieVideos,
    required TResult Function(GetSimilarMovies value) getSimilarMovies,
  }) {
    return getSimilarMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovieDetail value)? getMovieDetail,
    TResult? Function(GetMovieCredits value)? getMovieCredits,
    TResult? Function(GetMovieGallery value)? getMovieGallery,
    TResult? Function(GetMovieVideos value)? getMovieVideos,
    TResult? Function(GetSimilarMovies value)? getSimilarMovies,
  }) {
    return getSimilarMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieDetail value)? getMovieDetail,
    TResult Function(GetMovieCredits value)? getMovieCredits,
    TResult Function(GetMovieGallery value)? getMovieGallery,
    TResult Function(GetMovieVideos value)? getMovieVideos,
    TResult Function(GetSimilarMovies value)? getSimilarMovies,
    required TResult orElse(),
  }) {
    if (getSimilarMovies != null) {
      return getSimilarMovies(this);
    }
    return orElse();
  }
}

abstract class GetSimilarMovies implements MovieDetailEvent {
  const factory GetSimilarMovies(
      {required final bool isRefresh,
      required final int movieId}) = _$GetSimilarMoviesImpl;

  bool get isRefresh;
  @override
  int get movieId;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSimilarMoviesImplCopyWith<_$GetSimilarMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieDetailState {
  MovieVo get movieVo => throw _privateConstructorUsedError;
  List<PersonVo> get casts => throw _privateConstructorUsedError;
  PersonVo get director => throw _privateConstructorUsedError;
  List<PosterVo> get gallery => throw _privateConstructorUsedError;
  List<VideoVo> get videos => throw _privateConstructorUsedError;
  PagingVo<MovieVo> get similarMoviePaging =>
      throw _privateConstructorUsedError;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieDetailStateCopyWith<MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
          MovieDetailState value, $Res Function(MovieDetailState) then) =
      _$MovieDetailStateCopyWithImpl<$Res, MovieDetailState>;
  @useResult
  $Res call(
      {MovieVo movieVo,
      List<PersonVo> casts,
      PersonVo director,
      List<PosterVo> gallery,
      List<VideoVo> videos,
      PagingVo<MovieVo> similarMoviePaging});

  $MovieVoCopyWith<$Res> get movieVo;
  $PersonVoCopyWith<$Res> get director;
  $PagingVoCopyWith<MovieVo, $Res> get similarMoviePaging;
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res, $Val extends MovieDetailState>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieVo = null,
    Object? casts = null,
    Object? director = null,
    Object? gallery = null,
    Object? videos = null,
    Object? similarMoviePaging = null,
  }) {
    return _then(_value.copyWith(
      movieVo: null == movieVo
          ? _value.movieVo
          : movieVo // ignore: cast_nullable_to_non_nullable
              as MovieVo,
      casts: null == casts
          ? _value.casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<PersonVo>,
      director: null == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as PersonVo,
      gallery: null == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<PosterVo>,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoVo>,
      similarMoviePaging: null == similarMoviePaging
          ? _value.similarMoviePaging
          : similarMoviePaging // ignore: cast_nullable_to_non_nullable
              as PagingVo<MovieVo>,
    ) as $Val);
  }

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieVoCopyWith<$Res> get movieVo {
    return $MovieVoCopyWith<$Res>(_value.movieVo, (value) {
      return _then(_value.copyWith(movieVo: value) as $Val);
    });
  }

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonVoCopyWith<$Res> get director {
    return $PersonVoCopyWith<$Res>(_value.director, (value) {
      return _then(_value.copyWith(director: value) as $Val);
    });
  }

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PagingVoCopyWith<MovieVo, $Res> get similarMoviePaging {
    return $PagingVoCopyWith<MovieVo, $Res>(_value.similarMoviePaging, (value) {
      return _then(_value.copyWith(similarMoviePaging: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MovieVo movieVo,
      List<PersonVo> casts,
      PersonVo director,
      List<PosterVo> gallery,
      List<VideoVo> videos,
      PagingVo<MovieVo> similarMoviePaging});

  @override
  $MovieVoCopyWith<$Res> get movieVo;
  @override
  $PersonVoCopyWith<$Res> get director;
  @override
  $PagingVoCopyWith<MovieVo, $Res> get similarMoviePaging;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieVo = null,
    Object? casts = null,
    Object? director = null,
    Object? gallery = null,
    Object? videos = null,
    Object? similarMoviePaging = null,
  }) {
    return _then(_$HomeStateImpl(
      movieVo: null == movieVo
          ? _value.movieVo
          : movieVo // ignore: cast_nullable_to_non_nullable
              as MovieVo,
      casts: null == casts
          ? _value._casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<PersonVo>,
      director: null == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as PersonVo,
      gallery: null == gallery
          ? _value._gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<PosterVo>,
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoVo>,
      similarMoviePaging: null == similarMoviePaging
          ? _value.similarMoviePaging
          : similarMoviePaging // ignore: cast_nullable_to_non_nullable
              as PagingVo<MovieVo>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl(
      {required this.movieVo,
      required final List<PersonVo> casts,
      required this.director,
      required final List<PosterVo> gallery,
      required final List<VideoVo> videos,
      required this.similarMoviePaging})
      : _casts = casts,
        _gallery = gallery,
        _videos = videos;

  @override
  final MovieVo movieVo;
  final List<PersonVo> _casts;
  @override
  List<PersonVo> get casts {
    if (_casts is EqualUnmodifiableListView) return _casts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_casts);
  }

  @override
  final PersonVo director;
  final List<PosterVo> _gallery;
  @override
  List<PosterVo> get gallery {
    if (_gallery is EqualUnmodifiableListView) return _gallery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gallery);
  }

  final List<VideoVo> _videos;
  @override
  List<VideoVo> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  final PagingVo<MovieVo> similarMoviePaging;

  @override
  String toString() {
    return 'MovieDetailState(movieVo: $movieVo, casts: $casts, director: $director, gallery: $gallery, videos: $videos, similarMoviePaging: $similarMoviePaging)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.movieVo, movieVo) || other.movieVo == movieVo) &&
            const DeepCollectionEquality().equals(other._casts, _casts) &&
            (identical(other.director, director) ||
                other.director == director) &&
            const DeepCollectionEquality().equals(other._gallery, _gallery) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.similarMoviePaging, similarMoviePaging) ||
                other.similarMoviePaging == similarMoviePaging));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      movieVo,
      const DeepCollectionEquality().hash(_casts),
      director,
      const DeepCollectionEquality().hash(_gallery),
      const DeepCollectionEquality().hash(_videos),
      similarMoviePaging);

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements MovieDetailState {
  factory _HomeState(
      {required final MovieVo movieVo,
      required final List<PersonVo> casts,
      required final PersonVo director,
      required final List<PosterVo> gallery,
      required final List<VideoVo> videos,
      required final PagingVo<MovieVo> similarMoviePaging}) = _$HomeStateImpl;

  @override
  MovieVo get movieVo;
  @override
  List<PersonVo> get casts;
  @override
  PersonVo get director;
  @override
  List<PosterVo> get gallery;
  @override
  List<VideoVo> get videos;
  @override
  PagingVo<MovieVo> get similarMoviePaging;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
