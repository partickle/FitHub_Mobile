// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataRequestImpl _$$UserDataRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDataRequestImpl(
      isMale: json['is_male'] as bool,
      age: (json['age'] as num).toInt(),
      goal: json['goal'] as String,
      physicalActivityLevel: json['physical_activity_level'] as String,
    );

Map<String, dynamic> _$$UserDataRequestImplToJson(
        _$UserDataRequestImpl instance) =>
    <String, dynamic>{
      'is_male': instance.isMale,
      'age': instance.age,
      'goal': instance.goal,
      'physical_activity_level': instance.physicalActivityLevel,
    };
