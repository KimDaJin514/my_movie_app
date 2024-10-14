import 'package:freezed_annotation/freezed_annotation.dart';

part 'paging_vo.freezed.dart';

@freezed
class PagingVo<T> with _$PagingVo {
  factory PagingVo({
    required int page,
    required int totalPages,
    required int totalResults,
    required List<T> result,
    required bool isLoading,
  }) = _PagingVo;

  factory PagingVo.init({
    int page = 1,
    int totalPages = 0,
    int totalResults = 0,
    List<T> result = const [],
    bool isLoading = false,
  }) =>
      PagingVo(
        page: page,
        totalPages: totalPages,
        totalResults: totalResults,
        result: result,
        isLoading: isLoading,
      );
}
