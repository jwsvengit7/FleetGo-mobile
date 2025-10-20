
import 'package:fleetride/feature/auth/infrastructure/datasource/authentication_remote_data_source.dart';
import 'package:fleetride/feature/auth/infrastructure/models/generate_token_response_model.dart';
import 'package:fleetride/core/extensions/logger_extension.dart';

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
    return dummy;
  }

 

  @override
  Future<String> generateOtp(
      {required String email,
      required String channelCode}) async {
    await Future.delayed(duration);
    return "Otp sent to mock number";
  }

  @override
  Future<String> verifyOtp({
    required String channelCode,
    required String otp,
    required String identifier,
    required String appId,
  }) async {
    await Future.delayed(duration);
    return otp == "123456" ? "Otp verified" : throw Exception("Invalid Otp");
  }
}
