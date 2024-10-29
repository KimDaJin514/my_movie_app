// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_credits_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieCreditsDto _$MovieCreditsDtoFromJson(Map<String, dynamic> json) =>
    MovieCreditsDto(
      id: (json['id'] as num?)?.toInt(),
      cast: (json['cast'] as List<dynamic>?)
          ?.map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      crew: (json['crew'] as List<dynamic>?)
          ?.map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
