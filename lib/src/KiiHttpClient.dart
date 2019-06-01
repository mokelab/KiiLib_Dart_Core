enum Method {
  GET,
  POST,
  PUT,
  DELETE,
}

class KiiHttpResponse {
  final int status;
  final Map<String, String> header;
  final String body;

  KiiHttpResponse(this.status, this.header, this.body);
}

abstract class KiiHttpClient {
  Future<KiiHttpResponse> sendText(
      Method method, String url, Map<String, String> headers, String body);
  Future<KiiHttpResponse> sendJson(Method method, String url,
      Map<String, String> headers, Map<String, dynamic> body);
}
