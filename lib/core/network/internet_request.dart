import 'dart:developer';

import 'package:fleetride/core/exceptions.dart';
import 'package:fleetride/core/network/domain/inetwork_manager.dart';


mixin InternetRequestMixin {
  Future<T> checkInternetThenMakeRequest<T>(
    INetworkManager networkManager, {
    required Future<T> Function() request,
  }) async {
    if (await networkManager.isConnected) {
      return await request();
    } else {
      throw ConnectionException();
    }
  }

  Failure handleException(Object error, StackTrace stackTrace) {
    log(error.toString());
    log(stackTrace.toString());
    if (error is Failure) {
      return error;
    }
    return InternalException();
  }
}
