// ignore_for_file: invalid_annotation_target

import 'package:fithub/features/profile/domain/user_data_request/user_data_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_registration_request.freezed.dart';
part 'user_registration_request.g.dart';

@freezed
class UserRegistrationRequest with _$UserRegistrationRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
    fieldRename: FieldRename.snake
  )
  factory UserRegistrationRequest({
    required String firstName,
    required String lastName,
    required String username,
    required String email,
    required UserDataRequest profile,
    required String password,
  }) = _UserRegistrationRequest;

  factory UserRegistrationRequest.fromJson(Map<String, dynamic> json) => _$UserRegistrationRequestFromJson(json);
}
