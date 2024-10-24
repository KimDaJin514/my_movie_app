import 'package:json_annotation/json_annotation.dart';

part 'poster_dto.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class PosterDto {
  @JsonKey(name: 'aspect_ratio')
  final double aspectRatio;
  final double height;
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @JsonKey(name: 'vote_count')
  final int voteCount;
  @JsonKey(name: 'file_path')
  final String filePath;
  final double width;

  PosterDto({
    required this.aspectRatio,
    required this.height,
    required this.voteCount,
    required this.voteAverage,
    required this.filePath,
    required this.width,
  });

  factory PosterDto.fromJson(Map<String, dynamic> json) =>
      _$PosterDtoFromJson(json);
}
