import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'video_list_response.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class VideoListResponse extends DataToDomainMapper<VideoListDto> {
  final int id;
  List<VideoDto> results;

  VideoListResponse({
    required this.id,
    required this.results,
  });

  @override
  VideoListDto mapper() => VideoListDto(
        id: id,
        results: results,
      );

  factory VideoListResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoListResponseFromJson(json);
}
