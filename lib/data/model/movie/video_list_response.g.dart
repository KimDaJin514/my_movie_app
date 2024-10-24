// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoListResponse _$VideoListResponseFromJson(Map<String, dynamic> json) =>
    VideoListResponse(
      id: (json['id'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => VideoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
