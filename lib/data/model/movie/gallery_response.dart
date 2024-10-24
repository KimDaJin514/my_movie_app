import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'gallery_response.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class GalleryResponse extends DataToDomainMapper<GalleryDto> {
  final int id;
  final List<PosterDto> backdrops;
  final List<PosterDto> logos;
  final List<PosterDto> posters;

  GalleryResponse({
    required this.id,
    required this.backdrops,
    required this.logos,
    required this.posters,
  });

  @override
  GalleryDto mapper() => GalleryDto(
        id: id,
        backdrops: backdrops,
        logos: logos,
        posters: posters,
      );

  factory GalleryResponse.fromJson(Map<String, dynamic> json) =>
      _$GalleryResponseFromJson(json);
}
