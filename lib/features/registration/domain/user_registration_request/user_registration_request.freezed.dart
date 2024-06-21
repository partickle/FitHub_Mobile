// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_registration_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRegistrationRequest _$UserRegistrationRequestFromJson(
    Map<String, dynamic> json) {
  return _UserRegistrationRequest.fromJson(json);
}

/// @nodoc
mixin _$UserRegistrationRequest {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  UserDataRequest get profile => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegistrationRequestCopyWith<UserRegistrationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegistrationRequestCopyWith<$Res> {
  factory $UserRegistrationRequestCopyWith(UserRegistrationRequest value,
          $Res Function(UserRegistrationRequest) then) =
      _$UserRegistrationRequestCopyWithImpl<$Res, UserRegistrationRequest>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String username,
      String email,
      UserDataRequest profile,
      String password});

  $UserDataRequestCopyWith<$Res> get profile;
}

/// @nodoc
class _$UserRegistrationRequestCopyWithImpl<$Res,
        $Val extends UserRegistrationRequest>
    implements $UserRegistrationRequestCopyWith<$Res> {
  _$UserRegistrationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? email = null,
    Object? profile = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserDataRequest,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataRequestCopyWith<$Res> get profile {
    return $UserDataRequestCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserRegistrationRequestImplCopyWith<$Res>
    implements $UserRegistrationRequestCopyWith<$Res> {
  factory _$$UserRegistrationRequestImplCopyWith(
          _$UserRegistrationRequestImpl value,
          $Res Function(_$UserRegistrationRequestImpl) then) =
      __$$UserRegistrationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String username,
      String email,
      UserDataRequest profile,
      String password});

  @override
  $UserDataRequestCopyWith<$Res> get profile;
}

/// @nodoc
class __$$UserRegistrationRequestImplCopyWithImpl<$Res>
    extends _$UserRegistrationRequestCopyWithImpl<$Res,
        _$UserRegistrationRequestImpl>
    implements _$$UserRegistrationRequestImplCopyWith<$Res> {
  __$$UserRegistrationRequestImplCopyWithImpl(
      _$UserRegistrationRequestImpl _value,
      $Res Function(_$UserRegistrationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? email = null,
    Object? profile = null,
    Object? password = null,
  }) {
    return _then(_$UserRegistrationRequestImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserDataRequest,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class _$UserRegistrationRequestImpl implements _UserRegistrationRequest {
  _$UserRegistrationRequestImpl(
      {required this.firstName,
      required this.lastName,
      required this.username,
      required this.email,
      required this.profile,
      required this.password});

  factory _$UserRegistrationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegistrationRequestImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final String email;
  @override
  final UserDataRequest profile;
  @override
  final String password;

  @override
  String toString() {
    return 'UserRegistrationRequest(firstName: $firstName, lastName: $lastName, username: $username, email: $email, profile: $profile, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegistrationRequestImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, username, email, profile, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegistrationRequestImplCopyWith<_$UserRegistrationRequestImpl>
      get copyWith => __$$UserRegistrationRequestImplCopyWithImpl<
          _$UserRegistrationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegistrationRequestImplToJson(
      this,
    );
  }
}

abstract class _UserRegistrationRequest implements UserRegistrationRequest {
  factory _UserRegistrationRequest(
      {required final String firstName,
      required final String lastName,
      required final String username,
      required final String email,
      required final UserDataRequest profile,
      required final String password}) = _$UserRegistrationRequestImpl;

  factory _UserRegistrationRequest.fromJson(Map<String, dynamic> json) =
      _$UserRegistrationRequestImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get username;
  @override
  String get email;
  @override
  UserDataRequest get profile;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserRegistrationRequestImplCopyWith<_$UserRegistrationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
