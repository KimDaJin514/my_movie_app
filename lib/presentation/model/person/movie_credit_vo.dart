import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/presentation/model/movie/movie_vo.dart';

part 'movie_credit_vo.freezed.dart';

@freezed
class MovieCreditVo with _$MovieCreditVo {
  factory MovieCreditVo({
    required int id,
    required List<MovieVo> movies,
  }) = _MovieCreditVo;
}

extension MovieCreditsDtoExtension on MovieCreditsDto {
  MovieCreditVo mapper() => MovieCreditVo(
        id: id ?? -1,
        movies: cast?.mapper() ?? List.empty(),
      );
}

extension MovieCreditsDtoListExtension on List<MovieCreditsDto> {
  List<MovieCreditVo> mapper() =>
      map((movieCreditDto) => movieCreditDto.mapper()).toList();
}
