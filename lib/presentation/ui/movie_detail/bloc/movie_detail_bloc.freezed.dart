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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? getMovieDetail,
    TResult? Function(int movieId)? getMovieCredits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? getMovieDetail,
    TResult Function(int movieId)? getMovieCredits,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieDetail value) getMovieDetail,
    required TResult Function(GetMovieCredits value) getMovieCredits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovieDetail value)? getMovieDetail,
    TResult? Function(GetMovieCredits value)? getMovieCredits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieDetail value)? getMovieDetail,
    TResult Function(GetMovieCredits value)? getMovieCredits,
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
  }) {
    return getMovieDetail(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? getMovieDetail,
    TResult? Function(int movieId)? getMovieCredits,
  }) {
    return getMovieDetail?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? getMovieDetail,
    TResult Function(int movieId)? getMovieCredits,
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
  }) {
    return getMovieDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovieDetail value)? getMovieDetail,
    TResult? Function(GetMovieCredits value)? getMovieCredits,
  }) {
    return getMovieDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieDetail value)? getMovieDetail,
    TResult Function(GetMovieCredits value)? getMovieCredits,
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
  }) {
    return getMovieCredits(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? getMovieDetail,
    TResult? Function(int movieId)? getMovieCredits,
  }) {
    return getMovieCredits?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? getMovieDetail,
    TResult Function(int movieId)? getMovieCredits,
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
  }) {
    return getMovieCredits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMovieDetail value)? getMovieDetail,
    TResult? Function(GetMovieCredits value)? getMovieCredits,
  }) {
    return getMovieCredits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieDetail value)? getMovieDetail,
    TResult Function(GetMovieCredits value)? getMovieCredits,
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
mixin _$MovieDetailState {
  MovieVo get movieVo => throw _privateConstructorUsedError;
  CreditsVo get credits => throw _privateConstructorUsedError;

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
  $Res call({MovieVo movieVo, CreditsVo credits});

  $MovieVoCopyWith<$Res> get movieVo;
  $CreditsVoCopyWith<$Res> get credits;
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
    Object? credits = null,
  }) {
    return _then(_value.copyWith(
      movieVo: null == movieVo
          ? _value.movieVo
          : movieVo // ignore: cast_nullable_to_non_nullable
              as MovieVo,
      credits: null == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as CreditsVo,
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
  $CreditsVoCopyWith<$Res> get credits {
    return $CreditsVoCopyWith<$Res>(_value.credits, (value) {
      return _then(_value.copyWith(credits: value) as $Val);
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
  $Res call({MovieVo movieVo, CreditsVo credits});

  @override
  $MovieVoCopyWith<$Res> get movieVo;
  @override
  $CreditsVoCopyWith<$Res> get credits;
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
    Object? credits = null,
  }) {
    return _then(_$HomeStateImpl(
      movieVo: null == movieVo
          ? _value.movieVo
          : movieVo // ignore: cast_nullable_to_non_nullable
              as MovieVo,
      credits: null == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as CreditsVo,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl({required this.movieVo, required this.credits});

  @override
  final MovieVo movieVo;
  @override
  final CreditsVo credits;

  @override
  String toString() {
    return 'MovieDetailState(movieVo: $movieVo, credits: $credits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.movieVo, movieVo) || other.movieVo == movieVo) &&
            (identical(other.credits, credits) || other.credits == credits));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieVo, credits);

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
      required final CreditsVo credits}) = _$HomeStateImpl;

  @override
  MovieVo get movieVo;
  @override
  CreditsVo get credits;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
