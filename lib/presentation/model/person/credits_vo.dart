import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/presentation/presentation.dart';

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

extension CreditsDtoExtension on CreditsDto {
  CreditsVo mapper() => CreditsVo(
        id: id ?? -1,
        cast: cast?.mapper() ?? List.empty(),
        crew: crew?.mapper() ?? List.empty(),
      );
}
