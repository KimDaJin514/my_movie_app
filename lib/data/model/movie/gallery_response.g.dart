// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleryResponse _$GalleryResponseFromJson(Map<String, dynamic> json) =>
    GalleryResponse(
      id: (json['id'] as num).toInt(),
      backdrops:
          (json['backdrops'] as List<dynamic>).map((e) => e as String).toList(),
      logos: (json['logos'] as List<dynamic>).map((e) => e as String).toList(),
      posters: (json['posters'] as List<dynamic>)
          .map((e) => PosterDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
