
import 'package:fpdart/fpdart.dart';
import 'package:fleetride/feature/auth/domain/services/auth_service_layer.dart';
import 'package:fleetride/feature/auth/infrastructure/datasource/authentication_local_data_source.dart';
import 'package:fleetride/feature/auth/infrastructure/datasource/authentication_remote_data_source.dart';
import 'package:fleetride/core/constants/exception.dart';
import 'package:fleetride/core/network/domain/inetwork_manager.dart';
import 'package:fleetride/core/network/internet_request.dart';
import 'package:fleetride/core/either_types.dart';


class AuthenticationServiceAdapter
    with InternetRequestMixin
    implements AuthenticationService {
  final INetworkManager _networkManager;
  final AuthenticationRemoteDataSource _remoteDataSource;
  final AuthenticationLocalDataSource _localDataSource;

  AuthenticationServiceAdapter({
    required INetworkManager networkManager,
    required AuthenticationRemoteDataSource remoteDataSource,
    required AuthenticationLocalDataSource localDataSource,
  })  : _networkManager = networkManager,
        _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  EitherFailureOr<Object> generateToken({
    required String email,
    required String password,
    required String deviceToken
  }) {

    return TaskEither.tryCatch(
      () => checkInternetThenMakeRequest(
        _networkManager,
        request: () => _remoteDataSource.generateToken(
          email: email,
          password: password,
          deviceToken: deviceToken,
        ),
      ),
      handleException,
    );
  }



  @override
  EitherFailureOrUnit saveToken(String token) {
    return TaskEither.tryCatch(
      () => _localDataSource.saveToken(token),
      handleException,
    );
  }



  @override
  EitherFailureOr<String> generateOtp({
    required String email,
    required String channelCode,
  }) {
    return TaskEither.tryCatch(
      () => checkInternetThenMakeRequest(
        _networkManager,
        request: () => _remoteDataSource.generateOtp(
          email: email,
          channelCode: channelCode,
        ),
      ),
      handleException,
    );
  }

  @override
  EitherFailureOr<String> verifyOtp({
    required String channelCode,
    required String otp,
    required String identifier,
    required String appId,
  }) {
    return TaskEither.tryCatch(
      () => checkInternetThenMakeRequest(
        _networkManager,
        request: () => _remoteDataSource.verifyOtp(
          channelCode: channelCode,
          otp: otp,
          identifier: identifier,
          appId: appId,
        ),
      ),
      handleException,
    );
  }

  @override
  EitherFailureOrUnit clearAuthToken() {
    return TaskEither.tryCatch(
      () => _localDataSource.clearAuthToken(),
      handleException,
    );
  }
  

}

