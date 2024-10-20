import 'package:json_annotation/json_annotation.dart';

part 'country_dto.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class CountryDto {
  @JsonKey(name: 'iso_3166_1')
  final String iso;
  final String name;

  CountryDto({
    required this.iso,
    required this.name,
  });

  factory CountryDto.fromJson(Map<String, dynamic> json) =>
      _$CountryDtoFromJson(json);
}
