import 'package:kiilib_core/src/KiiApp.dart';
import 'package:kiilib_core/src/KiiBucket.dart';
import 'package:kiilib_core/src/KiiObject.dart';
import 'package:test/test.dart';

void main() {
  test('new object', () {
    var bucket = KiiBucket(KiiApp(), "appScope");
    var object = KiiObject(bucket);
    object.body["name"] = "fkm";
    object.body["age"] = 34;

    expect(object.path, "/buckets/appScope/objects/");
  });

  test('object with ID', () {
    var bucket = KiiBucket(KiiApp(), "appScope");
    var object = KiiObject.withId(bucket, "obj001");
    object.body["name"] = "fkm";
    object.body["age"] = 34;

    expect(object.path, "/buckets/appScope/objects/obj001");
  });

  test('replace', () {
    var bucket = KiiBucket(KiiApp(), "appScope");
    var object = KiiObject.withId(bucket, "obj001");
    object.body["name"] = "fkm";
    object.body["age"] = 34;
    object.replace({"name": "moke"});

    expect(object.body.length, 1);
    expect(object.body["name"], "moke");
  });

  test('apply', () {
    var bucket = KiiBucket(KiiApp(), "appScope");
    var object = KiiObject.withId(bucket, "obj001");
    object.body["name"] = "fkm";
    object.body["age"] = 34;
    object.apply({"name": "moke", "level": 4});

    expect(object.body.length, 3);
    expect(object.body["name"], "moke");
    expect(object.body["age"], 34);
    expect(object.body["level"], 4);
  });
}
