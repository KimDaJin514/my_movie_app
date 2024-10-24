import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/presentation/presentation.dart';

part 'video_vo.freezed.dart';

@freezed
class VideoVo with _$VideoVo {
  factory VideoVo({
    required String id,
    required String name,
    required String key,
    required String site,
    required int size,
    required VideoType type,
    required bool isOfficial,
  }) = _VideoVo;
}

extension VideoDtoExtension on VideoDto {
  VideoVo mapper() => VideoVo(
        id: id,
        name: name,
        key: key,
        site: site,
        size: size,
        type: VideoType.mapVideoType(type: type),
        isOfficial: official,
      );
}

extension VideoDtoListExtension on List<VideoDto> {
  List<VideoVo> mapper() => map((videoDto) => videoDto.mapper()).toList();
}
