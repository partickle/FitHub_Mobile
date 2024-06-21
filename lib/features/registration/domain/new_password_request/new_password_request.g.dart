// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewPasswordRequestImpl _$$NewPasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$NewPasswordRequestImpl(
      email: json['email'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$$NewPasswordRequestImplToJson(
        _$NewPasswordRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'new_password': instance.newPassword,
    };
