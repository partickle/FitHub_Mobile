// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      level: json['level'] as String,
      imageUrl: json['imageUrl'] as String,
      isPremium: json['isPremium'] as bool,
      isActive: json['isActive'] as bool,
      isComplete: json['isComplete'] as bool,
      workouts: (json['workouts'] as List<dynamic>)
          .map((e) => Workout.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'level': instance.level,
      'imageUrl': instance.imageUrl,
      'isPremium': instance.isPremium,
      'isActive': instance.isActive,
      'isComplete': instance.isComplete,
      'workouts': instance.workouts,
    };
