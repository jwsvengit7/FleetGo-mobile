import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fleetride/core/network/domain/inetwork_manager.dart';



///Implementation of NetworkManager
class NetworkManager implements INetworkManager {
  @override
  Future<bool> get isConnected async {
    final res = await Connectivity().checkConnectivity();
        print(res.name);

    return res != ConnectivityResult.none;
  }
}

class NetworkManagerImpl implements INetworkManager {
  final Connectivity _connectivity;

  NetworkManagerImpl(this._connectivity);

  @override
  Future<bool> get isConnected async {
    final res = await _connectivity.checkConnectivity();
    print(res.name);
    return res != ConnectivityResult.none;
  }
}
