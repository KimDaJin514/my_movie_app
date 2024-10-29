// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalIdResponse _$ExternalIdResponseFromJson(Map<String, dynamic> json) =>
    ExternalIdResponse(
      id: (json['id'] as num).toInt(),
      facebookId: json['facebook_id'] as String?,
      instagramId: json['instagram_id'] as String?,
      twitterId: json['twitter_id'] as String?,
    );
