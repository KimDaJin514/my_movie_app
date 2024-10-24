import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'gallery_response.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class GalleryResponse {
  final int id;
  final List<String> backdrops;
  final List<String> logos;
  final List<PosterDto> posters;

  GalleryResponse({
    required this.id,
    required this.backdrops,
    required this.logos,
    required this.posters,
  });

  factory GalleryResponse.fromJson(Map<String, dynamic> json) =>
      _$GalleryResponseFromJson(json);
}
