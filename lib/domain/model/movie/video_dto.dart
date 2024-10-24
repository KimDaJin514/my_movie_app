import 'package:json_annotation/json_annotation.dart';

part 'video_dto.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class VideoDto {
  final String id;
  final String name;
  final String key;
  final String site;
  final int size;
  final String type;
  final bool official;

  VideoDto({
    required this.id,
    required this.name,
    required this.key,
    required this.site,
    required this.size,
    required this.type,
    required this.official,
  });

  factory VideoDto.fromJson(Map<String, dynamic> json) =>
      _$VideoDtoFromJson(json);
}
