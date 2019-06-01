import 'package:kiilib_core/src/KiiBucket.dart';
import 'package:kiilib_core/src/KiiEntity.dart';

class KiiUser implements KiiEntity, BucketOwner {
  final String id;

  KiiUser(this.id);

  @override
  String get path => "/users/${this.id}";
}
