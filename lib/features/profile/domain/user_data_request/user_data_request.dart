// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_request.freezed.dart';
part 'user_data_request.g.dart';

@freezed
class UserDataRequest with _$UserDataRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
    fieldRename: FieldRename.snake
  )
  factory UserDataRequest({
    required bool isMale,
    required int age,
    required String goal,
    required String physicalActivityLevel
  }) = _UserDataRequest;

  factory UserDataRequest.fromJson(Map<String, dynamic> json) => _$UserDataRequestFromJson(json);
}