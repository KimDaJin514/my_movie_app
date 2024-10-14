class PagingDto<T> {
  final int? page;
  final int? totalPages;
  final int? totalResults;
  final List<T>? result;

  PagingDto({
    this.page,
    this.totalPages,
    this.totalResults,
    this.result,
  });
}
