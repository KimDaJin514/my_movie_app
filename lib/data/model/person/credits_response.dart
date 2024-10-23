import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/data/mapper/data_to_domain_mapper.dart';
import 'package:my_movie_app/domain/model/person/credits_dto.dart';
import 'package:my_movie_app/domain/model/person/person_dto.dart';

part 'credits_response.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class CreditsResponse extends DataToDomainMapper<CreditsDto> {
  final int? id;
  final List<PersonDto>? cast;
  final List<PersonDto>? crew;

  CreditsResponse({
    required this.id,
    required this.cast,
    required this.crew,
  });

  @override
  CreditsDto mapper() => CreditsDto(
        id: id,
        cast: cast,
        crew: crew,
      );

  factory CreditsResponse.fromJson(Map<String, dynamic> json) =>
      _$CreditsResponseFromJson(json);
}