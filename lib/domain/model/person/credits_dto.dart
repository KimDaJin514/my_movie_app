import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'credits_dto.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class CreditsDto {
  final int? id;
  final List<PersonDto>? cast;
  final List<PersonDto>? crew;

  CreditsDto({
    required this.id,
    required this.cast,
    required this.crew,
  });

  factory CreditsDto.fromJson(Map<String, dynamic> json) =>
      _$CreditsDtoFromJson(json);
}
