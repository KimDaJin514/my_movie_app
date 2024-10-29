import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/domain.dart';
import 'package:my_movie_app/presentation/presentation.dart';

part 'person_vo.freezed.dart';

@freezed
class PersonVo with _$PersonVo {
  factory PersonVo({
    required bool isAdult,
    required int id,
    required int gender,
    required String name,
    required String originalName,
    required String profilePath,
    required String characterName,
    required String creditId,
    required String job,
    required String department,
    required String birthday,
    required String placeOfBirth,
    required List<PosterVo> profiles,
  }) = _PersonVo;

  factory PersonVo.init() => PersonVo(
        isAdult: false,
        id: -1,
        gender: -1,
        name: '',
        originalName: '',
        profilePath: '',
        characterName: '',
        creditId: '',
        job: '',
        department: '',
        birthday: '',
        placeOfBirth: '',
        profiles: List.empty(),
      );
}

extension PersonDtoExtension on PersonDto {
  PersonVo mapper() => PersonVo(
        isAdult: isAdult ?? false,
        id: id ?? -1,
        gender: gender ?? -1,
        name: name ?? '',
        originalName: originalName ?? '',
        profilePath: profilePath ?? '',
        characterName: characterName ?? '',
        creditId: creditId ?? '',
        job: job ?? '',
        department: department ?? '',
        birthday: birthday ?? '',
        placeOfBirth: placeOfBirth ?? '',
        profiles: profiles?.mapper() ?? List.empty(),
      );
}

extension PersonDtoListExtension on List<PersonDto> {
  List<PersonVo> mapper() => map((personDto) => personDto.mapper()).toList();
}
