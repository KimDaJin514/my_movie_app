import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'poster_vo.freezed.dart';

@freezed
class PosterVo with _$PosterVo {
  factory PosterVo({
    required double aspectRatio,
    required double height,
    required int voteCount,
    required double voteAverage,
    required String filePath,
    required double width,
  }) = _PosterVo;
}

extension PosterDtoExtension on PosterDto {
  PosterVo mapper() => PosterVo(
        aspectRatio: aspectRatio,
        height: height,
        voteCount: voteCount,
        voteAverage: voteAverage,
        filePath: filePath,
        width: width,
      );
}

extension PosterDtoListExtension on List<PosterDto> {
  List<PosterVo> mapper() => map((posterDto) => posterDto.mapper()).toList();
}
