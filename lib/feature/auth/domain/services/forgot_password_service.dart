import 'package:fpdart/fpdart.dart';
import 'package:fleetride/core/exceptions.dart';

abstract class ForgotPasswordService {
  Future<Either<Failure, void>> requestPasswordReset({required String phone});
}
