class UserData {
  final int id;
  final String userTag;
  final bool isMale;
  final int age;
  final String goal;
  final String level;


  UserData({
    required this.id,
    required this.userTag,
    required this.isMale,
    required this.age,
    required this.goal,
    required this.level
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'],
      userTag: json['user_tag'],
      isMale: json['is_male'],
      age: json['age'],
      goal: json['goal'],
      level: json['level']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_tag': userTag,
      'is_male': isMale,
      'age': age,
      'goal': goal,
      'level': level
    };
  }
}