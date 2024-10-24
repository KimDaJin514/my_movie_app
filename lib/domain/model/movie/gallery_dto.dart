import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'gallery_dto.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class GalleryDto {
  final int id;
  final List<String> backdrops;
  final List<String> logos;
  final List<PosterDto> posters;

  GalleryDto({
    required this.id,
    required this.backdrops,
    required this.logos,
    required this.posters,
  });

  factory GalleryDto.fromJson(Map<String, dynamic> json) =>
      _$GalleryDtoFromJson(json);
}
