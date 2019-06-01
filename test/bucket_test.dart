import 'package:kiilib_core/src/KiiApp.dart';
import 'package:kiilib_core/src/KiiUser.dart';
import 'package:kiilib_core/src/KiiBucket.dart';
import 'package:test/test.dart';

void main() {
  test("app bucket", () {
    var bucket = KiiBucket(KiiApp(), "demoBucket");
    expect(bucket.path, "/buckets/demoBucket");
  });
  test("user bucket", () {
    var bucket = KiiBucket(KiiUser("user0123"), "demoBucket");
    expect(bucket.path, "/users/user0123/buckets/demoBucket");
  });
}
