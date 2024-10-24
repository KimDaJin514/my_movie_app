// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poster_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PosterDto _$PosterDtoFromJson(Map<String, dynamic> json) => PosterDto(
      aspectRatio: (json['aspect_ratio'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      voteCount: (json['vote_count'] as num).toInt(),
      voteAverage: (json['vote_average'] as num).toDouble(),
      filePath: json['file_path'] as String,
      width: (json['width'] as num).toDouble(),
    );
