// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_password_request.g.dart';
part 'new_password_request.freezed.dart';

@freezed
class NewPasswordRequest with _$NewPasswordRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false
  )
  const factory NewPasswordRequest({
    required String email,
    required String new_password,
  }) = _NewPasswordRequest;

  factory NewPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$NewPasswordRequestFromJson(json);
}
