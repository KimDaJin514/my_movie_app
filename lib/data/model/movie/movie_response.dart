import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'movie_response.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class MovieResponse extends DataToDomainMapper<MovieDto> {
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
  final String? character;

  MovieResponse({
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
    required this.character,
  });

  @override
  MovieDto mapper() => MovieDto(
        adult: adult,
        backdropPath: backdropPath,
        genreIds: genreIds,
        id: id,
        originalLanguage: originalLanguage,
        originalTitle: originalTitle,
        overview: overview,
        popularity: popularity,
        posterPath: posterPath,
        releaseDate: releaseDate,
        title: title,
        character: character,
        video: video,
        voteAverage: voteAverage,
        voteCount: voteCount,
        budget: budget,
        genres: genres,
        homepage: homepage,
        imdbId: imdbId,
        originCountry: originCountry,
        revenue: revenue,
        runtime: runtime,
        tagline: tagline,
        productionCountries: productionCountries,
      );

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}
