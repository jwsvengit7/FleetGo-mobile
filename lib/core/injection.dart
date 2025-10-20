
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:fleetride/core/constants/string_const.dart';
import 'package:fleetride/core/network/dio_callar.dart';
import 'package:fleetride/core/network/domain/api_caller.dart';
import 'package:fleetride/core/network/domain/inetwork_manager.dart';
import 'package:fleetride/core/network/network_manager.dart';
import 'package:fleetride/feature/auth/_auth_injection.dart';

import '../fleetride_app.dart';
import 'network/domain/inetwork_manager.dart';
import 'network/network_manager.dart';

final sl = GetIt.instance;

abstract class ServiceInjection {
  Future<void> register();
}

Future<void> _initInjection(
  List<ServiceInjection> services,
) async {
  for (var service in services) {
    await service.register();
  }

  final box = Hive.box<String>(StringConst.accessTokenBox);
  sl.registerLazySingleton<ApiCaller>(
    () => DioApiCaller(
      Dio(),
      authBox: box,
    ),
  );

  sl.registerLazySingleton<INetworkManager>(
    () => NetworkManagerImpl(
      Connectivity(),
    ),
  );
}

Future<void> initInjection({bool useMock = false}) async {
  if (useMock) {
    await _initMockInjections();
  } else {
    await _initRealInjection();
  }

  FleetrideApp.isMock = useMock;
}

Future<void> _initRealInjection() async {
  await _initInjection(
    [

      AuthenticationInjection(),
 
    ],
  );
}

Future<void> _initMockInjections() async {
  await _initInjection(
    [
    
      MockAuthenticationInjection(),
    
    ],
  );
}
