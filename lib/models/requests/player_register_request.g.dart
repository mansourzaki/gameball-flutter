// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerRegisterRequest _$PlayerRegisterRequestFromJson(
        Map<String, dynamic> json) =>
    PlayerRegisterRequest(
      playerUniqueID: json['playerUniqueId'] as String,
      deviceToken: json['deviceToken'] as String,
      osType: json['osType'] as String?,
      playerAttributes: json['playerAttributes'] == null
          ? null
          : PlayerAttributes.fromJson(
              json['playerAttributes'] as Map<String, dynamic>),
      referrerCode: json['referrerCode'] as String?,
      email: json['email'] as String?,
      mobileNumber: json['mobile'] as String?,
    );

Map<String, dynamic> _$PlayerRegisterRequestToJson(
        PlayerRegisterRequest instance) =>
    <String, dynamic>{
      'playerUniqueId': instance.playerUniqueID,
      'deviceToken': instance.deviceToken,
      'osType': instance.osType,
      'playerAttributes': instance.playerAttributes,
      'referrerCode': instance.referrerCode,
      'email': instance.email,
      'mobile': instance.mobileNumber,
    };
