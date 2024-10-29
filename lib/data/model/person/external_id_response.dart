import 'package:json_annotation/json_annotation.dart';
import 'package:my_movie_app/data/data.dart';
import 'package:my_movie_app/domain/domain.dart';

part 'external_id_response.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class ExternalIdResponse extends DataToDomainMapper<ExternalIdDto> {
  final int id;
  @JsonKey(name: 'facebook_id')
  final String? facebookId;
  @JsonKey(name: 'instagram_id')
  final String? instagramId;
  @JsonKey(name: 'twitter_id')
  final String? twitterId;

  ExternalIdResponse({
    required this.id,
    required this.facebookId,
    required this.instagramId,
    required this.twitterId,
  });

  @override
  ExternalIdDto mapper() => ExternalIdDto(
        id: id,
        facebookId: facebookId,
        instagramId: instagramId,
        twitterId: twitterId,
      );

  factory ExternalIdResponse.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdResponseFromJson(json);
}
