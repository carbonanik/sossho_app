// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileUpdateRequestImpl _$$ProfileUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileUpdateRequestImpl(
      gender: json['gender'] as String?,
      mobile: json['mobile'] as String?,
      fullName: json['full_name'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      profileImage: json['profile_image'] as String?,
    );

Map<String, dynamic> _$$ProfileUpdateRequestImplToJson(
        _$ProfileUpdateRequestImpl instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'mobile': instance.mobile,
      'full_name': instance.fullName,
      'dateOfBirth': instance.dateOfBirth,
      'profile_image': instance.profileImage,
    };
