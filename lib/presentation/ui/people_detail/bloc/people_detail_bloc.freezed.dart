// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'people_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PeopleDetailEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getPersonDetail,
    required TResult Function(int id) getSnsAccount,
    required TResult Function(int id) getPersonImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getPersonDetail,
    TResult? Function(int id)? getSnsAccount,
    TResult? Function(int id)? getPersonImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getPersonDetail,
    TResult Function(int id)? getSnsAccount,
    TResult Function(int id)? getPersonImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPersonDetail value) getPersonDetail,
    required TResult Function(GetSnsAccount value) getSnsAccount,
    required TResult Function(GetPersonImages value) getPersonImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPersonDetail value)? getPersonDetail,
    TResult? Function(GetSnsAccount value)? getSnsAccount,
    TResult? Function(GetPersonImages value)? getPersonImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPersonDetail value)? getPersonDetail,
    TResult Function(GetSnsAccount value)? getSnsAccount,
    TResult Function(GetPersonImages value)? getPersonImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PeopleDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeopleDetailEventCopyWith<PeopleDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleDetailEventCopyWith<$Res> {
  factory $PeopleDetailEventCopyWith(
          PeopleDetailEvent value, $Res Function(PeopleDetailEvent) then) =
      _$PeopleDetailEventCopyWithImpl<$Res, PeopleDetailEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$PeopleDetailEventCopyWithImpl<$Res, $Val extends PeopleDetailEvent>
    implements $PeopleDetailEventCopyWith<$Res> {
  _$PeopleDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PeopleDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPersonDetailImplCopyWith<$Res>
    implements $PeopleDetailEventCopyWith<$Res> {
  factory _$$GetPersonDetailImplCopyWith(_$GetPersonDetailImpl value,
          $Res Function(_$GetPersonDetailImpl) then) =
      __$$GetPersonDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetPersonDetailImplCopyWithImpl<$Res>
    extends _$PeopleDetailEventCopyWithImpl<$Res, _$GetPersonDetailImpl>
    implements _$$GetPersonDetailImplCopyWith<$Res> {
  __$$GetPersonDetailImplCopyWithImpl(
      _$GetPersonDetailImpl _value, $Res Function(_$GetPersonDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of PeopleDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetPersonDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetPersonDetailImpl implements GetPersonDetail {
  const _$GetPersonDetailImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'PeopleDetailEvent.getPersonDetail(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPersonDetailImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PeopleDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPersonDetailImplCopyWith<_$GetPersonDetailImpl> get copyWith =>
      __$$GetPersonDetailImplCopyWithImpl<_$GetPersonDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getPersonDetail,
    required TResult Function(int id) getSnsAccount,
    required TResult Function(int id) getPersonImages,
  }) {
    return getPersonDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getPersonDetail,
    TResult? Function(int id)? getSnsAccount,
    TResult? Function(int id)? getPersonImages,
  }) {
    return getPersonDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getPersonDetail,
    TResult Function(int id)? getSnsAccount,
    TResult Function(int id)? getPersonImages,
    required TResult orElse(),
  }) {
    if (getPersonDetail != null) {
      return getPersonDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPersonDetail value) getPersonDetail,
    required TResult Function(GetSnsAccount value) getSnsAccount,
    required TResult Function(GetPersonImages value) getPersonImages,
  }) {
    return getPersonDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPersonDetail value)? getPersonDetail,
    TResult? Function(GetSnsAccount value)? getSnsAccount,
    TResult? Function(GetPersonImages value)? getPersonImages,
  }) {
    return getPersonDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPersonDetail value)? getPersonDetail,
    TResult Function(GetSnsAccount value)? getSnsAccount,
    TResult Function(GetPersonImages value)? getPersonImages,
    required TResult orElse(),
  }) {
    if (getPersonDetail != null) {
      return getPersonDetail(this);
    }
    return orElse();
  }
}

abstract class GetPersonDetail implements PeopleDetailEvent {
  const factory GetPersonDetail({required final int id}) =
      _$GetPersonDetailImpl;

  @override
  int get id;

  /// Create a copy of PeopleDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPersonDetailImplCopyWith<_$GetPersonDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSnsAccountImplCopyWith<$Res>
    implements $PeopleDetailEventCopyWith<$Res> {
  factory _$$GetSnsAccountImplCopyWith(
          _$GetSnsAccountImpl value, $Res Function(_$GetSnsAccountImpl) then) =
      __$$GetSnsAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetSnsAccountImplCopyWithImpl<$Res>
    extends _$PeopleDetailEventCopyWithImpl<$Res, _$GetSnsAccountImpl>
    implements _$$GetSnsAccountImplCopyWith<$Res> {
  __$$GetSnsAccountImplCopyWithImpl(
      _$GetSnsAccountImpl _value, $Res Function(_$GetSnsAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of PeopleDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetSnsAccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSnsAccountImpl implements GetSnsAccount {
  const _$GetSnsAccountImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'PeopleDetailEvent.getSnsAccount(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSnsAccountImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PeopleDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSnsAccountImplCopyWith<_$GetSnsAccountImpl> get copyWith =>
      __$$GetSnsAccountImplCopyWithImpl<_$GetSnsAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getPersonDetail,
    required TResult Function(int id) getSnsAccount,
    required TResult Function(int id) getPersonImages,
  }) {
    return getSnsAccount(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getPersonDetail,
    TResult? Function(int id)? getSnsAccount,
    TResult? Function(int id)? getPersonImages,
  }) {
    return getSnsAccount?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getPersonDetail,
    TResult Function(int id)? getSnsAccount,
    TResult Function(int id)? getPersonImages,
    required TResult orElse(),
  }) {
    if (getSnsAccount != null) {
      return getSnsAccount(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPersonDetail value) getPersonDetail,
    required TResult Function(GetSnsAccount value) getSnsAccount,
    required TResult Function(GetPersonImages value) getPersonImages,
  }) {
    return getSnsAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPersonDetail value)? getPersonDetail,
    TResult? Function(GetSnsAccount value)? getSnsAccount,
    TResult? Function(GetPersonImages value)? getPersonImages,
  }) {
    return getSnsAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPersonDetail value)? getPersonDetail,
    TResult Function(GetSnsAccount value)? getSnsAccount,
    TResult Function(GetPersonImages value)? getPersonImages,
    required TResult orElse(),
  }) {
    if (getSnsAccount != null) {
      return getSnsAccount(this);
    }
    return orElse();
  }
}

abstract class GetSnsAccount implements PeopleDetailEvent {
  const factory GetSnsAccount({required final int id}) = _$GetSnsAccountImpl;

  @override
  int get id;

  /// Create a copy of PeopleDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSnsAccountImplCopyWith<_$GetSnsAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPersonImagesImplCopyWith<$Res>
    implements $PeopleDetailEventCopyWith<$Res> {
  factory _$$GetPersonImagesImplCopyWith(_$GetPersonImagesImpl value,
          $Res Function(_$GetPersonImagesImpl) then) =
      __$$GetPersonImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetPersonImagesImplCopyWithImpl<$Res>
    extends _$PeopleDetailEventCopyWithImpl<$Res, _$GetPersonImagesImpl>
    implements _$$GetPersonImagesImplCopyWith<$Res> {
  __$$GetPersonImagesImplCopyWithImpl(
      _$GetPersonImagesImpl _value, $Res Function(_$GetPersonImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PeopleDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetPersonImagesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetPersonImagesImpl implements GetPersonImages {
  const _$GetPersonImagesImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'PeopleDetailEvent.getPersonImages(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPersonImagesImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PeopleDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPersonImagesImplCopyWith<_$GetPersonImagesImpl> get copyWith =>
      __$$GetPersonImagesImplCopyWithImpl<_$GetPersonImagesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getPersonDetail,
    required TResult Function(int id) getSnsAccount,
    required TResult Function(int id) getPersonImages,
  }) {
    return getPersonImages(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getPersonDetail,
    TResult? Function(int id)? getSnsAccount,
    TResult? Function(int id)? getPersonImages,
  }) {
    return getPersonImages?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getPersonDetail,
    TResult Function(int id)? getSnsAccount,
    TResult Function(int id)? getPersonImages,
    required TResult orElse(),
  }) {
    if (getPersonImages != null) {
      return getPersonImages(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPersonDetail value) getPersonDetail,
    required TResult Function(GetSnsAccount value) getSnsAccount,
    required TResult Function(GetPersonImages value) getPersonImages,
  }) {
    return getPersonImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPersonDetail value)? getPersonDetail,
    TResult? Function(GetSnsAccount value)? getSnsAccount,
    TResult? Function(GetPersonImages value)? getPersonImages,
  }) {
    return getPersonImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPersonDetail value)? getPersonDetail,
    TResult Function(GetSnsAccount value)? getSnsAccount,
    TResult Function(GetPersonImages value)? getPersonImages,
    required TResult orElse(),
  }) {
    if (getPersonImages != null) {
      return getPersonImages(this);
    }
    return orElse();
  }
}

abstract class GetPersonImages implements PeopleDetailEvent {
  const factory GetPersonImages({required final int id}) =
      _$GetPersonImagesImpl;

  @override
  int get id;

  /// Create a copy of PeopleDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPersonImagesImplCopyWith<_$GetPersonImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PeopleDetailState {
  PersonVo get personVo => throw _privateConstructorUsedError;
  ExternalIdVo get externalIdVo => throw _privateConstructorUsedError;
  List<PosterVo> get images => throw _privateConstructorUsedError;

  /// Create a copy of PeopleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeopleDetailStateCopyWith<PeopleDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleDetailStateCopyWith<$Res> {
  factory $PeopleDetailStateCopyWith(
          PeopleDetailState value, $Res Function(PeopleDetailState) then) =
      _$PeopleDetailStateCopyWithImpl<$Res, PeopleDetailState>;
  @useResult
  $Res call(
      {PersonVo personVo, ExternalIdVo externalIdVo, List<PosterVo> images});

  $PersonVoCopyWith<$Res> get personVo;
  $ExternalIdVoCopyWith<$Res> get externalIdVo;
}

/// @nodoc
class _$PeopleDetailStateCopyWithImpl<$Res, $Val extends PeopleDetailState>
    implements $PeopleDetailStateCopyWith<$Res> {
  _$PeopleDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PeopleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personVo = null,
    Object? externalIdVo = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      personVo: null == personVo
          ? _value.personVo
          : personVo // ignore: cast_nullable_to_non_nullable
              as PersonVo,
      externalIdVo: null == externalIdVo
          ? _value.externalIdVo
          : externalIdVo // ignore: cast_nullable_to_non_nullable
              as ExternalIdVo,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PosterVo>,
    ) as $Val);
  }

  /// Create a copy of PeopleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonVoCopyWith<$Res> get personVo {
    return $PersonVoCopyWith<$Res>(_value.personVo, (value) {
      return _then(_value.copyWith(personVo: value) as $Val);
    });
  }

  /// Create a copy of PeopleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExternalIdVoCopyWith<$Res> get externalIdVo {
    return $ExternalIdVoCopyWith<$Res>(_value.externalIdVo, (value) {
      return _then(_value.copyWith(externalIdVo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PeopleDetailStateImplCopyWith<$Res>
    implements $PeopleDetailStateCopyWith<$Res> {
  factory _$$PeopleDetailStateImplCopyWith(_$PeopleDetailStateImpl value,
          $Res Function(_$PeopleDetailStateImpl) then) =
      __$$PeopleDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PersonVo personVo, ExternalIdVo externalIdVo, List<PosterVo> images});

  @override
  $PersonVoCopyWith<$Res> get personVo;
  @override
  $ExternalIdVoCopyWith<$Res> get externalIdVo;
}

/// @nodoc
class __$$PeopleDetailStateImplCopyWithImpl<$Res>
    extends _$PeopleDetailStateCopyWithImpl<$Res, _$PeopleDetailStateImpl>
    implements _$$PeopleDetailStateImplCopyWith<$Res> {
  __$$PeopleDetailStateImplCopyWithImpl(_$PeopleDetailStateImpl _value,
      $Res Function(_$PeopleDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PeopleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personVo = null,
    Object? externalIdVo = null,
    Object? images = null,
  }) {
    return _then(_$PeopleDetailStateImpl(
      personVo: null == personVo
          ? _value.personVo
          : personVo // ignore: cast_nullable_to_non_nullable
              as PersonVo,
      externalIdVo: null == externalIdVo
          ? _value.externalIdVo
          : externalIdVo // ignore: cast_nullable_to_non_nullable
              as ExternalIdVo,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PosterVo>,
    ));
  }
}

/// @nodoc

class _$PeopleDetailStateImpl implements _PeopleDetailState {
  _$PeopleDetailStateImpl(
      {required this.personVo,
      required this.externalIdVo,
      required final List<PosterVo> images})
      : _images = images;

  @override
  final PersonVo personVo;
  @override
  final ExternalIdVo externalIdVo;
  final List<PosterVo> _images;
  @override
  List<PosterVo> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'PeopleDetailState(personVo: $personVo, externalIdVo: $externalIdVo, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeopleDetailStateImpl &&
            (identical(other.personVo, personVo) ||
                other.personVo == personVo) &&
            (identical(other.externalIdVo, externalIdVo) ||
                other.externalIdVo == externalIdVo) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(runtimeType, personVo, externalIdVo,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of PeopleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeopleDetailStateImplCopyWith<_$PeopleDetailStateImpl> get copyWith =>
      __$$PeopleDetailStateImplCopyWithImpl<_$PeopleDetailStateImpl>(
          this, _$identity);
}

abstract class _PeopleDetailState implements PeopleDetailState {
  factory _PeopleDetailState(
      {required final PersonVo personVo,
      required final ExternalIdVo externalIdVo,
      required final List<PosterVo> images}) = _$PeopleDetailStateImpl;

  @override
  PersonVo get personVo;
  @override
  ExternalIdVo get externalIdVo;
  @override
  List<PosterVo> get images;

  /// Create a copy of PeopleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeopleDetailStateImplCopyWith<_$PeopleDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
