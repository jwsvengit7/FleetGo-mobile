

import 'package:fleetride/core/extensions/logger_extension.dart';


import '../models/generate_token_response_model.dart';
import 'authentication_remote_data_source.dart';

class MockAuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  final duration = const Duration(milliseconds: 300);

  @override
  Future<GenerateTokenResponseModel> generateToken(
      {required String email,
      required String password,
      required String deviceToken}) async {
    await Future.delayed(duration);
    final dummy = GenerateTokenResponseModel.dummy();
    dummy.toString().log();
    return email == "chiorlujack@gmail.com" ? dummy : throw Exception("Invalid Credentials");

  }



  @override
  Future<String> generateOtp(
      {required String email,
      required String channelCode}) async {
    await Future.delayed(duration);
        return email == "chiorlujack@gmail.com" ? "Otp sent to mock number" : throw Exception("Error Occur while sending OTP");

  }

  @override
  Future<String> verifyOtp({
    required String channelCode,
    required String otp,
    required String identifier,
    required String appId,
  }) async {
    print("Roo:::");
    await Future.delayed(duration);
    return otp == "1234" ? "Otp verified" : throw Exception("Invalid Otp");
  }
}
