// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credits_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreditsVo {
  int get id => throw _privateConstructorUsedError;
  List<PersonVo> get cast => throw _privateConstructorUsedError;
  List<PersonVo> get crew => throw _privateConstructorUsedError;

  /// Create a copy of CreditsVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreditsVoCopyWith<CreditsVo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditsVoCopyWith<$Res> {
  factory $CreditsVoCopyWith(CreditsVo value, $Res Function(CreditsVo) then) =
      _$CreditsVoCopyWithImpl<$Res, CreditsVo>;
  @useResult
  $Res call({int id, List<PersonVo> cast, List<PersonVo> crew});
}

/// @nodoc
class _$CreditsVoCopyWithImpl<$Res, $Val extends CreditsVo>
    implements $CreditsVoCopyWith<$Res> {
  _$CreditsVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreditsVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<PersonVo>,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<PersonVo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditsVoImplCopyWith<$Res>
    implements $CreditsVoCopyWith<$Res> {
  factory _$$CreditsVoImplCopyWith(
          _$CreditsVoImpl value, $Res Function(_$CreditsVoImpl) then) =
      __$$CreditsVoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<PersonVo> cast, List<PersonVo> crew});
}

/// @nodoc
class __$$CreditsVoImplCopyWithImpl<$Res>
    extends _$CreditsVoCopyWithImpl<$Res, _$CreditsVoImpl>
    implements _$$CreditsVoImplCopyWith<$Res> {
  __$$CreditsVoImplCopyWithImpl(
      _$CreditsVoImpl _value, $Res Function(_$CreditsVoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreditsVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_$CreditsVoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<PersonVo>,
      crew: null == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<PersonVo>,
    ));
  }
}

/// @nodoc

class _$CreditsVoImpl implements _CreditsVo {
  _$CreditsVoImpl(
      {required this.id,
      required final List<PersonVo> cast,
      required final List<PersonVo> crew})
      : _cast = cast,
        _crew = crew;

  @override
  final int id;
  final List<PersonVo> _cast;
  @override
  List<PersonVo> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  final List<PersonVo> _crew;
  @override
  List<PersonVo> get crew {
    if (_crew is EqualUnmodifiableListView) return _crew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crew);
  }

  @override
  String toString() {
    return 'CreditsVo(id: $id, cast: $cast, crew: $crew)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditsVoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_crew));

  /// Create a copy of CreditsVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditsVoImplCopyWith<_$CreditsVoImpl> get copyWith =>
      __$$CreditsVoImplCopyWithImpl<_$CreditsVoImpl>(this, _$identity);
}

abstract class _CreditsVo implements CreditsVo {
  factory _CreditsVo(
      {required final int id,
      required final List<PersonVo> cast,
      required final List<PersonVo> crew}) = _$CreditsVoImpl;

  @override
  int get id;
  @override
  List<PersonVo> get cast;
  @override
  List<PersonVo> get crew;

  /// Create a copy of CreditsVo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreditsVoImplCopyWith<_$CreditsVoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
