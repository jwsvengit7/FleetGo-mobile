import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:fleetride/core/constants/string_const.dart';


abstract class AuthenticationLocalDataSource {
  Future<Unit> saveToken(String token);

  Future<Unit> clearAuthToken();
}

class AuthenticationLocalDataSourceImpl
    implements AuthenticationLocalDataSource {
  final Box _box;

  AuthenticationLocalDataSourceImpl({required Box box}) : _box = box;

  @override
  Future<Unit> saveToken(String token) async {
        print(token);

    await _box.put(StringConst.accessTokenKey, token);
    print("Save Token");
    return unit;
  }

  @override
  Future<Unit> clearAuthToken() async {
    _box.delete(StringConst.accessTokenKey);
    return unit;
  }

  @override
  Future<String?> getAuthToken() async {
    final token = _box.get(StringConst.accessTokenKey) as String?;
    print("Fetched Token: $token");
    return token;
  }
}
