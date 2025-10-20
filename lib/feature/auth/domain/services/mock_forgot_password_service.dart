import 'package:fleetride/core/exceptions.dart';
import 'package:fpdart/fpdart.dart';
import 'package:fleetride/core/either_types.dart';
import 'forgot_password_service.dart';

class MockForgotPasswordService implements ForgotPasswordService {
  @override
  Future<Either<Failure, void>> requestPasswordReset({
    required String phone,
  }) async {
    await Future.delayed(Duration(milliseconds: 500)); // simulate async delay
    return phone == "1234567890"
        ? right(null)
        : left(Failure(message: "Invalid phone number"));
  }
}

EitherFailureOr<String> verifyOtp({
  required String phone,
  required String otp,
}) {
  return (phone == "1234567890" && otp == "123456")
      ? TaskEither.right("valid-token") // Success
      : TaskEither.left(Failure(message: "Invalid OTP"));
}

EitherFailureOrUnit resetPassword({
  required String token,
  required String newPassword,
}) {
  return (token == "valid-token" && newPassword.isNotEmpty)
      ? TaskEither.right(unit) // Success
      : TaskEither.left(Failure(message: "Invalid token or password"));
}
