part of '_auth_injection.dart';

class MockAuthenticationInjection implements ServiceInjection {
  @override
  Future<void> register() async {
    sl.registerLazySingleton<AuthenticationApi>(
      () => AuthenticationApi(authenticationFacade: sl()),
    );

    sl.registerFactory(
      () => AuthenticationBloc(
        authenticationFacade: sl(),
        forgotPasswordService: sl(),
      ),
    );

    sl.registerLazySingleton<AuthenticationFacade>(
      () => AuthenticationFacade(authenticationService: sl()),
    );

    sl.registerLazySingleton<AuthenticationService>(
      () => AuthenticationServiceAdapter(
        networkManager: sl(),
        remoteDataSource: sl(),
        localDataSource: sl(),
      ),
    );

    sl.registerLazySingleton<AuthenticationRemoteDataSource>(
      () => MockAuthenticationRemoteDataSourceImpl(),
    );
    sl.registerLazySingleton<ForgotPasswordService>(
      () => MockForgotPasswordService(),
    );

    final box = Hive.box<String>(StringConst.accessTokenBox);
    sl.registerLazySingleton<AuthenticationLocalDataSource>(
      () => AuthenticationLocalDataSourceImpl(box: box),
    );
  }
}
