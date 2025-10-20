

import '../../flavor.dart';

class FleetrideCoreApi {
  static final baseUri = FlavorConfig.baseUri;

  static Uri getURL(String endpoint, [String? query]) {
    return Uri(
      scheme: baseUri.scheme,
      host: baseUri.host,
      port: baseUri.port,
      path: '${baseUri.path}/$endpoint',
      query: query,
    );
  }
}