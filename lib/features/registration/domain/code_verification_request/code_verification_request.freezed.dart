// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_verification_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CodeVerificationRequest _$CodeVerificationRequestFromJson(
    Map<String, dynamic> json) {
  return _CodeVerificationRequest.fromJson(json);
}

/// @nodoc
mixin _$CodeVerificationRequest {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeVerificationRequestCopyWith<CodeVerificationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeVerificationRequestCopyWith<$Res> {
  factory $CodeVerificationRequestCopyWith(CodeVerificationRequest value,
          $Res Function(CodeVerificationRequest) then) =
      _$CodeVerificationRequestCopyWithImpl<$Res, CodeVerificationRequest>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$CodeVerificationRequestCopyWithImpl<$Res,
        $Val extends CodeVerificationRequest>
    implements $CodeVerificationRequestCopyWith<$Res> {
  _$CodeVerificationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeVerificationRequestImplCopyWith<$Res>
    implements $CodeVerificationRequestCopyWith<$Res> {
  factory _$$CodeVerificationRequestImplCopyWith(
          _$CodeVerificationRequestImpl value,
          $Res Function(_$CodeVerificationRequestImpl) then) =
      __$$CodeVerificationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$CodeVerificationRequestImplCopyWithImpl<$Res>
    extends _$CodeVerificationRequestCopyWithImpl<$Res,
        _$CodeVerificationRequestImpl>
    implements _$$CodeVerificationRequestImplCopyWith<$Res> {
  __$$CodeVerificationRequestImplCopyWithImpl(
      _$CodeVerificationRequestImpl _value,
      $Res Function(_$CodeVerificationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$CodeVerificationRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$CodeVerificationRequestImpl implements _CodeVerificationRequest {
  const _$CodeVerificationRequestImpl(
      {required this.email, required this.code});

  factory _$CodeVerificationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeVerificationRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'CodeVerificationRequest(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeVerificationRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeVerificationRequestImplCopyWith<_$CodeVerificationRequestImpl>
      get copyWith => __$$CodeVerificationRequestImplCopyWithImpl<
          _$CodeVerificationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeVerificationRequestImplToJson(
      this,
    );
  }
}

abstract class _CodeVerificationRequest implements CodeVerificationRequest {
  const factory _CodeVerificationRequest(
      {required final String email,
      required final String code}) = _$CodeVerificationRequestImpl;

  factory _CodeVerificationRequest.fromJson(Map<String, dynamic> json) =
      _$CodeVerificationRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$CodeVerificationRequestImplCopyWith<_$CodeVerificationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
