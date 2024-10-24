// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoListDto _$VideoListDtoFromJson(Map<String, dynamic> json) => VideoListDto(
      id: (json['id'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => VideoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
