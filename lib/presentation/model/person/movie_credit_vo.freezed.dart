// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_credit_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieCreditVo {
  int get id => throw _privateConstructorUsedError;
  List<MovieVo> get movies => throw _privateConstructorUsedError;

  /// Create a copy of MovieCreditVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieCreditVoCopyWith<MovieCreditVo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCreditVoCopyWith<$Res> {
  factory $MovieCreditVoCopyWith(
          MovieCreditVo value, $Res Function(MovieCreditVo) then) =
      _$MovieCreditVoCopyWithImpl<$Res, MovieCreditVo>;
  @useResult
  $Res call({int id, List<MovieVo> movies});
}

/// @nodoc
class _$MovieCreditVoCopyWithImpl<$Res, $Val extends MovieCreditVo>
    implements $MovieCreditVoCopyWith<$Res> {
  _$MovieCreditVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieCreditVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? movies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieVo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieCreditVoImplCopyWith<$Res>
    implements $MovieCreditVoCopyWith<$Res> {
  factory _$$MovieCreditVoImplCopyWith(
          _$MovieCreditVoImpl value, $Res Function(_$MovieCreditVoImpl) then) =
      __$$MovieCreditVoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<MovieVo> movies});
}

/// @nodoc
class __$$MovieCreditVoImplCopyWithImpl<$Res>
    extends _$MovieCreditVoCopyWithImpl<$Res, _$MovieCreditVoImpl>
    implements _$$MovieCreditVoImplCopyWith<$Res> {
  __$$MovieCreditVoImplCopyWithImpl(
      _$MovieCreditVoImpl _value, $Res Function(_$MovieCreditVoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieCreditVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? movies = null,
  }) {
    return _then(_$MovieCreditVoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieVo>,
    ));
  }
}

/// @nodoc

class _$MovieCreditVoImpl implements _MovieCreditVo {
  _$MovieCreditVoImpl({required this.id, required final List<MovieVo> movies})
      : _movies = movies;

  @override
  final int id;
  final List<MovieVo> _movies;
  @override
  List<MovieVo> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'MovieCreditVo(id: $id, movies: $movies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieCreditVoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_movies));

  /// Create a copy of MovieCreditVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieCreditVoImplCopyWith<_$MovieCreditVoImpl> get copyWith =>
      __$$MovieCreditVoImplCopyWithImpl<_$MovieCreditVoImpl>(this, _$identity);
}

abstract class _MovieCreditVo implements MovieCreditVo {
  factory _MovieCreditVo(
      {required final int id,
      required final List<MovieVo> movies}) = _$MovieCreditVoImpl;

  @override
  int get id;
  @override
  List<MovieVo> get movies;

  /// Create a copy of MovieCreditVo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieCreditVoImplCopyWith<_$MovieCreditVoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
