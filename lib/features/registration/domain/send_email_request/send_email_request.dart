// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_email_request.g.dart';
part 'send_email_request.freezed.dart';

@freezed
class SendEmailRequest with _$SendEmailRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false
  )
  const factory SendEmailRequest({
    required String email,
  }) = _SendEmailRequest;

  factory SendEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$SendEmailRequestFromJson(json);
}
