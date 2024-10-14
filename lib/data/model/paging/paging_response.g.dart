// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagingResponse<T, DomainT>
    _$PagingResponseFromJson<T extends DataToDomainMapper<DomainT>, DomainT>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
  DomainT Function(Object? json) fromJsonDomainT,
) =>
        PagingResponse<T, DomainT>(
          page: (json['page'] as num?)?.toInt(),
          totalPages: (json['totalPages'] as num?)?.toInt(),
          totalResults: (json['totalResults'] as num?)?.toInt(),
          result: (json['result'] as List<dynamic>?)?.map(fromJsonT).toList(),
        );
