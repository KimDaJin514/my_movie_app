import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'paging_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
  genericArgumentFactories: true,
  createToJson: false,
)
class PagingResponse<T extends DataToDomainMapper<DomainT>, DomainT>
    extends DataToDomainMapper<PagingDto<DomainT>> {
  final int? page;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;
  final Map<String, String>? dates;
  final List<T>? results;

  PagingResponse({
    this.page,
    this.totalPages,
    this.totalResults,
    this.dates,
    this.results,
  });

  factory PagingResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
    DomainT Function(Object? json) fromJsonDomainT,
  ) => _$PagingResponseFromJson(json, fromJsonT, fromJsonDomainT);

  @override
  PagingDto<DomainT> mapper() => PagingDto(
        page: page,
        totalPages: totalPages,
        totalResults: totalResults,
        dates: dates,
        results: results?.mapper(),
      );
}
