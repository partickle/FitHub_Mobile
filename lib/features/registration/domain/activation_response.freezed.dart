// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivationResponse _$ActivationResponseFromJson(Map<String, dynamic> json) {
  return _ActivationResponse.fromJson(json);
}

/// @nodoc
mixin _$ActivationResponse {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivationResponseCopyWith<ActivationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivationResponseCopyWith<$Res> {
  factory $ActivationResponseCopyWith(
          ActivationResponse value, $Res Function(ActivationResponse) then) =
      _$ActivationResponseCopyWithImpl<$Res, ActivationResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ActivationResponseCopyWithImpl<$Res, $Val extends ActivationResponse>
    implements $ActivationResponseCopyWith<$Res> {
  _$ActivationResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$ActivationResponseImplCopyWith<$Res>
    implements $ActivationResponseCopyWith<$Res> {
  factory _$$ActivationResponseImplCopyWith(_$ActivationResponseImpl value,
          $Res Function(_$ActivationResponseImpl) then) =
      __$$ActivationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ActivationResponseImplCopyWithImpl<$Res>
    extends _$ActivationResponseCopyWithImpl<$Res, _$ActivationResponseImpl>
    implements _$$ActivationResponseImplCopyWith<$Res> {
  __$$ActivationResponseImplCopyWithImpl(_$ActivationResponseImpl _value,
      $Res Function(_$ActivationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ActivationResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$ActivationResponseImpl implements _ActivationResponse {
  const _$ActivationResponseImpl({required this.message});

  factory _$ActivationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivationResponseImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'ActivationResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivationResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivationResponseImplCopyWith<_$ActivationResponseImpl> get copyWith =>
      __$$ActivationResponseImplCopyWithImpl<_$ActivationResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivationResponseImplToJson(
      this,
    );
  }
}

abstract class _ActivationResponse implements ActivationResponse {
  const factory _ActivationResponse({required final String message}) =
      _$ActivationResponseImpl;

  factory _ActivationResponse.fromJson(Map<String, dynamic> json) =
      _$ActivationResponseImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ActivationResponseImplCopyWith<_$ActivationResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
