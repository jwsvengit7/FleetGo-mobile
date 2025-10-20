part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;

  const factory AuthenticationState.fleetrideAuthFailed(String message) =
      _fleetrideAuthFailed;

  const factory AuthenticationState.settingUpfleetrideAuth() = _SettingUpfleetrideAuth;

  const factory AuthenticationState.fleetrideAuthSuccessful({
    required Object data,
  }) = _fleetrideAuthSuccessful;

  const factory AuthenticationState.generatingOtp() = _GeneratingOtp;

  const factory AuthenticationState.otpGenerationFailed(String failureMessage) =
      _OtpGenerationFailed;

  const factory AuthenticationState.otpGenerated({
    required String successMessage,
    required String referenceNumber,
  }) = _OtpGenerated;

  const factory AuthenticationState.otpResent({
    required String successMessage,
    required String email,
  }) = _OtpResent;

  const factory AuthenticationState.verifyingOtp() = _VerifyingOtp;

  const factory AuthenticationState.otpVerificationFailed(String message) =
      _OtpVerificationFailed;

  const factory AuthenticationState.otpVerified(String successMessage) =
      _OtpVerified;

  const factory AuthenticationState.signedOut() = _SignedOut;

  const factory AuthenticationState.forgotPasswordLoading() = _ForgotPasswordLoading;
  const factory AuthenticationState.forgotPasswordSuccess() = _ForgotPasswordSuccess;
  const factory AuthenticationState.forgotPasswordFailure(String message) = _ForgotPasswordFailure;
}


/// Add helper extension at the bottom
extension AuthGetters on AuthenticationState {
  bool get isAuthenticated => maybeWhen(
        fleetrideAuthSuccessful: (_) => true, // authenticated case
        otpVerified: (_) => true,        // also counts as logged in
        orElse: () => false,             // everything else
      );
}