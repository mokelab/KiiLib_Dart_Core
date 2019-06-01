import 'package:kiilib_core/src/KiiEntity.dart';

abstract class BucketOwner implements KiiEntity {}

class KiiBucket implements KiiEntity {
  final BucketOwner owner;
  final String name;

  KiiBucket(this.owner, this.name);

  @override
  String get path => "${this.owner.path}/buckets/${this.name}";
}
