// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paging_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PagingVo<T> {
  int get page => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  List<T> get result => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of PagingVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PagingVoCopyWith<T, PagingVo<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingVoCopyWith<T, $Res> {
  factory $PagingVoCopyWith(
          PagingVo<T> value, $Res Function(PagingVo<T>) then) =
      _$PagingVoCopyWithImpl<T, $Res, PagingVo<T>>;
  @useResult
  $Res call(
      {int page,
      int totalPages,
      int totalResults,
      List<T> result,
      bool isLoading});
}

/// @nodoc
class _$PagingVoCopyWithImpl<T, $Res, $Val extends PagingVo<T>>
    implements $PagingVoCopyWith<T, $Res> {
  _$PagingVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PagingVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? result = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<T>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagingVoImplCopyWith<T, $Res>
    implements $PagingVoCopyWith<T, $Res> {
  factory _$$PagingVoImplCopyWith(
          _$PagingVoImpl<T> value, $Res Function(_$PagingVoImpl<T>) then) =
      __$$PagingVoImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int totalPages,
      int totalResults,
      List<T> result,
      bool isLoading});
}

/// @nodoc
class __$$PagingVoImplCopyWithImpl<T, $Res>
    extends _$PagingVoCopyWithImpl<T, $Res, _$PagingVoImpl<T>>
    implements _$$PagingVoImplCopyWith<T, $Res> {
  __$$PagingVoImplCopyWithImpl(
      _$PagingVoImpl<T> _value, $Res Function(_$PagingVoImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PagingVo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? result = null,
    Object? isLoading = null,
  }) {
    return _then(_$PagingVoImpl<T>(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<T>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PagingVoImpl<T> implements _PagingVo<T> {
  _$PagingVoImpl(
      {required this.page,
      required this.totalPages,
      required this.totalResults,
      required final List<T> result,
      required this.isLoading})
      : _result = result;

  @override
  final int page;
  @override
  final int totalPages;
  @override
  final int totalResults;
  final List<T> _result;
  @override
  List<T> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'PagingVo<$T>(page: $page, totalPages: $totalPages, totalResults: $totalResults, result: $result, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagingVoImpl<T> &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, totalPages, totalResults,
      const DeepCollectionEquality().hash(_result), isLoading);

  /// Create a copy of PagingVo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PagingVoImplCopyWith<T, _$PagingVoImpl<T>> get copyWith =>
      __$$PagingVoImplCopyWithImpl<T, _$PagingVoImpl<T>>(this, _$identity);
}

abstract class _PagingVo<T> implements PagingVo<T> {
  factory _PagingVo(
      {required final int page,
      required final int totalPages,
      required final int totalResults,
      required final List<T> result,
      required final bool isLoading}) = _$PagingVoImpl<T>;

  @override
  int get page;
  @override
  int get totalPages;
  @override
  int get totalResults;
  @override
  List<T> get result;
  @override
  bool get isLoading;

  /// Create a copy of PagingVo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PagingVoImplCopyWith<T, _$PagingVoImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
