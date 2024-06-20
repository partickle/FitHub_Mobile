// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      is_male: json['is_male'] as bool,
      age: (json['age'] as num).toInt(),
      goal: json['goal'] as String,
      physical_activity_level: json['physical_activity_level'] as String,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'is_male': instance.is_male,
      'age': instance.age,
      'goal': instance.goal,
      'physical_activity_level': instance.physical_activity_level,
    };

_$UserRegistrationRequestImpl _$$UserRegistrationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegistrationRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      username: json['username'] as String,
      profile: Profile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserRegistrationRequestImplToJson(
        _$UserRegistrationRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'username': instance.username,
      'profile': instance.profile.toJson(),
    };
