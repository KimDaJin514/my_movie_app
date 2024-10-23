import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/model/person/credits_dto.dart';
import 'package:my_movie_app/presentation/model/person/person_vo.dart';

part 'credits_vo.freezed.dart';

@freezed
class CreditsVo with _$CreditsVo {
  factory CreditsVo({
    required int id,
    required List<PersonVo> cast,
    required List<PersonVo> crew,
  }) = _CreditsVo;

  factory CreditsVo.init() => CreditsVo(
        id: -1,
        cast: List.empty(),
        crew: List.empty(),
      );
}

extension CreditsVoExtension on CreditsDto {
  CreditsVo mapper() => CreditsVo(
        id: id ?? -1,
        cast: cast?.mapper() ?? List.empty(),
        crew: crew?.mapper() ?? List.empty(),
      );
}

extension CreditsDtoListExtension on List<CreditsDto> {
  List<CreditsVo> mapper() => map((creditsDto) => creditsDto.mapper()).toList();
}
