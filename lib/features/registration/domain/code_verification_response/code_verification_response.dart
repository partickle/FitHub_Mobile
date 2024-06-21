// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_verification_response.g.dart';
part 'code_verification_response.freezed.dart';

@freezed
class CodeVerificationResponse with _$CodeVerificationResponse {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false
  )
  const factory CodeVerificationResponse({
    required String message,
  }) = _CodeVerificationResponse;

  factory CodeVerificationResponse.fromJson(Map<String, dynamic> json) =>
      _$CodeVerificationResponseFromJson(json);
}
