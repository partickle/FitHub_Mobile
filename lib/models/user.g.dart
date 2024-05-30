// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      userTag: json['userTag'] as String,
      email: json['email'] as String,
      registrationDate: json['registrationDate'] as String,
      password: json['password'] as String,
      isMale: json['isMale'] as bool,
      age: (json['age'] as num).toInt(),
      goal: json['goal'] as String,
      level: json['level'] as String,
      isPremium: json['isPremium'] as bool,
      isMonthly: json['isMonthly'] as bool,
      dateJoinedPro: json['dateJoinedPro'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userTag': instance.userTag,
      'email': instance.email,
      'registrationDate': instance.registrationDate,
      'password': instance.password,
      'isMale': instance.isMale,
      'age': instance.age,
      'goal': instance.goal,
      'level': instance.level,
      'isPremium': instance.isPremium,
      'isMonthly': instance.isMonthly,
      'dateJoinedPro': instance.dateJoinedPro,
    };
