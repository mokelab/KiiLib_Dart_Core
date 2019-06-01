import 'package:kiilib_core/src/KiiEntity.dart';

import '../kiilib_core.dart';

class KiiGroup implements KiiEntity, BucketOwner {
  String id = "";
  final String name;
  final KiiUser owner;
  final List<KiiUser> members;

  KiiGroup(this.id, this.name, this.owner, this.members);

  @override
  String get path => "/groups/${this.id}";
}
