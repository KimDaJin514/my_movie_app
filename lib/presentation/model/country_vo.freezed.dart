// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CountryVo {
  String? get iso => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of CountryVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryVoCopyWith<CountryVo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryVoCopyWith<$Res> {
  factory $CountryVoCopyWith(CountryVo value, $Res Function(CountryVo) then) =
      _$CountryVoCopyWithImpl<$Res, CountryVo>;
  @useResult
  $Res call({String? iso, String? name});
}

/// @nodoc
class _$CountryVoCopyWithImpl<$Res, $Val extends CountryVo>
    implements $CountryVoCopyWith<$Res> {
  _$CountryVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      iso: freezed == iso
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryVoImplCopyWith<$Res>
    implements $CountryVoCopyWith<$Res> {
  factory _$$CountryVoImplCopyWith(
          _$CountryVoImpl value, $Res Function(_$CountryVoImpl) then) =
      __$$CountryVoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? iso, String? name});
}

/// @nodoc
class __$$CountryVoImplCopyWithImpl<$Res>
    extends _$CountryVoCopyWithImpl<$Res, _$CountryVoImpl>
    implements _$$CountryVoImplCopyWith<$Res> {
  __$$CountryVoImplCopyWithImpl(
      _$CountryVoImpl _value, $Res Function(_$CountryVoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso = freezed,
    Object? name = freezed,
  }) {
    return _then(_$CountryVoImpl(
      iso: freezed == iso
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CountryVoImpl implements _CountryVo {
  _$CountryVoImpl({required this.iso, required this.name});

  @override
  final String? iso;
  @override
  final String? name;

  @override
  String toString() {
    return 'CountryVo(iso: $iso, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryVoImpl &&
            (identical(other.iso, iso) || other.iso == iso) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iso, name);

  /// Create a copy of CountryVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryVoImplCopyWith<_$CountryVoImpl> get copyWith =>
      __$$CountryVoImplCopyWithImpl<_$CountryVoImpl>(this, _$identity);
}

abstract class _CountryVo implements CountryVo {
  factory _CountryVo(
      {required final String? iso,
      required final String? name}) = _$CountryVoImpl;

  @override
  String? get iso;
  @override
  String? get name;

  /// Create a copy of CountryVo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryVoImplCopyWith<_$CountryVoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
