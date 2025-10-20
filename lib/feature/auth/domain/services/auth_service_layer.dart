import 'package:fleetride/core/either_types.dart';


abstract class AuthenticationService {
  EitherFailureOr<Object> generateToken({
    required String email,
    required String password,
    required String deviceToken,
  });



  EitherFailureOrUnit saveToken(String token);



  EitherFailureOr<String> generateOtp({
    required String email,
    required String channelCode,
  });

  EitherFailureOr<String> verifyOtp({
    required String channelCode,
    required String otp,
    required String identifier,
    required String appId,
  });

  EitherFailureOrUnit clearAuthToken();
}
