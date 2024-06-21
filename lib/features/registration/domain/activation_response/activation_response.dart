// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'activation_response.g.dart';
part 'activation_response.freezed.dart';

@freezed
class ActivationResponse with _$ActivationResponse {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false
  )
  const factory ActivationResponse({
    required String message,
  }) = _ActivationResponse;

  factory ActivationResponse.fromJson(Map<String, dynamic> json) =>
      _$ActivationResponseFromJson(json);
}
