import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/config/country_config.dart';
import 'package:my_movie_app/domain/model/movie/movie_dto.dart';
import 'package:my_movie_app/presentation/model/movie/country_vo.dart';
import 'package:my_movie_app/presentation/model/movie/genre_vo.dart';

part 'movie_vo.freezed.dart';

@freezed
class MovieVo with _$MovieVo {
  factory MovieVo({
    required bool isAdult,
    required String backdropPath,
    required List<int> genreIds,
    required int id,
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    required double popularity,
    required String posterPath,
    required String releaseDate,
    required String title,
    required bool isVideo,
    required double voteAverage,
    required int voteCount,
    required int budget,
    required List<GenreVo> genres,
    required String homepage,
    required String imdbId,
    required List<String> originCountry,
    required int revenue,
    required int runtime,
    required String tagline,
    required List<CountryVo> productionCountries,
  }) = _MovieVo;

  factory MovieVo.init() => MovieVo(
        isAdult: false,
        backdropPath: '',
        genreIds: List.empty(),
        id: -1,
        originalLanguage: '',
        originalTitle: '',
        overview: '',
        popularity: 0,
        posterPath: '',
        releaseDate: '',
        title: '',
        isVideo: false,
        voteAverage: 0,
        voteCount: 0,
        budget: 0,
        genres: List.empty(),
        homepage: '',
        imdbId: '',
        originCountry: List.empty(),
        revenue: 0,
        runtime: 0,
        tagline: '',
        productionCountries: List.empty(),
      );
}

extension MovieVoExtension on MovieDto {
  MovieVo mapper() => MovieVo(
        isAdult: adult ?? false,
        backdropPath: backdropPath ?? '',
        genreIds: genreIds ?? List.empty(),
        id: id ?? -1,
        originalLanguage: originalLanguage ?? '',
        originalTitle: originalTitle ?? '',
        overview: overview ?? '',
        popularity: popularity ?? 0,
        posterPath: posterPath ?? '',
        releaseDate: releaseDate ?? '',
        title: title ?? '',
        isVideo: video ?? false,
        voteAverage: voteAverage ?? 0,
        voteCount: voteCount ?? 0,
        budget: budget ?? 0,
        genres: genres?.mapper() ?? List.empty(),
        homepage: homepage ?? '',
        imdbId: imdbId ?? '',
        originCountry: originCountry?.mapper() ?? List.empty(),
        revenue: revenue ?? 0,
        runtime: runtime ?? 0,
        tagline: tagline ?? '',
        productionCountries: productionCountries?.mapper() ?? List.empty(),
      );
}

extension MovieDtoListExtension on List<MovieDto> {
  List<MovieVo> mapper() => map((movieDto) => movieDto.mapper()).toList();
}

extension CountryCodeExtension on List<String> {
  List<String> mapper() {
    return map(
      (codeString) =>
          CountryConfig.instance.countryMap[codeString] ?? codeString,
    ).toList();
  }
}
