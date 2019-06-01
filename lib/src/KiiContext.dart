import 'package:kiilib_core/src/KiiHttpClient.dart';

class KiiContext {
  final String appID;
  final String appKey;
  final String baseURL;
  KiiHttpClient client;
  String token = "";

  KiiContext(this.appID, this.appKey, this.baseURL,
      KiiHttpClient Function(KiiContext) clientFactory) {
    this.client = clientFactory(this);
  }

  Map<String, String> makeAuthHeader() {
    if (this.token.length == 0) {
      return {};
    } else {
      return {"authorization": "bearer ${this.token}"};
    }
  }
}
