import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'video_list_dto.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class VideoListDto {
  final int id;
  final List<VideoDto> results;

  VideoListDto({
    required this.id,
    required this.results,
  });

  factory VideoListDto.fromJson(Map<String, dynamic> json) =>
      _$VideoListDtoFromJson(json);
}
