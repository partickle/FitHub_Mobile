class Exercise {
  Exercise({
    required int id,
    required int workoutId,
    required int count,
    required String name,
    required String imageUrl,
    required String gifUrl,
    required bool isTime,
    required String description
  });

  factory Exercise.fromJson(Map<String, dynamic> json) {}
}