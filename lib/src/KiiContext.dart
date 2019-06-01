import 'package:KiiLibCore/src/KiiHttpClient.dart';

class KiiContext {
  final String appID;
  final String appKey;
  final String baseURL;
  final KiiHttpClient Function() clientFactory;
  String token = "";

  KiiContext(this.appID, this.appKey, this.baseURL, this.clientFactory);
}
