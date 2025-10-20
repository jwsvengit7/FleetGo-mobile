// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String deviceToken)
        generateToken,
    required TResult Function(String email, String channelCode) generateOtp,
    required TResult Function(String email, String channelCode) resendOtp,
    required TResult Function(
            String channelCode, String otp, String identifier, String appId)
        verifyOtp,
    required TResult Function() signOut,
    required TResult Function(String phone) forgotPasswordRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, String deviceToken)?
        generateToken,
    TResult? Function(String email, String channelCode)? generateOtp,
    TResult? Function(String email, String channelCode)? resendOtp,
    TResult? Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult? Function()? signOut,
    TResult? Function(String phone)? forgotPasswordRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String deviceToken)?
        generateToken,
    TResult Function(String email, String channelCode)? generateOtp,
    TResult Function(String email, String channelCode)? resendOtp,
    TResult Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult Function()? signOut,
    TResult Function(String phone)? forgotPasswordRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ForgotPasswordRequested value)
        forgotPasswordRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String deviceToken)
        generateToken,
    required TResult Function(String email, String channelCode) generateOtp,
    required TResult Function(String email, String channelCode) resendOtp,
    required TResult Function(
            String channelCode, String otp, String identifier, String appId)
        verifyOtp,
    required TResult Function() signOut,
    required TResult Function(String phone) forgotPasswordRequested,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, String deviceToken)?
        generateToken,
    TResult? Function(String email, String channelCode)? generateOtp,
    TResult? Function(String email, String channelCode)? resendOtp,
    TResult? Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult? Function()? signOut,
    TResult? Function(String phone)? forgotPasswordRequested,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String deviceToken)?
        generateToken,
    TResult Function(String email, String channelCode)? generateOtp,
    TResult Function(String email, String channelCode)? resendOtp,
    TResult Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult Function()? signOut,
    TResult Function(String phone)? forgotPasswordRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ForgotPasswordRequested value)
        forgotPasswordRequested,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthenticationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GenerateTokenImplCopyWith<$Res> {
  factory _$$GenerateTokenImplCopyWith(
          _$GenerateTokenImpl value, $Res Function(_$GenerateTokenImpl) then) =
      __$$GenerateTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String deviceToken});
}

/// @nodoc
class __$$GenerateTokenImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$GenerateTokenImpl>
    implements _$$GenerateTokenImplCopyWith<$Res> {
  __$$GenerateTokenImplCopyWithImpl(
      _$GenerateTokenImpl _value, $Res Function(_$GenerateTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? deviceToken = null,
  }) {
    return _then(_$GenerateTokenImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenerateTokenImpl implements _GenerateToken {
  const _$GenerateTokenImpl(
      {required this.email, required this.password, required this.deviceToken});

  @override
  final String email;
  @override
  final String password;
  @override
  final String deviceToken;

  @override
  String toString() {
    return 'AuthenticationEvent.generateToken(email: $email, password: $password, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateTokenImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, deviceToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateTokenImplCopyWith<_$GenerateTokenImpl> get copyWith =>
      __$$GenerateTokenImplCopyWithImpl<_$GenerateTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String deviceToken)
        generateToken,
    required TResult Function(String email, String channelCode) generateOtp,
    required TResult Function(String email, String channelCode) resendOtp,
    required TResult Function(
            String channelCode, String otp, String identifier, String appId)
        verifyOtp,
    required TResult Function() signOut,
    required TResult Function(String phone) forgotPasswordRequested,
  }) {
    return generateToken(email, password, deviceToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, String deviceToken)?
        generateToken,
    TResult? Function(String email, String channelCode)? generateOtp,
    TResult? Function(String email, String channelCode)? resendOtp,
    TResult? Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult? Function()? signOut,
    TResult? Function(String phone)? forgotPasswordRequested,
  }) {
    return generateToken?.call(email, password, deviceToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String deviceToken)?
        generateToken,
    TResult Function(String email, String channelCode)? generateOtp,
    TResult Function(String email, String channelCode)? resendOtp,
    TResult Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult Function()? signOut,
    TResult Function(String phone)? forgotPasswordRequested,
    required TResult orElse(),
  }) {
    if (generateToken != null) {
      return generateToken(email, password, deviceToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ForgotPasswordRequested value)
        forgotPasswordRequested,
  }) {
    return generateToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
  }) {
    return generateToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    required TResult orElse(),
  }) {
    if (generateToken != null) {
      return generateToken(this);
    }
    return orElse();
  }
}

abstract class _GenerateToken implements AuthenticationEvent {
  const factory _GenerateToken(
      {required final String email,
      required final String password,
      required final String deviceToken}) = _$GenerateTokenImpl;

  String get email;
  String get password;
  String get deviceToken;
  @JsonKey(ignore: true)
  _$$GenerateTokenImplCopyWith<_$GenerateTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateOtpImplCopyWith<$Res> {
  factory _$$GenerateOtpImplCopyWith(
          _$GenerateOtpImpl value, $Res Function(_$GenerateOtpImpl) then) =
      __$$GenerateOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String channelCode});
}

/// @nodoc
class __$$GenerateOtpImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$GenerateOtpImpl>
    implements _$$GenerateOtpImplCopyWith<$Res> {
  __$$GenerateOtpImplCopyWithImpl(
      _$GenerateOtpImpl _value, $Res Function(_$GenerateOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? channelCode = null,
  }) {
    return _then(_$GenerateOtpImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      channelCode: null == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenerateOtpImpl implements _GenerateOtp {
  const _$GenerateOtpImpl({required this.email, required this.channelCode});

  @override
  final String email;
  @override
  final String channelCode;

  @override
  String toString() {
    return 'AuthenticationEvent.generateOtp(email: $email, channelCode: $channelCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateOtpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, channelCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateOtpImplCopyWith<_$GenerateOtpImpl> get copyWith =>
      __$$GenerateOtpImplCopyWithImpl<_$GenerateOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String deviceToken)
        generateToken,
    required TResult Function(String email, String channelCode) generateOtp,
    required TResult Function(String email, String channelCode) resendOtp,
    required TResult Function(
            String channelCode, String otp, String identifier, String appId)
        verifyOtp,
    required TResult Function() signOut,
    required TResult Function(String phone) forgotPasswordRequested,
  }) {
    return generateOtp(email, channelCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, String deviceToken)?
        generateToken,
    TResult? Function(String email, String channelCode)? generateOtp,
    TResult? Function(String email, String channelCode)? resendOtp,
    TResult? Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult? Function()? signOut,
    TResult? Function(String phone)? forgotPasswordRequested,
  }) {
    return generateOtp?.call(email, channelCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String deviceToken)?
        generateToken,
    TResult Function(String email, String channelCode)? generateOtp,
    TResult Function(String email, String channelCode)? resendOtp,
    TResult Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult Function()? signOut,
    TResult Function(String phone)? forgotPasswordRequested,
    required TResult orElse(),
  }) {
    if (generateOtp != null) {
      return generateOtp(email, channelCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ForgotPasswordRequested value)
        forgotPasswordRequested,
  }) {
    return generateOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
  }) {
    return generateOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    required TResult orElse(),
  }) {
    if (generateOtp != null) {
      return generateOtp(this);
    }
    return orElse();
  }
}

abstract class _GenerateOtp implements AuthenticationEvent {
  const factory _GenerateOtp(
      {required final String email,
      required final String channelCode}) = _$GenerateOtpImpl;

  String get email;
  String get channelCode;
  @JsonKey(ignore: true)
  _$$GenerateOtpImplCopyWith<_$GenerateOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendOtpImplCopyWith<$Res> {
  factory _$$ResendOtpImplCopyWith(
          _$ResendOtpImpl value, $Res Function(_$ResendOtpImpl) then) =
      __$$ResendOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String channelCode});
}

/// @nodoc
class __$$ResendOtpImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ResendOtpImpl>
    implements _$$ResendOtpImplCopyWith<$Res> {
  __$$ResendOtpImplCopyWithImpl(
      _$ResendOtpImpl _value, $Res Function(_$ResendOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? channelCode = null,
  }) {
    return _then(_$ResendOtpImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      channelCode: null == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResendOtpImpl implements _ResendOtp {
  const _$ResendOtpImpl({required this.email, required this.channelCode});

  @override
  final String email;
  @override
  final String channelCode;

  @override
  String toString() {
    return 'AuthenticationEvent.resendOtp(email: $email, channelCode: $channelCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOtpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, channelCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendOtpImplCopyWith<_$ResendOtpImpl> get copyWith =>
      __$$ResendOtpImplCopyWithImpl<_$ResendOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String deviceToken)
        generateToken,
    required TResult Function(String email, String channelCode) generateOtp,
    required TResult Function(String email, String channelCode) resendOtp,
    required TResult Function(
            String channelCode, String otp, String identifier, String appId)
        verifyOtp,
    required TResult Function() signOut,
    required TResult Function(String phone) forgotPasswordRequested,
  }) {
    return resendOtp(email, channelCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, String deviceToken)?
        generateToken,
    TResult? Function(String email, String channelCode)? generateOtp,
    TResult? Function(String email, String channelCode)? resendOtp,
    TResult? Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult? Function()? signOut,
    TResult? Function(String phone)? forgotPasswordRequested,
  }) {
    return resendOtp?.call(email, channelCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String deviceToken)?
        generateToken,
    TResult Function(String email, String channelCode)? generateOtp,
    TResult Function(String email, String channelCode)? resendOtp,
    TResult Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult Function()? signOut,
    TResult Function(String phone)? forgotPasswordRequested,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(email, channelCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ForgotPasswordRequested value)
        forgotPasswordRequested,
  }) {
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
  }) {
    return resendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class _ResendOtp implements AuthenticationEvent {
  const factory _ResendOtp(
      {required final String email,
      required final String channelCode}) = _$ResendOtpImpl;

  String get email;
  String get channelCode;
  @JsonKey(ignore: true)
  _$$ResendOtpImplCopyWith<_$ResendOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String channelCode, String otp, String identifier, String appId});
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelCode = null,
    Object? otp = null,
    Object? identifier = null,
    Object? appId = null,
  }) {
    return _then(_$VerifyOtpImpl(
      channelCode: null == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOtpImpl implements _VerifyOtp {
  const _$VerifyOtpImpl(
      {required this.channelCode,
      required this.otp,
      required this.identifier,
      required this.appId});

  @override
  final String channelCode;
  @override
  final String otp;
  @override
  final String identifier;
  @override
  final String appId;

  @override
  String toString() {
    return 'AuthenticationEvent.verifyOtp(channelCode: $channelCode, otp: $otp, identifier: $identifier, appId: $appId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpImpl &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.appId, appId) || other.appId == appId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, channelCode, otp, identifier, appId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      __$$VerifyOtpImplCopyWithImpl<_$VerifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String deviceToken)
        generateToken,
    required TResult Function(String email, String channelCode) generateOtp,
    required TResult Function(String email, String channelCode) resendOtp,
    required TResult Function(
            String channelCode, String otp, String identifier, String appId)
        verifyOtp,
    required TResult Function() signOut,
    required TResult Function(String phone) forgotPasswordRequested,
  }) {
    return verifyOtp(channelCode, otp, identifier, appId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, String deviceToken)?
        generateToken,
    TResult? Function(String email, String channelCode)? generateOtp,
    TResult? Function(String email, String channelCode)? resendOtp,
    TResult? Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult? Function()? signOut,
    TResult? Function(String phone)? forgotPasswordRequested,
  }) {
    return verifyOtp?.call(channelCode, otp, identifier, appId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String deviceToken)?
        generateToken,
    TResult Function(String email, String channelCode)? generateOtp,
    TResult Function(String email, String channelCode)? resendOtp,
    TResult Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult Function()? signOut,
    TResult Function(String phone)? forgotPasswordRequested,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(channelCode, otp, identifier, appId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ForgotPasswordRequested value)
        forgotPasswordRequested,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements AuthenticationEvent {
  const factory _VerifyOtp(
      {required final String channelCode,
      required final String otp,
      required final String identifier,
      required final String appId}) = _$VerifyOtpImpl;

  String get channelCode;
  String get otp;
  String get identifier;
  String get appId;
  @JsonKey(ignore: true)
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String deviceToken)
        generateToken,
    required TResult Function(String email, String channelCode) generateOtp,
    required TResult Function(String email, String channelCode) resendOtp,
    required TResult Function(
            String channelCode, String otp, String identifier, String appId)
        verifyOtp,
    required TResult Function() signOut,
    required TResult Function(String phone) forgotPasswordRequested,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, String deviceToken)?
        generateToken,
    TResult? Function(String email, String channelCode)? generateOtp,
    TResult? Function(String email, String channelCode)? resendOtp,
    TResult? Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult? Function()? signOut,
    TResult? Function(String phone)? forgotPasswordRequested,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String deviceToken)?
        generateToken,
    TResult Function(String email, String channelCode)? generateOtp,
    TResult Function(String email, String channelCode)? resendOtp,
    TResult Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult Function()? signOut,
    TResult Function(String phone)? forgotPasswordRequested,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ForgotPasswordRequested value)
        forgotPasswordRequested,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthenticationEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordRequestedImplCopyWith<$Res> {
  factory _$$ForgotPasswordRequestedImplCopyWith(
          _$ForgotPasswordRequestedImpl value,
          $Res Function(_$ForgotPasswordRequestedImpl) then) =
      __$$ForgotPasswordRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$ForgotPasswordRequestedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$ForgotPasswordRequestedImpl>
    implements _$$ForgotPasswordRequestedImplCopyWith<$Res> {
  __$$ForgotPasswordRequestedImplCopyWithImpl(
      _$ForgotPasswordRequestedImpl _value,
      $Res Function(_$ForgotPasswordRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$ForgotPasswordRequestedImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordRequestedImpl implements _ForgotPasswordRequested {
  const _$ForgotPasswordRequestedImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthenticationEvent.forgotPasswordRequested(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordRequestedImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordRequestedImplCopyWith<_$ForgotPasswordRequestedImpl>
      get copyWith => __$$ForgotPasswordRequestedImplCopyWithImpl<
          _$ForgotPasswordRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String deviceToken)
        generateToken,
    required TResult Function(String email, String channelCode) generateOtp,
    required TResult Function(String email, String channelCode) resendOtp,
    required TResult Function(
            String channelCode, String otp, String identifier, String appId)
        verifyOtp,
    required TResult Function() signOut,
    required TResult Function(String phone) forgotPasswordRequested,
  }) {
    return forgotPasswordRequested(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password, String deviceToken)?
        generateToken,
    TResult? Function(String email, String channelCode)? generateOtp,
    TResult? Function(String email, String channelCode)? resendOtp,
    TResult? Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult? Function()? signOut,
    TResult? Function(String phone)? forgotPasswordRequested,
  }) {
    return forgotPasswordRequested?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String deviceToken)?
        generateToken,
    TResult Function(String email, String channelCode)? generateOtp,
    TResult Function(String email, String channelCode)? resendOtp,
    TResult Function(
            String channelCode, String otp, String identifier, String appId)?
        verifyOtp,
    TResult Function()? signOut,
    TResult Function(String phone)? forgotPasswordRequested,
    required TResult orElse(),
  }) {
    if (forgotPasswordRequested != null) {
      return forgotPasswordRequested(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ForgotPasswordRequested value)
        forgotPasswordRequested,
  }) {
    return forgotPasswordRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
  }) {
    return forgotPasswordRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    required TResult orElse(),
  }) {
    if (forgotPasswordRequested != null) {
      return forgotPasswordRequested(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordRequested implements AuthenticationEvent {
  const factory _ForgotPasswordRequested({required final String phone}) =
      _$ForgotPasswordRequestedImpl;

  String get phone;
  @JsonKey(ignore: true)
  _$$ForgotPasswordRequestedImplCopyWith<_$ForgotPasswordRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthenticationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$fleetrideAuthFailedImplCopyWith<$Res> {
  factory _$$fleetrideAuthFailedImplCopyWith(_$fleetrideAuthFailedImpl value,
          $Res Function(_$fleetrideAuthFailedImpl) then) =
      __$$fleetrideAuthFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$fleetrideAuthFailedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$fleetrideAuthFailedImpl>
    implements _$$fleetrideAuthFailedImplCopyWith<$Res> {
  __$$fleetrideAuthFailedImplCopyWithImpl(_$fleetrideAuthFailedImpl _value,
      $Res Function(_$fleetrideAuthFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$fleetrideAuthFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$fleetrideAuthFailedImpl implements _fleetrideAuthFailed {
  const _$fleetrideAuthFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.fleetrideAuthFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$fleetrideAuthFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$fleetrideAuthFailedImplCopyWith<_$fleetrideAuthFailedImpl> get copyWith =>
      __$$fleetrideAuthFailedImplCopyWithImpl<_$fleetrideAuthFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return fleetrideAuthFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return fleetrideAuthFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (fleetrideAuthFailed != null) {
      return fleetrideAuthFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return fleetrideAuthFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return fleetrideAuthFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (fleetrideAuthFailed != null) {
      return fleetrideAuthFailed(this);
    }
    return orElse();
  }
}

abstract class _fleetrideAuthFailed implements AuthenticationState {
  const factory _fleetrideAuthFailed(final String message) =
      _$fleetrideAuthFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$fleetrideAuthFailedImplCopyWith<_$fleetrideAuthFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingUpfleetrideAuthImplCopyWith<$Res> {
  factory _$$SettingUpfleetrideAuthImplCopyWith(
          _$SettingUpfleetrideAuthImpl value,
          $Res Function(_$SettingUpfleetrideAuthImpl) then) =
      __$$SettingUpfleetrideAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingUpfleetrideAuthImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$SettingUpfleetrideAuthImpl>
    implements _$$SettingUpfleetrideAuthImplCopyWith<$Res> {
  __$$SettingUpfleetrideAuthImplCopyWithImpl(
      _$SettingUpfleetrideAuthImpl _value,
      $Res Function(_$SettingUpfleetrideAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingUpfleetrideAuthImpl implements _SettingUpfleetrideAuth {
  const _$SettingUpfleetrideAuthImpl();

  @override
  String toString() {
    return 'AuthenticationState.settingUpfleetrideAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingUpfleetrideAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return settingUpfleetrideAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return settingUpfleetrideAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (settingUpfleetrideAuth != null) {
      return settingUpfleetrideAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return settingUpfleetrideAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return settingUpfleetrideAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (settingUpfleetrideAuth != null) {
      return settingUpfleetrideAuth(this);
    }
    return orElse();
  }
}

abstract class _SettingUpfleetrideAuth implements AuthenticationState {
  const factory _SettingUpfleetrideAuth() = _$SettingUpfleetrideAuthImpl;
}

/// @nodoc
abstract class _$$fleetrideAuthSuccessfulImplCopyWith<$Res> {
  factory _$$fleetrideAuthSuccessfulImplCopyWith(
          _$fleetrideAuthSuccessfulImpl value,
          $Res Function(_$fleetrideAuthSuccessfulImpl) then) =
      __$$fleetrideAuthSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object data});
}

/// @nodoc
class __$$fleetrideAuthSuccessfulImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$fleetrideAuthSuccessfulImpl>
    implements _$$fleetrideAuthSuccessfulImplCopyWith<$Res> {
  __$$fleetrideAuthSuccessfulImplCopyWithImpl(
      _$fleetrideAuthSuccessfulImpl _value,
      $Res Function(_$fleetrideAuthSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$fleetrideAuthSuccessfulImpl(
      data: null == data ? _value.data : data,
    ));
  }
}

/// @nodoc

class _$fleetrideAuthSuccessfulImpl implements _fleetrideAuthSuccessful {
  const _$fleetrideAuthSuccessfulImpl({required this.data});

  @override
  final Object data;

  @override
  String toString() {
    return 'AuthenticationState.fleetrideAuthSuccessful(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$fleetrideAuthSuccessfulImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$fleetrideAuthSuccessfulImplCopyWith<_$fleetrideAuthSuccessfulImpl>
      get copyWith => __$$fleetrideAuthSuccessfulImplCopyWithImpl<
          _$fleetrideAuthSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return fleetrideAuthSuccessful(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return fleetrideAuthSuccessful?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (fleetrideAuthSuccessful != null) {
      return fleetrideAuthSuccessful(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return fleetrideAuthSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return fleetrideAuthSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (fleetrideAuthSuccessful != null) {
      return fleetrideAuthSuccessful(this);
    }
    return orElse();
  }
}

abstract class _fleetrideAuthSuccessful implements AuthenticationState {
  const factory _fleetrideAuthSuccessful({required final Object data}) =
      _$fleetrideAuthSuccessfulImpl;

  Object get data;
  @JsonKey(ignore: true)
  _$$fleetrideAuthSuccessfulImplCopyWith<_$fleetrideAuthSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeneratingOtpImplCopyWith<$Res> {
  factory _$$GeneratingOtpImplCopyWith(
          _$GeneratingOtpImpl value, $Res Function(_$GeneratingOtpImpl) then) =
      __$$GeneratingOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeneratingOtpImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$GeneratingOtpImpl>
    implements _$$GeneratingOtpImplCopyWith<$Res> {
  __$$GeneratingOtpImplCopyWithImpl(
      _$GeneratingOtpImpl _value, $Res Function(_$GeneratingOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GeneratingOtpImpl implements _GeneratingOtp {
  const _$GeneratingOtpImpl();

  @override
  String toString() {
    return 'AuthenticationState.generatingOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeneratingOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return generatingOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return generatingOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (generatingOtp != null) {
      return generatingOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return generatingOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return generatingOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (generatingOtp != null) {
      return generatingOtp(this);
    }
    return orElse();
  }
}

abstract class _GeneratingOtp implements AuthenticationState {
  const factory _GeneratingOtp() = _$GeneratingOtpImpl;
}

/// @nodoc
abstract class _$$OtpGenerationFailedImplCopyWith<$Res> {
  factory _$$OtpGenerationFailedImplCopyWith(_$OtpGenerationFailedImpl value,
          $Res Function(_$OtpGenerationFailedImpl) then) =
      __$$OtpGenerationFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$OtpGenerationFailedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$OtpGenerationFailedImpl>
    implements _$$OtpGenerationFailedImplCopyWith<$Res> {
  __$$OtpGenerationFailedImplCopyWithImpl(_$OtpGenerationFailedImpl _value,
      $Res Function(_$OtpGenerationFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$OtpGenerationFailedImpl(
      null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpGenerationFailedImpl implements _OtpGenerationFailed {
  const _$OtpGenerationFailedImpl(this.failureMessage);

  @override
  final String failureMessage;

  @override
  String toString() {
    return 'AuthenticationState.otpGenerationFailed(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpGenerationFailedImpl &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpGenerationFailedImplCopyWith<_$OtpGenerationFailedImpl> get copyWith =>
      __$$OtpGenerationFailedImplCopyWithImpl<_$OtpGenerationFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return otpGenerationFailed(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return otpGenerationFailed?.call(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (otpGenerationFailed != null) {
      return otpGenerationFailed(failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return otpGenerationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return otpGenerationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (otpGenerationFailed != null) {
      return otpGenerationFailed(this);
    }
    return orElse();
  }
}

abstract class _OtpGenerationFailed implements AuthenticationState {
  const factory _OtpGenerationFailed(final String failureMessage) =
      _$OtpGenerationFailedImpl;

  String get failureMessage;
  @JsonKey(ignore: true)
  _$$OtpGenerationFailedImplCopyWith<_$OtpGenerationFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpGeneratedImplCopyWith<$Res> {
  factory _$$OtpGeneratedImplCopyWith(
          _$OtpGeneratedImpl value, $Res Function(_$OtpGeneratedImpl) then) =
      __$$OtpGeneratedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMessage, String referenceNumber});
}

/// @nodoc
class __$$OtpGeneratedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$OtpGeneratedImpl>
    implements _$$OtpGeneratedImplCopyWith<$Res> {
  __$$OtpGeneratedImplCopyWithImpl(
      _$OtpGeneratedImpl _value, $Res Function(_$OtpGeneratedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = null,
    Object? referenceNumber = null,
  }) {
    return _then(_$OtpGeneratedImpl(
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNumber: null == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpGeneratedImpl implements _OtpGenerated {
  const _$OtpGeneratedImpl(
      {required this.successMessage, required this.referenceNumber});

  @override
  final String successMessage;
  @override
  final String referenceNumber;

  @override
  String toString() {
    return 'AuthenticationState.otpGenerated(successMessage: $successMessage, referenceNumber: $referenceNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpGeneratedImpl &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMessage, referenceNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpGeneratedImplCopyWith<_$OtpGeneratedImpl> get copyWith =>
      __$$OtpGeneratedImplCopyWithImpl<_$OtpGeneratedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return otpGenerated(successMessage, referenceNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return otpGenerated?.call(successMessage, referenceNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (otpGenerated != null) {
      return otpGenerated(successMessage, referenceNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return otpGenerated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return otpGenerated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (otpGenerated != null) {
      return otpGenerated(this);
    }
    return orElse();
  }
}

abstract class _OtpGenerated implements AuthenticationState {
  const factory _OtpGenerated(
      {required final String successMessage,
      required final String referenceNumber}) = _$OtpGeneratedImpl;

  String get successMessage;
  String get referenceNumber;
  @JsonKey(ignore: true)
  _$$OtpGeneratedImplCopyWith<_$OtpGeneratedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpResentImplCopyWith<$Res> {
  factory _$$OtpResentImplCopyWith(
          _$OtpResentImpl value, $Res Function(_$OtpResentImpl) then) =
      __$$OtpResentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMessage, String email});
}

/// @nodoc
class __$$OtpResentImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$OtpResentImpl>
    implements _$$OtpResentImplCopyWith<$Res> {
  __$$OtpResentImplCopyWithImpl(
      _$OtpResentImpl _value, $Res Function(_$OtpResentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = null,
    Object? email = null,
  }) {
    return _then(_$OtpResentImpl(
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpResentImpl implements _OtpResent {
  const _$OtpResentImpl({required this.successMessage, required this.email});

  @override
  final String successMessage;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationState.otpResent(successMessage: $successMessage, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpResentImpl &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMessage, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpResentImplCopyWith<_$OtpResentImpl> get copyWith =>
      __$$OtpResentImplCopyWithImpl<_$OtpResentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return otpResent(successMessage, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return otpResent?.call(successMessage, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (otpResent != null) {
      return otpResent(successMessage, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return otpResent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return otpResent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (otpResent != null) {
      return otpResent(this);
    }
    return orElse();
  }
}

abstract class _OtpResent implements AuthenticationState {
  const factory _OtpResent(
      {required final String successMessage,
      required final String email}) = _$OtpResentImpl;

  String get successMessage;
  String get email;
  @JsonKey(ignore: true)
  _$$OtpResentImplCopyWith<_$OtpResentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyingOtpImplCopyWith<$Res> {
  factory _$$VerifyingOtpImplCopyWith(
          _$VerifyingOtpImpl value, $Res Function(_$VerifyingOtpImpl) then) =
      __$$VerifyingOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyingOtpImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$VerifyingOtpImpl>
    implements _$$VerifyingOtpImplCopyWith<$Res> {
  __$$VerifyingOtpImplCopyWithImpl(
      _$VerifyingOtpImpl _value, $Res Function(_$VerifyingOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyingOtpImpl implements _VerifyingOtp {
  const _$VerifyingOtpImpl();

  @override
  String toString() {
    return 'AuthenticationState.verifyingOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyingOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return verifyingOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return verifyingOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (verifyingOtp != null) {
      return verifyingOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return verifyingOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return verifyingOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (verifyingOtp != null) {
      return verifyingOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyingOtp implements AuthenticationState {
  const factory _VerifyingOtp() = _$VerifyingOtpImpl;
}

/// @nodoc
abstract class _$$OtpVerificationFailedImplCopyWith<$Res> {
  factory _$$OtpVerificationFailedImplCopyWith(
          _$OtpVerificationFailedImpl value,
          $Res Function(_$OtpVerificationFailedImpl) then) =
      __$$OtpVerificationFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OtpVerificationFailedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$OtpVerificationFailedImpl>
    implements _$$OtpVerificationFailedImplCopyWith<$Res> {
  __$$OtpVerificationFailedImplCopyWithImpl(_$OtpVerificationFailedImpl _value,
      $Res Function(_$OtpVerificationFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OtpVerificationFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpVerificationFailedImpl implements _OtpVerificationFailed {
  const _$OtpVerificationFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.otpVerificationFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationFailedImplCopyWith<_$OtpVerificationFailedImpl>
      get copyWith => __$$OtpVerificationFailedImplCopyWithImpl<
          _$OtpVerificationFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return otpVerificationFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return otpVerificationFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (otpVerificationFailed != null) {
      return otpVerificationFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return otpVerificationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return otpVerificationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (otpVerificationFailed != null) {
      return otpVerificationFailed(this);
    }
    return orElse();
  }
}

abstract class _OtpVerificationFailed implements AuthenticationState {
  const factory _OtpVerificationFailed(final String message) =
      _$OtpVerificationFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$OtpVerificationFailedImplCopyWith<_$OtpVerificationFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerifiedImplCopyWith<$Res> {
  factory _$$OtpVerifiedImplCopyWith(
          _$OtpVerifiedImpl value, $Res Function(_$OtpVerifiedImpl) then) =
      __$$OtpVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMessage});
}

/// @nodoc
class __$$OtpVerifiedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$OtpVerifiedImpl>
    implements _$$OtpVerifiedImplCopyWith<$Res> {
  __$$OtpVerifiedImplCopyWithImpl(
      _$OtpVerifiedImpl _value, $Res Function(_$OtpVerifiedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = null,
  }) {
    return _then(_$OtpVerifiedImpl(
      null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpVerifiedImpl implements _OtpVerified {
  const _$OtpVerifiedImpl(this.successMessage);

  @override
  final String successMessage;

  @override
  String toString() {
    return 'AuthenticationState.otpVerified(successMessage: $successMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerifiedImpl &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerifiedImplCopyWith<_$OtpVerifiedImpl> get copyWith =>
      __$$OtpVerifiedImplCopyWithImpl<_$OtpVerifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return otpVerified(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return otpVerified?.call(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified(successMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return otpVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return otpVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified(this);
    }
    return orElse();
  }
}

abstract class _OtpVerified implements AuthenticationState {
  const factory _OtpVerified(final String successMessage) = _$OtpVerifiedImpl;

  String get successMessage;
  @JsonKey(ignore: true)
  _$$OtpVerifiedImplCopyWith<_$OtpVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignedOutImplCopyWith<$Res> {
  factory _$$SignedOutImplCopyWith(
          _$SignedOutImpl value, $Res Function(_$SignedOutImpl) then) =
      __$$SignedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedOutImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$SignedOutImpl>
    implements _$$SignedOutImplCopyWith<$Res> {
  __$$SignedOutImplCopyWithImpl(
      _$SignedOutImpl _value, $Res Function(_$SignedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignedOutImpl implements _SignedOut {
  const _$SignedOutImpl();

  @override
  String toString() {
    return 'AuthenticationState.signedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements AuthenticationState {
  const factory _SignedOut() = _$SignedOutImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordLoadingImplCopyWith<$Res> {
  factory _$$ForgotPasswordLoadingImplCopyWith(
          _$ForgotPasswordLoadingImpl value,
          $Res Function(_$ForgotPasswordLoadingImpl) then) =
      __$$ForgotPasswordLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordLoadingImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$ForgotPasswordLoadingImpl>
    implements _$$ForgotPasswordLoadingImplCopyWith<$Res> {
  __$$ForgotPasswordLoadingImplCopyWithImpl(_$ForgotPasswordLoadingImpl _value,
      $Res Function(_$ForgotPasswordLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasswordLoadingImpl implements _ForgotPasswordLoading {
  const _$ForgotPasswordLoadingImpl();

  @override
  String toString() {
    return 'AuthenticationState.forgotPasswordLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return forgotPasswordLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return forgotPasswordLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (forgotPasswordLoading != null) {
      return forgotPasswordLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return forgotPasswordLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return forgotPasswordLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (forgotPasswordLoading != null) {
      return forgotPasswordLoading(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordLoading implements AuthenticationState {
  const factory _ForgotPasswordLoading() = _$ForgotPasswordLoadingImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordSuccessImplCopyWith<$Res> {
  factory _$$ForgotPasswordSuccessImplCopyWith(
          _$ForgotPasswordSuccessImpl value,
          $Res Function(_$ForgotPasswordSuccessImpl) then) =
      __$$ForgotPasswordSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordSuccessImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$ForgotPasswordSuccessImpl>
    implements _$$ForgotPasswordSuccessImplCopyWith<$Res> {
  __$$ForgotPasswordSuccessImplCopyWithImpl(_$ForgotPasswordSuccessImpl _value,
      $Res Function(_$ForgotPasswordSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasswordSuccessImpl implements _ForgotPasswordSuccess {
  const _$ForgotPasswordSuccessImpl();

  @override
  String toString() {
    return 'AuthenticationState.forgotPasswordSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return forgotPasswordSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return forgotPasswordSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (forgotPasswordSuccess != null) {
      return forgotPasswordSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return forgotPasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return forgotPasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (forgotPasswordSuccess != null) {
      return forgotPasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordSuccess implements AuthenticationState {
  const factory _ForgotPasswordSuccess() = _$ForgotPasswordSuccessImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordFailureImplCopyWith<$Res> {
  factory _$$ForgotPasswordFailureImplCopyWith(
          _$ForgotPasswordFailureImpl value,
          $Res Function(_$ForgotPasswordFailureImpl) then) =
      __$$ForgotPasswordFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ForgotPasswordFailureImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$ForgotPasswordFailureImpl>
    implements _$$ForgotPasswordFailureImplCopyWith<$Res> {
  __$$ForgotPasswordFailureImplCopyWithImpl(_$ForgotPasswordFailureImpl _value,
      $Res Function(_$ForgotPasswordFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ForgotPasswordFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordFailureImpl implements _ForgotPasswordFailure {
  const _$ForgotPasswordFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.forgotPasswordFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordFailureImplCopyWith<_$ForgotPasswordFailureImpl>
      get copyWith => __$$ForgotPasswordFailureImplCopyWithImpl<
          _$ForgotPasswordFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) fleetrideAuthFailed,
    required TResult Function() settingUpfleetrideAuth,
    required TResult Function(Object data) fleetrideAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String email) otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
    required TResult Function() forgotPasswordLoading,
    required TResult Function() forgotPasswordSuccess,
    required TResult Function(String message) forgotPasswordFailure,
  }) {
    return forgotPasswordFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? fleetrideAuthFailed,
    TResult? Function()? settingUpfleetrideAuth,
    TResult? Function(Object data)? fleetrideAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String email)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
    TResult? Function()? forgotPasswordLoading,
    TResult? Function()? forgotPasswordSuccess,
    TResult? Function(String message)? forgotPasswordFailure,
  }) {
    return forgotPasswordFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? fleetrideAuthFailed,
    TResult Function()? settingUpfleetrideAuth,
    TResult Function(Object data)? fleetrideAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String email)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    TResult Function()? forgotPasswordLoading,
    TResult Function()? forgotPasswordSuccess,
    TResult Function(String message)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (forgotPasswordFailure != null) {
      return forgotPasswordFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_fleetrideAuthFailed value) fleetrideAuthFailed,
    required TResult Function(_SettingUpfleetrideAuth value)
        settingUpfleetrideAuth,
    required TResult Function(_fleetrideAuthSuccessful value)
        fleetrideAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ForgotPasswordLoading value)
        forgotPasswordLoading,
    required TResult Function(_ForgotPasswordSuccess value)
        forgotPasswordSuccess,
    required TResult Function(_ForgotPasswordFailure value)
        forgotPasswordFailure,
  }) {
    return forgotPasswordFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult? Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult? Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
  }) {
    return forgotPasswordFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_fleetrideAuthFailed value)? fleetrideAuthFailed,
    TResult Function(_SettingUpfleetrideAuth value)? settingUpfleetrideAuth,
    TResult Function(_fleetrideAuthSuccessful value)? fleetrideAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ForgotPasswordLoading value)? forgotPasswordLoading,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_ForgotPasswordFailure value)? forgotPasswordFailure,
    required TResult orElse(),
  }) {
    if (forgotPasswordFailure != null) {
      return forgotPasswordFailure(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordFailure implements AuthenticationState {
  const factory _ForgotPasswordFailure(final String message) =
      _$ForgotPasswordFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ForgotPasswordFailureImplCopyWith<_$ForgotPasswordFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
