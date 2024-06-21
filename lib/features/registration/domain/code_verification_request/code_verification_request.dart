// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_verification_request.g.dart';
part 'code_verification_request.freezed.dart';

@freezed
class CodeVerificationRequest with _$CodeVerificationRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false
  )
  const factory CodeVerificationRequest({
    required String email,
    required String code,
  }) = _CodeVerificationRequest;

  factory CodeVerificationRequest.fromJson(Map<String, dynamic> json) =>
      _$CodeVerificationRequestFromJson(json);
}
