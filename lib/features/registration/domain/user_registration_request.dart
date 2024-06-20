import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_registration_request.freezed.dart';
part 'user_registration_request.g.dart';

@freezed
class UserRegistrationRequest with _$UserRegistrationRequest {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory UserRegistrationRequest({
    required String email,
    required String password,
    required String first_name,
    required String last_name,
    required String username,
    required Profile profile,  // Используйте вложенный класс для данных профиля
  }) = _UserRegistrationRequest;

  factory UserRegistrationRequest.fromJson(Map<String, dynamic> json) => _$UserRegistrationRequestFromJson(json);
}

// Вложенный класс Profile
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Profile {
  final bool is_male;
  final int age;
  final String goal;
  final String physical_activity_level;

  Profile({
    required this.is_male,
    required this.age,
    required this.goal,
    required this.physical_activity_level,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
