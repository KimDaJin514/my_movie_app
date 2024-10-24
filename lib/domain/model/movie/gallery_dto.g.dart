// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleryDto _$GalleryDtoFromJson(Map<String, dynamic> json) => GalleryDto(
      id: (json['id'] as num).toInt(),
      backdrops: (json['backdrops'] as List<dynamic>)
          .map((e) => PosterDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      logos: (json['logos'] as List<dynamic>)
          .map((e) => PosterDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      posters: (json['posters'] as List<dynamic>)
          .map((e) => PosterDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
