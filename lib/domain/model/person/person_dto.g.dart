// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonDto _$PersonDtoFromJson(Map<String, dynamic> json) => PersonDto(
      isAdult: json['adult'] as bool?,
      id: (json['id'] as num?)?.toInt(),
      gender: (json['gender'] as num?)?.toInt(),
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      profilePath: json['profile_path'] as String?,
      characterName: json['character'] as String?,
      creditId: json['credit_id'] as String?,
      job: json['job'] as String?,
      department: json['known_for_department'] as String?,
      birthday: json['birthday'] as String?,
      placeOfBirth: json['place_of_birth'] as String?,
    );
