import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'external_id_vo.freezed.dart';

@freezed
class ExternalIdVo with _$ExternalIdVo {
  factory ExternalIdVo({
    required int id,
    required String facebookId,
    required String instagramId,
    required String twitterId,
  }) = _ExternalIdVo;

  factory ExternalIdVo.init() => ExternalIdVo(
        id: -1,
        facebookId: '',
        instagramId: '',
        twitterId: '',
      );
}

extension ExternalIdDtoExtension on ExternalIdDto {
  ExternalIdVo mapper() => ExternalIdVo(
        id: id,
        facebookId: facebookId ?? '',
        instagramId: instagramId ?? '',
        twitterId: twitterId ?? '',
      );
}
