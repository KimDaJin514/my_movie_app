import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/domain/model/country_dto.dart';
import 'package:my_movie_app/domain/model/genre_dto.dart';

part 'movie_dto.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class MovieDto {
  final bool? adult;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'genre_ids')
  final List<int>? genreIds;
  final int? id;
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  final String? title;
  final bool? video;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  final int? budget;
  final List<GenreDto>? genres;
  final String? homepage;
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  @JsonKey(name: 'origin_country')
  final List<String>? originCountry;
  final int? revenue;
  final int? runtime;
  final String? tagline;
  @JsonKey(name: 'production_countries')
  final List<CountryDto>? productionCountries;

  MovieDto({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
    required this.budget,
    required this.genres,
    required this.homepage,
    required this.imdbId,
    required this.originCountry,
    required this.revenue,
    required this.runtime,
    required this.tagline,
    required this.productionCountries,
  });

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);
}
