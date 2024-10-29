import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'person_dto.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class PersonDto {
  @JsonKey(name: 'adult')
  final bool? isAdult;
  final int? id;
  final int? gender;
  final String? name;
  @JsonKey(name: 'original_name')
  final String? originalName;
  @JsonKey(name: 'profile_path')
  final String? profilePath;
  @JsonKey(name: 'character')
  final String? characterName;
  @JsonKey(name: 'credit_id')
  final String? creditId;
  final String? job;
  @JsonKey(name: 'known_for_department')
  final String? department;
  final String? birthday;
  @JsonKey(name: 'place_of_birth')
  final String? placeOfBirth;
  List<PosterDto>? profiles;

  PersonDto({
    required this.isAdult,
    required this.id,
    required this.gender,
    required this.name,
    required this.originalName,
    required this.profilePath,
    required this.characterName,
    required this.creditId,
    required this.job,
    required this.department,
    required this.birthday,
    required this.placeOfBirth,
    required this.profiles,
  });

  factory PersonDto.fromJson(Map<String, dynamic> json) =>
      _$PersonDtoFromJson(json);
}
