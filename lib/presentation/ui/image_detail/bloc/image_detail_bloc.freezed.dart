// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeSelectedImageIndex,
    required TResult Function(bool isShowInfoView) onImageClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeSelectedImageIndex,
    TResult? Function(bool isShowInfoView)? onImageClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeSelectedImageIndex,
    TResult Function(bool isShowInfoView)? onImageClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSelectedImageIndex value)
        changeSelectedImageIndex,
    required TResult Function(OnImageClick value) onImageClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSelectedImageIndex value)? changeSelectedImageIndex,
    TResult? Function(OnImageClick value)? onImageClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSelectedImageIndex value)? changeSelectedImageIndex,
    TResult Function(OnImageClick value)? onImageClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDetailEventCopyWith<$Res> {
  factory $ImageDetailEventCopyWith(
          ImageDetailEvent value, $Res Function(ImageDetailEvent) then) =
      _$ImageDetailEventCopyWithImpl<$Res, ImageDetailEvent>;
}

/// @nodoc
class _$ImageDetailEventCopyWithImpl<$Res, $Val extends ImageDetailEvent>
    implements $ImageDetailEventCopyWith<$Res> {
  _$ImageDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeSelectedImageIndexImplCopyWith<$Res> {
  factory _$$ChangeSelectedImageIndexImplCopyWith(
          _$ChangeSelectedImageIndexImpl value,
          $Res Function(_$ChangeSelectedImageIndexImpl) then) =
      __$$ChangeSelectedImageIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeSelectedImageIndexImplCopyWithImpl<$Res>
    extends _$ImageDetailEventCopyWithImpl<$Res, _$ChangeSelectedImageIndexImpl>
    implements _$$ChangeSelectedImageIndexImplCopyWith<$Res> {
  __$$ChangeSelectedImageIndexImplCopyWithImpl(
      _$ChangeSelectedImageIndexImpl _value,
      $Res Function(_$ChangeSelectedImageIndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeSelectedImageIndexImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeSelectedImageIndexImpl implements ChangeSelectedImageIndex {
  const _$ChangeSelectedImageIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ImageDetailEvent.changeSelectedImageIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedImageIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of ImageDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSelectedImageIndexImplCopyWith<_$ChangeSelectedImageIndexImpl>
      get copyWith => __$$ChangeSelectedImageIndexImplCopyWithImpl<
          _$ChangeSelectedImageIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeSelectedImageIndex,
    required TResult Function(bool isShowInfoView) onImageClick,
  }) {
    return changeSelectedImageIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeSelectedImageIndex,
    TResult? Function(bool isShowInfoView)? onImageClick,
  }) {
    return changeSelectedImageIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeSelectedImageIndex,
    TResult Function(bool isShowInfoView)? onImageClick,
    required TResult orElse(),
  }) {
    if (changeSelectedImageIndex != null) {
      return changeSelectedImageIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSelectedImageIndex value)
        changeSelectedImageIndex,
    required TResult Function(OnImageClick value) onImageClick,
  }) {
    return changeSelectedImageIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSelectedImageIndex value)? changeSelectedImageIndex,
    TResult? Function(OnImageClick value)? onImageClick,
  }) {
    return changeSelectedImageIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSelectedImageIndex value)? changeSelectedImageIndex,
    TResult Function(OnImageClick value)? onImageClick,
    required TResult orElse(),
  }) {
    if (changeSelectedImageIndex != null) {
      return changeSelectedImageIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectedImageIndex implements ImageDetailEvent {
  const factory ChangeSelectedImageIndex(final int index) =
      _$ChangeSelectedImageIndexImpl;

  int get index;

  /// Create a copy of ImageDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSelectedImageIndexImplCopyWith<_$ChangeSelectedImageIndexImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnImageClickImplCopyWith<$Res> {
  factory _$$OnImageClickImplCopyWith(
          _$OnImageClickImpl value, $Res Function(_$OnImageClickImpl) then) =
      __$$OnImageClickImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isShowInfoView});
}

/// @nodoc
class __$$OnImageClickImplCopyWithImpl<$Res>
    extends _$ImageDetailEventCopyWithImpl<$Res, _$OnImageClickImpl>
    implements _$$OnImageClickImplCopyWith<$Res> {
  __$$OnImageClickImplCopyWithImpl(
      _$OnImageClickImpl _value, $Res Function(_$OnImageClickImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowInfoView = null,
  }) {
    return _then(_$OnImageClickImpl(
      null == isShowInfoView
          ? _value.isShowInfoView
          : isShowInfoView // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnImageClickImpl implements OnImageClick {
  const _$OnImageClickImpl(this.isShowInfoView);

  @override
  final bool isShowInfoView;

  @override
  String toString() {
    return 'ImageDetailEvent.onImageClick(isShowInfoView: $isShowInfoView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnImageClickImpl &&
            (identical(other.isShowInfoView, isShowInfoView) ||
                other.isShowInfoView == isShowInfoView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowInfoView);

  /// Create a copy of ImageDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnImageClickImplCopyWith<_$OnImageClickImpl> get copyWith =>
      __$$OnImageClickImplCopyWithImpl<_$OnImageClickImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeSelectedImageIndex,
    required TResult Function(bool isShowInfoView) onImageClick,
  }) {
    return onImageClick(isShowInfoView);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeSelectedImageIndex,
    TResult? Function(bool isShowInfoView)? onImageClick,
  }) {
    return onImageClick?.call(isShowInfoView);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeSelectedImageIndex,
    TResult Function(bool isShowInfoView)? onImageClick,
    required TResult orElse(),
  }) {
    if (onImageClick != null) {
      return onImageClick(isShowInfoView);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeSelectedImageIndex value)
        changeSelectedImageIndex,
    required TResult Function(OnImageClick value) onImageClick,
  }) {
    return onImageClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeSelectedImageIndex value)? changeSelectedImageIndex,
    TResult? Function(OnImageClick value)? onImageClick,
  }) {
    return onImageClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeSelectedImageIndex value)? changeSelectedImageIndex,
    TResult Function(OnImageClick value)? onImageClick,
    required TResult orElse(),
  }) {
    if (onImageClick != null) {
      return onImageClick(this);
    }
    return orElse();
  }
}

abstract class OnImageClick implements ImageDetailEvent {
  const factory OnImageClick(final bool isShowInfoView) = _$OnImageClickImpl;

  bool get isShowInfoView;

  /// Create a copy of ImageDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnImageClickImplCopyWith<_$OnImageClickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageDetailState {
  int get selectedIndex => throw _privateConstructorUsedError;
  bool get isShowInfoView => throw _privateConstructorUsedError;

  /// Create a copy of ImageDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageDetailStateCopyWith<ImageDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDetailStateCopyWith<$Res> {
  factory $ImageDetailStateCopyWith(
          ImageDetailState value, $Res Function(ImageDetailState) then) =
      _$ImageDetailStateCopyWithImpl<$Res, ImageDetailState>;
  @useResult
  $Res call({int selectedIndex, bool isShowInfoView});
}

/// @nodoc
class _$ImageDetailStateCopyWithImpl<$Res, $Val extends ImageDetailState>
    implements $ImageDetailStateCopyWith<$Res> {
  _$ImageDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? isShowInfoView = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isShowInfoView: null == isShowInfoView
          ? _value.isShowInfoView
          : isShowInfoView // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDetailStateImplCopyWith<$Res>
    implements $ImageDetailStateCopyWith<$Res> {
  factory _$$ImageDetailStateImplCopyWith(_$ImageDetailStateImpl value,
          $Res Function(_$ImageDetailStateImpl) then) =
      __$$ImageDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex, bool isShowInfoView});
}

/// @nodoc
class __$$ImageDetailStateImplCopyWithImpl<$Res>
    extends _$ImageDetailStateCopyWithImpl<$Res, _$ImageDetailStateImpl>
    implements _$$ImageDetailStateImplCopyWith<$Res> {
  __$$ImageDetailStateImplCopyWithImpl(_$ImageDetailStateImpl _value,
      $Res Function(_$ImageDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? isShowInfoView = null,
  }) {
    return _then(_$ImageDetailStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isShowInfoView: null == isShowInfoView
          ? _value.isShowInfoView
          : isShowInfoView // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ImageDetailStateImpl implements _ImageDetailState {
  _$ImageDetailStateImpl(
      {required this.selectedIndex, required this.isShowInfoView});

  @override
  final int selectedIndex;
  @override
  final bool isShowInfoView;

  @override
  String toString() {
    return 'ImageDetailState(selectedIndex: $selectedIndex, isShowInfoView: $isShowInfoView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDetailStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.isShowInfoView, isShowInfoView) ||
                other.isShowInfoView == isShowInfoView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex, isShowInfoView);

  /// Create a copy of ImageDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDetailStateImplCopyWith<_$ImageDetailStateImpl> get copyWith =>
      __$$ImageDetailStateImplCopyWithImpl<_$ImageDetailStateImpl>(
          this, _$identity);
}

abstract class _ImageDetailState implements ImageDetailState {
  factory _ImageDetailState(
      {required final int selectedIndex,
      required final bool isShowInfoView}) = _$ImageDetailStateImpl;

  @override
  int get selectedIndex;
  @override
  bool get isShowInfoView;

  /// Create a copy of ImageDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageDetailStateImplCopyWith<_$ImageDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
