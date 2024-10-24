// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoVo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get site => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  VideoType get type => throw _privateConstructorUsedError;
  bool get isOfficial => throw _privateConstructorUsedError;

  /// Create a copy of VideoVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoVoCopyWith<VideoVo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoVoCopyWith<$Res> {
  factory $VideoVoCopyWith(VideoVo value, $Res Function(VideoVo) then) =
      _$VideoVoCopyWithImpl<$Res, VideoVo>;
  @useResult
  $Res call(
      {String id,
      String name,
      String key,
      String site,
      int size,
      VideoType type,
      bool isOfficial});
}

/// @nodoc
class _$VideoVoCopyWithImpl<$Res, $Val extends VideoVo>
    implements $VideoVoCopyWith<$Res> {
  _$VideoVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? key = null,
    Object? site = null,
    Object? size = null,
    Object? type = null,
    Object? isOfficial = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VideoType,
      isOfficial: null == isOfficial
          ? _value.isOfficial
          : isOfficial // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoVoImplCopyWith<$Res> implements $VideoVoCopyWith<$Res> {
  factory _$$VideoVoImplCopyWith(
          _$VideoVoImpl value, $Res Function(_$VideoVoImpl) then) =
      __$$VideoVoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String key,
      String site,
      int size,
      VideoType type,
      bool isOfficial});
}

/// @nodoc
class __$$VideoVoImplCopyWithImpl<$Res>
    extends _$VideoVoCopyWithImpl<$Res, _$VideoVoImpl>
    implements _$$VideoVoImplCopyWith<$Res> {
  __$$VideoVoImplCopyWithImpl(
      _$VideoVoImpl _value, $Res Function(_$VideoVoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? key = null,
    Object? site = null,
    Object? size = null,
    Object? type = null,
    Object? isOfficial = null,
  }) {
    return _then(_$VideoVoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VideoType,
      isOfficial: null == isOfficial
          ? _value.isOfficial
          : isOfficial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VideoVoImpl implements _VideoVo {
  _$VideoVoImpl(
      {required this.id,
      required this.name,
      required this.key,
      required this.site,
      required this.size,
      required this.type,
      required this.isOfficial});

  @override
  final String id;
  @override
  final String name;
  @override
  final String key;
  @override
  final String site;
  @override
  final int size;
  @override
  final VideoType type;
  @override
  final bool isOfficial;

  @override
  String toString() {
    return 'VideoVo(id: $id, name: $name, key: $key, site: $site, size: $size, type: $type, isOfficial: $isOfficial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoVoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isOfficial, isOfficial) ||
                other.isOfficial == isOfficial));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, key, site, size, type, isOfficial);

  /// Create a copy of VideoVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoVoImplCopyWith<_$VideoVoImpl> get copyWith =>
      __$$VideoVoImplCopyWithImpl<_$VideoVoImpl>(this, _$identity);
}

abstract class _VideoVo implements VideoVo {
  factory _VideoVo(
      {required final String id,
      required final String name,
      required final String key,
      required final String site,
      required final int size,
      required final VideoType type,
      required final bool isOfficial}) = _$VideoVoImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get key;
  @override
  String get site;
  @override
  int get size;
  @override
  VideoType get type;
  @override
  bool get isOfficial;

  /// Create a copy of VideoVo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoVoImplCopyWith<_$VideoVoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
