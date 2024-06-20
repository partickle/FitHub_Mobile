// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewPasswordRequest _$NewPasswordRequestFromJson(Map<String, dynamic> json) {
  return _NewPasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$NewPasswordRequest {
  String get email => throw _privateConstructorUsedError;
  String get new_password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewPasswordRequestCopyWith<NewPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPasswordRequestCopyWith<$Res> {
  factory $NewPasswordRequestCopyWith(
          NewPasswordRequest value, $Res Function(NewPasswordRequest) then) =
      _$NewPasswordRequestCopyWithImpl<$Res, NewPasswordRequest>;
  @useResult
  $Res call({String email, String new_password});
}

/// @nodoc
class _$NewPasswordRequestCopyWithImpl<$Res, $Val extends NewPasswordRequest>
    implements $NewPasswordRequestCopyWith<$Res> {
  _$NewPasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? new_password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      new_password: null == new_password
          ? _value.new_password
          : new_password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewPasswordRequestImplCopyWith<$Res>
    implements $NewPasswordRequestCopyWith<$Res> {
  factory _$$NewPasswordRequestImplCopyWith(_$NewPasswordRequestImpl value,
          $Res Function(_$NewPasswordRequestImpl) then) =
      __$$NewPasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String new_password});
}

/// @nodoc
class __$$NewPasswordRequestImplCopyWithImpl<$Res>
    extends _$NewPasswordRequestCopyWithImpl<$Res, _$NewPasswordRequestImpl>
    implements _$$NewPasswordRequestImplCopyWith<$Res> {
  __$$NewPasswordRequestImplCopyWithImpl(_$NewPasswordRequestImpl _value,
      $Res Function(_$NewPasswordRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? new_password = null,
  }) {
    return _then(_$NewPasswordRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      new_password: null == new_password
          ? _value.new_password
          : new_password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$NewPasswordRequestImpl implements _NewPasswordRequest {
  const _$NewPasswordRequestImpl(
      {required this.email, required this.new_password});

  factory _$NewPasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewPasswordRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String new_password;

  @override
  String toString() {
    return 'NewPasswordRequest(email: $email, new_password: $new_password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.new_password, new_password) ||
                other.new_password == new_password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, new_password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewPasswordRequestImplCopyWith<_$NewPasswordRequestImpl> get copyWith =>
      __$$NewPasswordRequestImplCopyWithImpl<_$NewPasswordRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewPasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _NewPasswordRequest implements NewPasswordRequest {
  const factory _NewPasswordRequest(
      {required final String email,
      required final String new_password}) = _$NewPasswordRequestImpl;

  factory _NewPasswordRequest.fromJson(Map<String, dynamic> json) =
      _$NewPasswordRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get new_password;
  @override
  @JsonKey(ignore: true)
  _$$NewPasswordRequestImplCopyWith<_$NewPasswordRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
