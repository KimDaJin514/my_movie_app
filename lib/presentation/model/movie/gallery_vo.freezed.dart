// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GalleryVo {
  int get id => throw _privateConstructorUsedError;
  List<String> get backdrops => throw _privateConstructorUsedError;
  List<String> get logos => throw _privateConstructorUsedError;
  List<PosterVo> get posters => throw _privateConstructorUsedError;

  /// Create a copy of GalleryVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GalleryVoCopyWith<GalleryVo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryVoCopyWith<$Res> {
  factory $GalleryVoCopyWith(GalleryVo value, $Res Function(GalleryVo) then) =
      _$GalleryVoCopyWithImpl<$Res, GalleryVo>;
  @useResult
  $Res call(
      {int id,
      List<String> backdrops,
      List<String> logos,
      List<PosterVo> posters});
}

/// @nodoc
class _$GalleryVoCopyWithImpl<$Res, $Val extends GalleryVo>
    implements $GalleryVoCopyWith<$Res> {
  _$GalleryVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GalleryVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? backdrops = null,
    Object? logos = null,
    Object? posters = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      backdrops: null == backdrops
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<String>,
      logos: null == logos
          ? _value.logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      posters: null == posters
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<PosterVo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GalleryVoImplCopyWith<$Res>
    implements $GalleryVoCopyWith<$Res> {
  factory _$$GalleryVoImplCopyWith(
          _$GalleryVoImpl value, $Res Function(_$GalleryVoImpl) then) =
      __$$GalleryVoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<String> backdrops,
      List<String> logos,
      List<PosterVo> posters});
}

/// @nodoc
class __$$GalleryVoImplCopyWithImpl<$Res>
    extends _$GalleryVoCopyWithImpl<$Res, _$GalleryVoImpl>
    implements _$$GalleryVoImplCopyWith<$Res> {
  __$$GalleryVoImplCopyWithImpl(
      _$GalleryVoImpl _value, $Res Function(_$GalleryVoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? backdrops = null,
    Object? logos = null,
    Object? posters = null,
  }) {
    return _then(_$GalleryVoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      backdrops: null == backdrops
          ? _value._backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<String>,
      logos: null == logos
          ? _value._logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      posters: null == posters
          ? _value._posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<PosterVo>,
    ));
  }
}

/// @nodoc

class _$GalleryVoImpl implements _GalleryVo {
  _$GalleryVoImpl(
      {required this.id,
      required final List<String> backdrops,
      required final List<String> logos,
      required final List<PosterVo> posters})
      : _backdrops = backdrops,
        _logos = logos,
        _posters = posters;

  @override
  final int id;
  final List<String> _backdrops;
  @override
  List<String> get backdrops {
    if (_backdrops is EqualUnmodifiableListView) return _backdrops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backdrops);
  }

  final List<String> _logos;
  @override
  List<String> get logos {
    if (_logos is EqualUnmodifiableListView) return _logos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logos);
  }

  final List<PosterVo> _posters;
  @override
  List<PosterVo> get posters {
    if (_posters is EqualUnmodifiableListView) return _posters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posters);
  }

  @override
  String toString() {
    return 'GalleryVo(id: $id, backdrops: $backdrops, logos: $logos, posters: $posters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryVoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._backdrops, _backdrops) &&
            const DeepCollectionEquality().equals(other._logos, _logos) &&
            const DeepCollectionEquality().equals(other._posters, _posters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_backdrops),
      const DeepCollectionEquality().hash(_logos),
      const DeepCollectionEquality().hash(_posters));

  /// Create a copy of GalleryVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryVoImplCopyWith<_$GalleryVoImpl> get copyWith =>
      __$$GalleryVoImplCopyWithImpl<_$GalleryVoImpl>(this, _$identity);
}

abstract class _GalleryVo implements GalleryVo {
  factory _GalleryVo(
      {required final int id,
      required final List<String> backdrops,
      required final List<String> logos,
      required final List<PosterVo> posters}) = _$GalleryVoImpl;

  @override
  int get id;
  @override
  List<String> get backdrops;
  @override
  List<String> get logos;
  @override
  List<PosterVo> get posters;

  /// Create a copy of GalleryVo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GalleryVoImplCopyWith<_$GalleryVoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
