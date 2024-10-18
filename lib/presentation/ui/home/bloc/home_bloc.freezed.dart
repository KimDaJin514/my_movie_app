// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPopularMovies,
    required TResult Function(bool isRefresh) getNowPlayingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPopularMovies,
    TResult? Function(bool isRefresh)? getNowPlayingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPopularMovies,
    TResult Function(bool isRefresh)? getNowPlayingMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPopularMovies value) getPopularMovies,
    required TResult Function(GetNowPlayingMovies value) getNowPlayingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPopularMovies value)? getPopularMovies,
    TResult? Function(GetNowPlayingMovies value)? getNowPlayingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPopularMovies value)? getPopularMovies,
    TResult Function(GetNowPlayingMovies value)? getNowPlayingMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPopularMoviesImplCopyWith<$Res> {
  factory _$$GetPopularMoviesImplCopyWith(_$GetPopularMoviesImpl value,
          $Res Function(_$GetPopularMoviesImpl) then) =
      __$$GetPopularMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPopularMoviesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetPopularMoviesImpl>
    implements _$$GetPopularMoviesImplCopyWith<$Res> {
  __$$GetPopularMoviesImplCopyWithImpl(_$GetPopularMoviesImpl _value,
      $Res Function(_$GetPopularMoviesImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPopularMoviesImpl implements GetPopularMovies {
  const _$GetPopularMoviesImpl();

  @override
  String toString() {
    return 'HomeEvent.getPopularMovies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPopularMoviesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPopularMovies,
    required TResult Function(bool isRefresh) getNowPlayingMovies,
  }) {
    return getPopularMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPopularMovies,
    TResult? Function(bool isRefresh)? getNowPlayingMovies,
  }) {
    return getPopularMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPopularMovies,
    TResult Function(bool isRefresh)? getNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (getPopularMovies != null) {
      return getPopularMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPopularMovies value) getPopularMovies,
    required TResult Function(GetNowPlayingMovies value) getNowPlayingMovies,
  }) {
    return getPopularMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPopularMovies value)? getPopularMovies,
    TResult? Function(GetNowPlayingMovies value)? getNowPlayingMovies,
  }) {
    return getPopularMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPopularMovies value)? getPopularMovies,
    TResult Function(GetNowPlayingMovies value)? getNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (getPopularMovies != null) {
      return getPopularMovies(this);
    }
    return orElse();
  }
}

abstract class GetPopularMovies implements HomeEvent {
  const factory GetPopularMovies() = _$GetPopularMoviesImpl;
}

/// @nodoc
abstract class _$$GetNowPlayingMoviesImplCopyWith<$Res> {
  factory _$$GetNowPlayingMoviesImplCopyWith(_$GetNowPlayingMoviesImpl value,
          $Res Function(_$GetNowPlayingMoviesImpl) then) =
      __$$GetNowPlayingMoviesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$GetNowPlayingMoviesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetNowPlayingMoviesImpl>
    implements _$$GetNowPlayingMoviesImplCopyWith<$Res> {
  __$$GetNowPlayingMoviesImplCopyWithImpl(_$GetNowPlayingMoviesImpl _value,
      $Res Function(_$GetNowPlayingMoviesImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = null,
  }) {
    return _then(_$GetNowPlayingMoviesImpl(
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetNowPlayingMoviesImpl implements GetNowPlayingMovies {
  const _$GetNowPlayingMoviesImpl({required this.isRefresh});

  @override
  final bool isRefresh;

  @override
  String toString() {
    return 'HomeEvent.getNowPlayingMovies(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNowPlayingMoviesImpl &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNowPlayingMoviesImplCopyWith<_$GetNowPlayingMoviesImpl> get copyWith =>
      __$$GetNowPlayingMoviesImplCopyWithImpl<_$GetNowPlayingMoviesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPopularMovies,
    required TResult Function(bool isRefresh) getNowPlayingMovies,
  }) {
    return getNowPlayingMovies(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPopularMovies,
    TResult? Function(bool isRefresh)? getNowPlayingMovies,
  }) {
    return getNowPlayingMovies?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPopularMovies,
    TResult Function(bool isRefresh)? getNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (getNowPlayingMovies != null) {
      return getNowPlayingMovies(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPopularMovies value) getPopularMovies,
    required TResult Function(GetNowPlayingMovies value) getNowPlayingMovies,
  }) {
    return getNowPlayingMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPopularMovies value)? getPopularMovies,
    TResult? Function(GetNowPlayingMovies value)? getNowPlayingMovies,
  }) {
    return getNowPlayingMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPopularMovies value)? getPopularMovies,
    TResult Function(GetNowPlayingMovies value)? getNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (getNowPlayingMovies != null) {
      return getNowPlayingMovies(this);
    }
    return orElse();
  }
}

abstract class GetNowPlayingMovies implements HomeEvent {
  const factory GetNowPlayingMovies({required final bool isRefresh}) =
      _$GetNowPlayingMoviesImpl;

  bool get isRefresh;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNowPlayingMoviesImplCopyWith<_$GetNowPlayingMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<MovieVo> get popularMovies => throw _privateConstructorUsedError;
  PagingVo<MovieVo> get nowPlayingMoviePaging =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<MovieVo> popularMovies, PagingVo<MovieVo> nowPlayingMoviePaging});

  $PagingVoCopyWith<MovieVo, $Res> get nowPlayingMoviePaging;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularMovies = null,
    Object? nowPlayingMoviePaging = null,
  }) {
    return _then(_value.copyWith(
      popularMovies: null == popularMovies
          ? _value.popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieVo>,
      nowPlayingMoviePaging: null == nowPlayingMoviePaging
          ? _value.nowPlayingMoviePaging
          : nowPlayingMoviePaging // ignore: cast_nullable_to_non_nullable
              as PagingVo<MovieVo>,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PagingVoCopyWith<MovieVo, $Res> get nowPlayingMoviePaging {
    return $PagingVoCopyWith<MovieVo, $Res>(_value.nowPlayingMoviePaging,
        (value) {
      return _then(_value.copyWith(nowPlayingMoviePaging: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MovieVo> popularMovies, PagingVo<MovieVo> nowPlayingMoviePaging});

  @override
  $PagingVoCopyWith<MovieVo, $Res> get nowPlayingMoviePaging;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularMovies = null,
    Object? nowPlayingMoviePaging = null,
  }) {
    return _then(_$HomeStateImpl(
      popularMovies: null == popularMovies
          ? _value._popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieVo>,
      nowPlayingMoviePaging: null == nowPlayingMoviePaging
          ? _value.nowPlayingMoviePaging
          : nowPlayingMoviePaging // ignore: cast_nullable_to_non_nullable
              as PagingVo<MovieVo>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl(
      {required final List<MovieVo> popularMovies,
      required this.nowPlayingMoviePaging})
      : _popularMovies = popularMovies;

  final List<MovieVo> _popularMovies;
  @override
  List<MovieVo> get popularMovies {
    if (_popularMovies is EqualUnmodifiableListView) return _popularMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularMovies);
  }

  @override
  final PagingVo<MovieVo> nowPlayingMoviePaging;

  @override
  String toString() {
    return 'HomeState(popularMovies: $popularMovies, nowPlayingMoviePaging: $nowPlayingMoviePaging)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._popularMovies, _popularMovies) &&
            (identical(other.nowPlayingMoviePaging, nowPlayingMoviePaging) ||
                other.nowPlayingMoviePaging == nowPlayingMoviePaging));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_popularMovies),
      nowPlayingMoviePaging);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
          {required final List<MovieVo> popularMovies,
          required final PagingVo<MovieVo> nowPlayingMoviePaging}) =
      _$HomeStateImpl;

  @override
  List<MovieVo> get popularMovies;
  @override
  PagingVo<MovieVo> get nowPlayingMoviePaging;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
