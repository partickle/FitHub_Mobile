// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDataRequest _$UserDataRequestFromJson(Map<String, dynamic> json) {
  return _UserDataRequest.fromJson(json);
}

/// @nodoc
mixin _$UserDataRequest {
  bool get isMale => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get goal => throw _privateConstructorUsedError;
  String get physicalActivityLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataRequestCopyWith<UserDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataRequestCopyWith<$Res> {
  factory $UserDataRequestCopyWith(
          UserDataRequest value, $Res Function(UserDataRequest) then) =
      _$UserDataRequestCopyWithImpl<$Res, UserDataRequest>;
  @useResult
  $Res call({bool isMale, int age, String goal, String physicalActivityLevel});
}

/// @nodoc
class _$UserDataRequestCopyWithImpl<$Res, $Val extends UserDataRequest>
    implements $UserDataRequestCopyWith<$Res> {
  _$UserDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMale = null,
    Object? age = null,
    Object? goal = null,
    Object? physicalActivityLevel = null,
  }) {
    return _then(_value.copyWith(
      isMale: null == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
      physicalActivityLevel: null == physicalActivityLevel
          ? _value.physicalActivityLevel
          : physicalActivityLevel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataRequestImplCopyWith<$Res>
    implements $UserDataRequestCopyWith<$Res> {
  factory _$$UserDataRequestImplCopyWith(_$UserDataRequestImpl value,
          $Res Function(_$UserDataRequestImpl) then) =
      __$$UserDataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMale, int age, String goal, String physicalActivityLevel});
}

/// @nodoc
class __$$UserDataRequestImplCopyWithImpl<$Res>
    extends _$UserDataRequestCopyWithImpl<$Res, _$UserDataRequestImpl>
    implements _$$UserDataRequestImplCopyWith<$Res> {
  __$$UserDataRequestImplCopyWithImpl(
      _$UserDataRequestImpl _value, $Res Function(_$UserDataRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMale = null,
    Object? age = null,
    Object? goal = null,
    Object? physicalActivityLevel = null,
  }) {
    return _then(_$UserDataRequestImpl(
      isMale: null == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
      physicalActivityLevel: null == physicalActivityLevel
          ? _value.physicalActivityLevel
          : physicalActivityLevel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class _$UserDataRequestImpl implements _UserDataRequest {
  _$UserDataRequestImpl(
      {required this.isMale,
      required this.age,
      required this.goal,
      required this.physicalActivityLevel});

  factory _$UserDataRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataRequestImplFromJson(json);

  @override
  final bool isMale;
  @override
  final int age;
  @override
  final String goal;
  @override
  final String physicalActivityLevel;

  @override
  String toString() {
    return 'UserDataRequest(isMale: $isMale, age: $age, goal: $goal, physicalActivityLevel: $physicalActivityLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataRequestImpl &&
            (identical(other.isMale, isMale) || other.isMale == isMale) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.physicalActivityLevel, physicalActivityLevel) ||
                other.physicalActivityLevel == physicalActivityLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isMale, age, goal, physicalActivityLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataRequestImplCopyWith<_$UserDataRequestImpl> get copyWith =>
      __$$UserDataRequestImplCopyWithImpl<_$UserDataRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataRequestImplToJson(
      this,
    );
  }
}

abstract class _UserDataRequest implements UserDataRequest {
  factory _UserDataRequest(
      {required final bool isMale,
      required final int age,
      required final String goal,
      required final String physicalActivityLevel}) = _$UserDataRequestImpl;

  factory _UserDataRequest.fromJson(Map<String, dynamic> json) =
      _$UserDataRequestImpl.fromJson;

  @override
  bool get isMale;
  @override
  int get age;
  @override
  String get goal;
  @override
  String get physicalActivityLevel;
  @override
  @JsonKey(ignore: true)
  _$$UserDataRequestImplCopyWith<_$UserDataRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
