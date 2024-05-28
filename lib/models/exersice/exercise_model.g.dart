// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseImpl _$$ExerciseImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseImpl(
      id: (json['id'] as num).toInt(),
      workoutId: (json['workoutId'] as num?)?.toInt(),
      count: (json['count'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      gifUrl: json['gifUrl'] as String,
      isTime: json['isTime'] as bool,
      isComplete: json['isComplete'] as bool,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workoutId': instance.workoutId,
      'count': instance.count,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'gifUrl': instance.gifUrl,
      'isTime': instance.isTime,
      'isComplete': instance.isComplete,
      'description': instance.description,
    };
