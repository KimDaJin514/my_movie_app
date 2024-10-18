import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/model/movie_dto.dart';

part 'movie_vo.freezed.dart';

@freezed
class MovieVo with _$MovieVo {
  factory MovieVo({
    required bool? isAdult,
    required String? backdropPath,
    required List<int>? genreIds,
    required int? id,
    required String? originalLanguage,
    required String? originalTitle,
    required String? overview,
    required double? popularity,
    required String? posterPath,
    required String? releaseDate,
    required String? title,
    required bool? isVideo,
    required double? voteAverage,
    required int? voteCount,
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
      );
}

extension MovieVoExtension on MovieDto {
  MovieVo mapper() => MovieVo(
        isAdult: adult,
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
        isVideo: video,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}

extension MovieDtoListExtension on List<MovieDto> {
  List<MovieVo> mapper() => map((movieDto) => movieDto.mapper()).toList();
}
