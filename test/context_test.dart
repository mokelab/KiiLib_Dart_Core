import 'package:kiilib_core/kiilib_core.dart';
import 'package:test/test.dart';

void main() {
  test('empty auth header', () {
    var context = KiiContext("appID", "appKey", "https://api.kii.com/api",
        (KiiContext context) => null);
    var header = context.makeAuthHeader();

    expect(header.length, 0);
  });

  test('auth header with token', () {
    var context = KiiContext("appID", "appKey", "https://api.kii.com/api",
        (KiiContext context) => null);
    context.token = "access_token001";
    var header = context.makeAuthHeader();

    expect(header.length, 1);
    expect(header["authorization"], "bearer access_token001");
  });
}
