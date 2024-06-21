// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendEmailRequest _$SendEmailRequestFromJson(Map<String, dynamic> json) {
  return _SendEmailRequest.fromJson(json);
}

/// @nodoc
mixin _$SendEmailRequest {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendEmailRequestCopyWith<SendEmailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendEmailRequestCopyWith<$Res> {
  factory $SendEmailRequestCopyWith(
          SendEmailRequest value, $Res Function(SendEmailRequest) then) =
      _$SendEmailRequestCopyWithImpl<$Res, SendEmailRequest>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$SendEmailRequestCopyWithImpl<$Res, $Val extends SendEmailRequest>
    implements $SendEmailRequestCopyWith<$Res> {
  _$SendEmailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendEmailRequestImplCopyWith<$Res>
    implements $SendEmailRequestCopyWith<$Res> {
  factory _$$SendEmailRequestImplCopyWith(_$SendEmailRequestImpl value,
          $Res Function(_$SendEmailRequestImpl) then) =
      __$$SendEmailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendEmailRequestImplCopyWithImpl<$Res>
    extends _$SendEmailRequestCopyWithImpl<$Res, _$SendEmailRequestImpl>
    implements _$$SendEmailRequestImplCopyWith<$Res> {
  __$$SendEmailRequestImplCopyWithImpl(_$SendEmailRequestImpl _value,
      $Res Function(_$SendEmailRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendEmailRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$SendEmailRequestImpl implements _SendEmailRequest {
  const _$SendEmailRequestImpl({required this.email});

  factory _$SendEmailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendEmailRequestImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'SendEmailRequest(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendEmailRequestImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendEmailRequestImplCopyWith<_$SendEmailRequestImpl> get copyWith =>
      __$$SendEmailRequestImplCopyWithImpl<_$SendEmailRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendEmailRequestImplToJson(
      this,
    );
  }
}

abstract class _SendEmailRequest implements SendEmailRequest {
  const factory _SendEmailRequest({required final String email}) =
      _$SendEmailRequestImpl;

  factory _SendEmailRequest.fromJson(Map<String, dynamic> json) =
      _$SendEmailRequestImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$SendEmailRequestImplCopyWith<_$SendEmailRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
