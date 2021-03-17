// @dart=2.9
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'serializers.dart';

part 'users.g.dart';

abstract class Users implements Built<Users, UsersBuilder> {
  Users._();
  factory Users([void Function(UsersBuilder) updates]) = _$Users;

  static Serializer<Users> get serializer => _$usersSerializer;

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
        Users.serializer,
        Users((u) => u
          ..email = email
          ..name = name));
