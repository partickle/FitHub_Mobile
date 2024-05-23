class Exercise {
  final String id;
  final String name;
  final String? workoutName;
  final int count;
  final bool isTime;
  final String description;
 
  Exercise({
    required this.id,
    required this.name,
    required this.workoutName,
    required this.count,
    required this.isTime,
    required this.description,
  });

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      id: json['id'],
      name: json['name'],
      workoutName: json['workout_name'],
      count: json['count'],
      isTime: json['is_time'],
      description: json['description']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'workout_name': workoutName,
      'count': count,
      'is_time': isTime,
      'description': description
    };
  }
}