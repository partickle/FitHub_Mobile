import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String firstName,
    required String lastName,
    required String userTag,
    required String email,
    required String registrationDate,
    required String password,

    required bool isMale,
    required int age,
    required String goal,
    required String level,

    required bool isPremium,
    required bool isMonthly,
    required String dateJoinedPro
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
    
}
