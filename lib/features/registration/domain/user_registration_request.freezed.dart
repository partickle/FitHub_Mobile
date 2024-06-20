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
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  Profile get profile => throw _privateConstructorUsedError;

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
      {String email,
      String password,
      String first_name,
      String last_name,
      String username,
      Profile profile});
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
    Object? email = null,
    Object? password = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? username = null,
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ) as $Val);
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
      {String email,
      String password,
      String first_name,
      String last_name,
      String username,
      Profile profile});
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
    Object? email = null,
    Object? password = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? username = null,
    Object? profile = null,
  }) {
    return _then(_$UserRegistrationRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$UserRegistrationRequestImpl implements _UserRegistrationRequest {
  _$UserRegistrationRequestImpl(
      {required this.email,
      required this.password,
      required this.first_name,
      required this.last_name,
      required this.username,
      required this.profile});

  factory _$UserRegistrationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegistrationRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String username;
  @override
  final Profile profile;

  @override
  String toString() {
    return 'UserRegistrationRequest(email: $email, password: $password, first_name: $first_name, last_name: $last_name, username: $username, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegistrationRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, first_name, last_name, username, profile);

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
      {required final String email,
      required final String password,
      required final String first_name,
      required final String last_name,
      required final String username,
      required final Profile profile}) = _$UserRegistrationRequestImpl;

  factory _UserRegistrationRequest.fromJson(Map<String, dynamic> json) =
      _$UserRegistrationRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  String get username;
  @override
  Profile get profile;
  @override
  @JsonKey(ignore: true)
  _$$UserRegistrationRequestImplCopyWith<_$UserRegistrationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
