// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerAttributes _$PlayerAttributesFromJson(Map<String, dynamic> json) =>
    PlayerAttributes(
      displayName: json['displayName'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      mobileNumber: json['mobile'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      joinDate: json['joinDate'] as String?,
      preferredLanguage: json['preferredLanguage'] as String?,
      channel: json['channel'] as String? ?? 'mobile',
      customAttributes: (json['custom'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$PlayerAttributesToJson(PlayerAttributes instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'gender': instance.gender,
      'mobile': instance.mobileNumber,
      'dateOfBirth': instance.dateOfBirth,
      'joinDate': instance.joinDate,
      'preferredLanguage': instance.preferredLanguage,
      'channel': instance.channel,
      'custom': instance.customAttributes,
    };
