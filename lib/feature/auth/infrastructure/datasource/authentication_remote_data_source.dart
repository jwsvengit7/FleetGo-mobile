import 'package:fleetride/core/extensions/logger_extension.dart';
import 'package:fleetride/core/fleetride_core/fleetride_core_api.dart';
import 'package:fleetride/core/network/domain/api_caller.dart';
import 'package:flutter/material.dart';
import 'package:fleetride/feature/auth/domain/model/app_request.dart';

import '../models/generate_token_response_model.dart';



abstract class AuthenticationRemoteDataSource  {
  Future<GenerateTokenResponseModel> generateToken({
    required String email,
    required String password,
    required String deviceToken,
  });

  Future<String> generateOtp({
    required String email,
    required String channelCode,
  });

  Future<String> verifyOtp({
    required String channelCode,
    required String otp,
    required String identifier,
    required String appId,
  });
}

class AuthenticationRemoteDataSourceImpl extends AppRequest
    implements AuthenticationRemoteDataSource {
  final ApiCaller _apiCaller;

  AuthenticationRemoteDataSourceImpl({required ApiCaller apiCaller})
    : _apiCaller = apiCaller;

  @override
  Future<GenerateTokenResponseModel> generateToken({
    required String email,
    required String password,
    required String deviceToken,
  }) async {
    final url = FleetrideCoreApi.getURL("/auth/login");
    FleetrideCoreApi.getURL.log();
    print("Ķ");
    final response = await _apiCaller.post(
      url: url,
      body: {
        "email": email, 
        "password": password,
        "version": version, 
        "deviceId": deviceId,

        "deviceToken": deviceToken,
        },
    );

    if (response.isSuccessful(
      doSuccessCheck: (data) => data["status"] == 200,
    )) {
      debugPrint("::: response ${response.data['result']}");
      return GenerateTokenResponseModel.fromJson(response.data);
    }

    throw Exception(response.data["message"]);
  }

  @override
  Future<String> generateOtp({
    required String email,
    required String channelCode,
  }) async {
    final url = FleetrideCoreApi.getURL("authapi/v1/resend-otp");

    final response = await _apiCaller.post(
      url: url,
      body: {
        "email": email,
        "channel_code": channelCode,
      },
    );

    if (response.isSuccessful()) {
      return response.data["response_message"] ?? "Success";
    }

    throw Exception(response.data["response_message"]);
  }

  @override
  Future<String> verifyOtp({
    required String channelCode,
    required String otp,
    required String identifier,
    required String appId,
  }) async {
    final url = FleetrideCoreApi.getURL("authapi/v1/ValidateOTP");

    final response = await _apiCaller.post(
      url: url,
      body: {
        "channel_code": channelCode,
        "otp": otp,
        "identifier": identifier,
        "app_id": appId,
      },
    );

    if (response.isSuccessful()) {
      return response.data["response_message"] ?? "Success";
    }

    throw Exception(response.data["response_message"]);
  }
}
