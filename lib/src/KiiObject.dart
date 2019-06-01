import 'package:kiilib_core/src/KiiBucket.dart';
import 'package:kiilib_core/src/KiiEntity.dart';

class KiiObject implements KiiEntity {
  final KiiBucket bucket;
  String id;
  final Map<String, dynamic> body = Map<String, dynamic>();

  KiiObject(KiiBucket bucket) : this.withId(bucket, "");
  KiiObject.withId(this.bucket, this.id);

  void replace(Map<String, dynamic> input) {
    this.body.clear();
    this.body.addAll(input);
  }

  void apply(Map<String, dynamic> input) {
    this.body.addAll(input);
  }

  @override
  String get path => "${this.bucket.path}/objects/${this.id}";
}
