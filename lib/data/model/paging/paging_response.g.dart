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
          totalPages: (json['total_pages'] as num?)?.toInt(),
          totalResults: (json['total_results'] as num?)?.toInt(),
          dates: (json['dates'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          results: (json['results'] as List<dynamic>?)?.map(fromJsonT).toList(),
        );
