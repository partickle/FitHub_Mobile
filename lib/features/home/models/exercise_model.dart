class Exercise {
  final int id;
  final int workoutId;
  final int count;
  final String name;
  final String imageUrl;
  final String gifUrl;
  final bool isTime;
  final bool isComplete;
  final String description;

  Exercise({
    required this.id,
    required this.workoutId,
    required this.count,
    required this.name,
    required this.imageUrl,
    required this.gifUrl,
    required this.isTime,
    required this.isComplete,
    required this.description
  });
}