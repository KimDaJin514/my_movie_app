import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/presentation/presentation.dart';

part 'gallery_vo.freezed.dart';

@freezed
class GalleryVo with _$GalleryVo {
  factory GalleryVo({
    required int id,
    required List<PosterVo> backdrops,
    required List<PosterVo> logos,
    required List<PosterVo> posters,
  }) = _GalleryVo;

  factory GalleryVo.init() => GalleryVo(
        id: -1,
        backdrops: List.empty(),
        logos: List.empty(),
        posters: List.empty(),
      );
}

extension GalleryDtoExtension on GalleryDto {
  GalleryVo mapper() => GalleryVo(
        id: id,
        backdrops: backdrops.mapper(),
        logos: logos.mapper(),
        posters: posters.mapper(),
      );
}
