
import 'package:fpdart/fpdart.dart';
import 'package:fleetride/feature/auth/domain/services/auth_service_layer.dart';
import 'package:fleetride/core/exceptions.dart';
import 'package:fleetride/core/either_types.dart';



class AuthenticationFacade {
  final AuthenticationService _authenticationService;

  AuthenticationFacade({
    required AuthenticationService authenticationService,
  }) : _authenticationService = authenticationService;

  AsyncEitherFailureOr<Object> generateToken({
    required String email,
    required String password,
    required String deviceToken,
  }) async {
    return await _authenticationService
        .generateToken(
          email: email,
          password: password,
          deviceToken: deviceToken,
        )
        .run();
  }

 

  AsyncEitherFailureOr<Unit> saveToken(String token) async {
    return await _authenticationService.saveToken(token).run();
  }


  AsyncEitherFailureOr<String> generateOtp({
    required String email,
    required String channelCode,
  }) async {
    return await _authenticationService
        .generateOtp(
          email: email,
          channelCode: channelCode,
        )
        .run();
  }

  AsyncEitherFailureOr<String> verifyOtp({
    required String channelCode,
    required String otp,
    required String identifier,
    required String appId,
  }) async {
    return await _authenticationService
        .verifyOtp(
          channelCode: channelCode,
          otp: otp,
          identifier: identifier,
          appId: appId,
        )
        .run();
  }

  AsyncEitherFailureOr<Unit> clearAuthToken() async {
    return await _authenticationService.clearAuthToken().run();
  }
}
