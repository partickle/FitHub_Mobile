// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_password_response.g.dart';
part 'new_password_response.freezed.dart';

@freezed
class NewPasswordResponse with _$NewPasswordResponse {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false
  )
  const factory NewPasswordResponse({
    required String message,
  }) = _NewPasswordResponse;

  factory NewPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$NewPasswordResponseFromJson(json);
}
