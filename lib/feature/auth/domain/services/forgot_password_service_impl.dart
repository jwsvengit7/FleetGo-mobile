import 'package:fpdart/fpdart.dart';
import 'package:fleetride/core/exceptions.dart';
import 'package:fleetride/feature/auth/domain/services/forgot_password_service.dart';

class ForgotPasswordServiceImpl implements ForgotPasswordService {
  @override
  Future<Either<Failure, void>> requestPasswordReset({
    required String phone,
  }) async {
    try {
      // Call your API or password reset logic
      // Example:
      // await apiClient.post('/forgot-password', data: {'phone': phone});

      return right(null); // success
    } catch (e) {
      return left(Failure(message: e.toString())); // failure
    }
  }
}
