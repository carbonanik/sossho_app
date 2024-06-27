// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpRequestImpl _$$SignUpRequestImplFromJson(Map<String, dynamic> json) =>
    _$SignUpRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      fullName: json['full_name'] as String,
      mobile: json['mobile'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$$SignUpRequestImplToJson(_$SignUpRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'full_name': instance.fullName,
      'mobile': instance.mobile,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
    };
