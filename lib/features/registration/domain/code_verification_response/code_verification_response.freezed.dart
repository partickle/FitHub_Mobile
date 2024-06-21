// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_verification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CodeVerificationResponse _$CodeVerificationResponseFromJson(
    Map<String, dynamic> json) {
  return _CodeVerificationResponse.fromJson(json);
}

/// @nodoc
mixin _$CodeVerificationResponse {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeVerificationResponseCopyWith<CodeVerificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeVerificationResponseCopyWith<$Res> {
  factory $CodeVerificationResponseCopyWith(CodeVerificationResponse value,
          $Res Function(CodeVerificationResponse) then) =
      _$CodeVerificationResponseCopyWithImpl<$Res, CodeVerificationResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CodeVerificationResponseCopyWithImpl<$Res,
        $Val extends CodeVerificationResponse>
    implements $CodeVerificationResponseCopyWith<$Res> {
  _$CodeVerificationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeVerificationResponseImplCopyWith<$Res>
    implements $CodeVerificationResponseCopyWith<$Res> {
  factory _$$CodeVerificationResponseImplCopyWith(
          _$CodeVerificationResponseImpl value,
          $Res Function(_$CodeVerificationResponseImpl) then) =
      __$$CodeVerificationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CodeVerificationResponseImplCopyWithImpl<$Res>
    extends _$CodeVerificationResponseCopyWithImpl<$Res,
        _$CodeVerificationResponseImpl>
    implements _$$CodeVerificationResponseImplCopyWith<$Res> {
  __$$CodeVerificationResponseImplCopyWithImpl(
      _$CodeVerificationResponseImpl _value,
      $Res Function(_$CodeVerificationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CodeVerificationResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$CodeVerificationResponseImpl implements _CodeVerificationResponse {
  const _$CodeVerificationResponseImpl({required this.message});

  factory _$CodeVerificationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeVerificationResponseImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'CodeVerificationResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeVerificationResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeVerificationResponseImplCopyWith<_$CodeVerificationResponseImpl>
      get copyWith => __$$CodeVerificationResponseImplCopyWithImpl<
          _$CodeVerificationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeVerificationResponseImplToJson(
      this,
    );
  }
}

abstract class _CodeVerificationResponse implements CodeVerificationResponse {
  const factory _CodeVerificationResponse({required final String message}) =
      _$CodeVerificationResponseImpl;

  factory _CodeVerificationResponse.fromJson(Map<String, dynamic> json) =
      _$CodeVerificationResponseImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CodeVerificationResponseImplCopyWith<_$CodeVerificationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
