import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'genre_vo.freezed.dart';

@freezed
class GenreVo with _$GenreVo {
  factory GenreVo({
    required int id,
    required String name,
  }) = _GenreVo;

  factory GenreVo.init() => GenreVo(
    id: -1,
    name: '',
  );
}

extension GenreDtoExtension on GenreDto {
  GenreVo mapper() => GenreVo(
    id: id,
    name: name,
  );
}

extension GenreDtoListExtension on List<GenreDto> {
  List<GenreVo> mapper() => map((genreDto) => genreDto.mapper()).toList();
}
