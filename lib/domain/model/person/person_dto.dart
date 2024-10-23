import 'package:json_annotation/json_annotation.dart';

part 'person_dto.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class PersonDto {
  @JsonKey(name: 'adult')
  final bool? isAdult;
  final int? id;
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

  PersonDto({
    required this.isAdult,
    required this.id,
    required this.name,
    required this.originalName,
    required this.profilePath,
    required this.characterName,
    required this.creditId,
    required this.job,
  });

  factory PersonDto.fromJson(Map<String, dynamic> json) =>
      _$PersonDtoFromJson(json);
}
