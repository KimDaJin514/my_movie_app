import 'package:json_annotation/json_annotation.dart';

part 'external_id_dto.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class ExternalIdDto {
  final int id;
  @JsonKey(name: 'facebook_id')
  final String? facebookId;
  @JsonKey(name: 'instagram_id')
  final String? instagramId;
  @JsonKey(name: 'twitter_id')
  final String? twitterId;

  ExternalIdDto({
    required this.id,
    required this.facebookId,
    required this.instagramId,
    required this.twitterId,
  });

  factory ExternalIdDto.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdDtoFromJson(json);
}
