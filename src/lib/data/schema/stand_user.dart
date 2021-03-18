// @dart=2.9
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../serializers.dart';

part 'stand_user.g.dart';

abstract class StandUser implements Built<StandUser, StandUserBuilder> {
  StandUser._();
  factory StandUser([void Function(StandUserBuilder) updates]) = _$StandUser;

  static Serializer<StandUser> get serializer => _$standUserSerializer;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;
  String get email;
  String get name;
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String name,
}) =>
    serializers.serializeWith(
        StandUser.serializer,
        StandUser((u) => u
          ..email = email
          ..name = name));
