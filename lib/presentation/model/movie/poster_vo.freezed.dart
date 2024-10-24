// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poster_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PosterVo {
  double get aspectRatio => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  int get voteCount => throw _privateConstructorUsedError;
  double get voteAverage => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;

  /// Create a copy of PosterVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PosterVoCopyWith<PosterVo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosterVoCopyWith<$Res> {
  factory $PosterVoCopyWith(PosterVo value, $Res Function(PosterVo) then) =
      _$PosterVoCopyWithImpl<$Res, PosterVo>;
  @useResult
  $Res call(
      {double aspectRatio,
      double height,
      int voteCount,
      double voteAverage,
      String filePath,
      double width});
}

/// @nodoc
class _$PosterVoCopyWithImpl<$Res, $Val extends PosterVo>
    implements $PosterVoCopyWith<$Res> {
  _$PosterVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PosterVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = null,
    Object? height = null,
    Object? voteCount = null,
    Object? voteAverage = null,
    Object? filePath = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      aspectRatio: null == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PosterVoImplCopyWith<$Res>
    implements $PosterVoCopyWith<$Res> {
  factory _$$PosterVoImplCopyWith(
          _$PosterVoImpl value, $Res Function(_$PosterVoImpl) then) =
      __$$PosterVoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double aspectRatio,
      double height,
      int voteCount,
      double voteAverage,
      String filePath,
      double width});
}

/// @nodoc
class __$$PosterVoImplCopyWithImpl<$Res>
    extends _$PosterVoCopyWithImpl<$Res, _$PosterVoImpl>
    implements _$$PosterVoImplCopyWith<$Res> {
  __$$PosterVoImplCopyWithImpl(
      _$PosterVoImpl _value, $Res Function(_$PosterVoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PosterVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = null,
    Object? height = null,
    Object? voteCount = null,
    Object? voteAverage = null,
    Object? filePath = null,
    Object? width = null,
  }) {
    return _then(_$PosterVoImpl(
      aspectRatio: null == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PosterVoImpl implements _PosterVo {
  _$PosterVoImpl(
      {required this.aspectRatio,
      required this.height,
      required this.voteCount,
      required this.voteAverage,
      required this.filePath,
      required this.width});

  @override
  final double aspectRatio;
  @override
  final double height;
  @override
  final int voteCount;
  @override
  final double voteAverage;
  @override
  final String filePath;
  @override
  final double width;

  @override
  String toString() {
    return 'PosterVo(aspectRatio: $aspectRatio, height: $height, voteCount: $voteCount, voteAverage: $voteAverage, filePath: $filePath, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosterVoImpl &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.width, width) || other.width == width));
  }

  @override
  int get hashCode => Object.hash(runtimeType, aspectRatio, height, voteCount,
      voteAverage, filePath, width);

  /// Create a copy of PosterVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PosterVoImplCopyWith<_$PosterVoImpl> get copyWith =>
      __$$PosterVoImplCopyWithImpl<_$PosterVoImpl>(this, _$identity);
}

abstract class _PosterVo implements PosterVo {
  factory _PosterVo(
      {required final double aspectRatio,
      required final double height,
      required final int voteCount,
      required final double voteAverage,
      required final String filePath,
      required final double width}) = _$PosterVoImpl;

  @override
  double get aspectRatio;
  @override
  double get height;
  @override
  int get voteCount;
  @override
  double get voteAverage;
  @override
  String get filePath;
  @override
  double get width;

  /// Create a copy of PosterVo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PosterVoImplCopyWith<_$PosterVoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
