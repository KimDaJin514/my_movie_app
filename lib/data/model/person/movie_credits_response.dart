import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'movie_credits_response.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class MovieCreditsResponse extends DataToDomainMapper<MovieCreditsDto> {
  final int? id;
  final List<MovieDto>? cast;

  MovieCreditsResponse({
    required this.id,
    required this.cast,
  });

  @override
  MovieCreditsDto mapper() => MovieCreditsDto(
    id: id,
    cast: cast,
  );

  factory MovieCreditsResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieCreditsResponseFromJson(json);
}
