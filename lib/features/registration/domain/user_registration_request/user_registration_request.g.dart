// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRegistrationRequestImpl _$$UserRegistrationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegistrationRequestImpl(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      profile:
          UserDataRequest.fromJson(json['profile'] as Map<String, dynamic>),
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UserRegistrationRequestImplToJson(
        _$UserRegistrationRequestImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'username': instance.username,
      'email': instance.email,
      'profile': instance.profile.toJson(),
      'password': instance.password,
    };
