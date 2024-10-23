import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_movie_app/domain/model/movie/country_dto.dart';

part 'country_vo.freezed.dart';

@freezed
class CountryVo with _$CountryVo {
  factory CountryVo({
    required String iso,
    required String name,
  }) = _CountryVo;

  factory CountryVo.init() => CountryVo(
    iso: '',
    name: '',
  );
}

extension CountryVoExtension on CountryDto {
  CountryVo mapper() => CountryVo(
    iso: iso,
    name: name,
  );
}

extension CountryDtoListExtension on List<CountryDto> {
  List<CountryVo> mapper() => map((countryDto) => countryDto.mapper()).toList();
}
