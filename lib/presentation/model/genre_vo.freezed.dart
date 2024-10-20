// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenreVo {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of GenreVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreVoCopyWith<GenreVo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreVoCopyWith<$Res> {
  factory $GenreVoCopyWith(GenreVo value, $Res Function(GenreVo) then) =
      _$GenreVoCopyWithImpl<$Res, GenreVo>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$GenreVoCopyWithImpl<$Res, $Val extends GenreVo>
    implements $GenreVoCopyWith<$Res> {
  _$GenreVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreVoImplCopyWith<$Res> implements $GenreVoCopyWith<$Res> {
  factory _$$GenreVoImplCopyWith(
          _$GenreVoImpl value, $Res Function(_$GenreVoImpl) then) =
      __$$GenreVoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$GenreVoImplCopyWithImpl<$Res>
    extends _$GenreVoCopyWithImpl<$Res, _$GenreVoImpl>
    implements _$$GenreVoImplCopyWith<$Res> {
  __$$GenreVoImplCopyWithImpl(
      _$GenreVoImpl _value, $Res Function(_$GenreVoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$GenreVoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GenreVoImpl implements _GenreVo {
  _$GenreVoImpl({required this.id, required this.name});

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'GenreVo(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreVoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GenreVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreVoImplCopyWith<_$GenreVoImpl> get copyWith =>
      __$$GenreVoImplCopyWithImpl<_$GenreVoImpl>(this, _$identity);
}

abstract class _GenreVo implements GenreVo {
  factory _GenreVo({required final int? id, required final String? name}) =
      _$GenreVoImpl;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of GenreVo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreVoImplCopyWith<_$GenreVoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
