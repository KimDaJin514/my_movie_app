import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'person_response.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class PersonResponse extends DataToDomainMapper<PersonDto> {
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


  PersonResponse({
    required this.isAdult,
    required this.gender,
    required this.id,
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

  @override
  PersonDto mapper() => PersonDto(
        isAdult: isAdult,
        id: id,
        name: name,
        originalName: originalName,
        profilePath: profilePath,
        characterName: characterName,
        creditId: creditId,
        job: job,
        department: department,
        birthday: birthday,
        placeOfBirth: placeOfBirth,
        gender: gender,
        profiles: profiles,
      );

  factory PersonResponse.fromJson(Map<String, dynamic> json) =>
      _$PersonResponseFromJson(json);
}
