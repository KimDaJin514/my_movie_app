// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poster_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PosterDto _$PosterDtoFromJson(Map<String, dynamic> json) => PosterDto(
      aspectRatio: (json['aspectRatio'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      voteCount: (json['voteCount'] as num).toInt(),
      voteAverage: (json['voteAverage'] as num).toDouble(),
      filePath: json['filePath'] as String,
      width: (json['width'] as num).toDouble(),
    );
