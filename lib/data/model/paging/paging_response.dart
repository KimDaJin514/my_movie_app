import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/data/mapper/data_to_domain_mapper.dart';
import 'package:my_movie_app/domain/model/paging/paging_dto.dart';

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
  final List<T>? results;

  PagingResponse({
    this.page,
    this.totalPages,
    this.totalResults,
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
        results: results?.mapper(),
      );
}