import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'movie_credits_dto.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class MovieCreditsDto {
  final int? id;
  final List<MovieDto>? cast;
  final List<MovieDto>? crew;

  MovieCreditsDto({
    required this.id,
    required this.cast,
    required this.crew,
  });

  factory MovieCreditsDto.fromJson(Map<String, dynamic> json) =>
      _$MovieCreditsDtoFromJson(json);
}
