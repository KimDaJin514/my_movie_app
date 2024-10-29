// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonResponse _$PersonResponseFromJson(Map<String, dynamic> json) =>
    PersonResponse(
      isAdult: json['adult'] as bool?,
      gender: (json['gender'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      profilePath: json['profile_path'] as String?,
      characterName: json['character'] as String?,
      creditId: json['credit_id'] as String?,
      job: json['job'] as String?,
      department: json['known_for_department'] as String?,
      birthday: json['birthday'] as String?,
      placeOfBirth: json['place_of_birth'] as String?,
      profiles: (json['profiles'] as List<dynamic>?)
          ?.map((e) => PosterDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
