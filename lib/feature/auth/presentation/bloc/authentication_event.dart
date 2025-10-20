part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.started() = _Started;
  const factory AuthenticationEvent.generateToken({
    required String email,
    required String password,
    required String deviceToken,
  }) = _GenerateToken;

  const factory AuthenticationEvent.generateOtp({
    required String email,
    required String channelCode,
  }) = _GenerateOtp;

  const factory AuthenticationEvent.resendOtp({
    required String email,
    required String channelCode,
  }) = _ResendOtp;

  const factory AuthenticationEvent.verifyOtp({
    required String channelCode,
    required String otp,
    required String identifier,
    required String appId,
  }) = _VerifyOtp;

  const factory AuthenticationEvent.signOut() = _SignOut;

  const factory AuthenticationEvent.forgotPasswordRequested({
    required String phone,
  }) = _ForgotPasswordRequested;
}
