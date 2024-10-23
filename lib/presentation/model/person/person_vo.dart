import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/model/person/person_dto.dart';

part 'person_vo.freezed.dart';

@freezed
class PersonVo with _$PersonVo {
  factory PersonVo({
    required bool isAdult,
    required int id,
    required String name,
    required String originalName,
    required String profilePath,
    required String characterName,
    required String creditId,
    required String job,
  }) = _PersonVo;

  factory PersonVo.init() => PersonVo(
        isAdult: false,
        id: -1,
        name: '',
        originalName: '',
        profilePath: '',
        characterName: '',
        creditId: '',
        job: '',
      );
}

extension PersonVoExtension on PersonDto {
  PersonVo mapper() => PersonVo(
        isAdult: isAdult ?? false,
        id: id ?? -1,
        name: name ?? '',
        originalName: originalName ?? '',
        profilePath: profilePath ?? '',
        characterName: characterName ?? '',
        creditId: creditId ?? '',
        job: job ?? '',
      );
}

extension PersonDtoListExtension on List<PersonDto> {
  List<PersonVo> mapper() => map((personDto) => personDto.mapper()).toList();
}
