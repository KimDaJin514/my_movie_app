// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'external_id_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExternalIdVo {
  int get id => throw _privateConstructorUsedError;
  String get facebookId => throw _privateConstructorUsedError;
  String get instagramId => throw _privateConstructorUsedError;
  String get twitterId => throw _privateConstructorUsedError;

  /// Create a copy of ExternalIdVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExternalIdVoCopyWith<ExternalIdVo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalIdVoCopyWith<$Res> {
  factory $ExternalIdVoCopyWith(
          ExternalIdVo value, $Res Function(ExternalIdVo) then) =
      _$ExternalIdVoCopyWithImpl<$Res, ExternalIdVo>;
  @useResult
  $Res call({int id, String facebookId, String instagramId, String twitterId});
}

/// @nodoc
class _$ExternalIdVoCopyWithImpl<$Res, $Val extends ExternalIdVo>
    implements $ExternalIdVoCopyWith<$Res> {
  _$ExternalIdVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExternalIdVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? facebookId = null,
    Object? instagramId = null,
    Object? twitterId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      facebookId: null == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String,
      instagramId: null == instagramId
          ? _value.instagramId
          : instagramId // ignore: cast_nullable_to_non_nullable
              as String,
      twitterId: null == twitterId
          ? _value.twitterId
          : twitterId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalIdVoImplCopyWith<$Res>
    implements $ExternalIdVoCopyWith<$Res> {
  factory _$$ExternalIdVoImplCopyWith(
          _$ExternalIdVoImpl value, $Res Function(_$ExternalIdVoImpl) then) =
      __$$ExternalIdVoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String facebookId, String instagramId, String twitterId});
}

/// @nodoc
class __$$ExternalIdVoImplCopyWithImpl<$Res>
    extends _$ExternalIdVoCopyWithImpl<$Res, _$ExternalIdVoImpl>
    implements _$$ExternalIdVoImplCopyWith<$Res> {
  __$$ExternalIdVoImplCopyWithImpl(
      _$ExternalIdVoImpl _value, $Res Function(_$ExternalIdVoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExternalIdVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? facebookId = null,
    Object? instagramId = null,
    Object? twitterId = null,
  }) {
    return _then(_$ExternalIdVoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      facebookId: null == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String,
      instagramId: null == instagramId
          ? _value.instagramId
          : instagramId // ignore: cast_nullable_to_non_nullable
              as String,
      twitterId: null == twitterId
          ? _value.twitterId
          : twitterId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExternalIdVoImpl implements _ExternalIdVo {
  _$ExternalIdVoImpl(
      {required this.id,
      required this.facebookId,
      required this.instagramId,
      required this.twitterId});

  @override
  final int id;
  @override
  final String facebookId;
  @override
  final String instagramId;
  @override
  final String twitterId;

  @override
  String toString() {
    return 'ExternalIdVo(id: $id, facebookId: $facebookId, instagramId: $instagramId, twitterId: $twitterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalIdVoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.facebookId, facebookId) ||
                other.facebookId == facebookId) &&
            (identical(other.instagramId, instagramId) ||
                other.instagramId == instagramId) &&
            (identical(other.twitterId, twitterId) ||
                other.twitterId == twitterId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, facebookId, instagramId, twitterId);

  /// Create a copy of ExternalIdVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalIdVoImplCopyWith<_$ExternalIdVoImpl> get copyWith =>
      __$$ExternalIdVoImplCopyWithImpl<_$ExternalIdVoImpl>(this, _$identity);
}

abstract class _ExternalIdVo implements ExternalIdVo {
  factory _ExternalIdVo(
      {required final int id,
      required final String facebookId,
      required final String instagramId,
      required final String twitterId}) = _$ExternalIdVoImpl;

  @override
  int get id;
  @override
  String get facebookId;
  @override
  String get instagramId;
  @override
  String get twitterId;

  /// Create a copy of ExternalIdVo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExternalIdVoImplCopyWith<_$ExternalIdVoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
