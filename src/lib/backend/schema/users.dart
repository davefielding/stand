// @dart=2.9
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'users.g.dart';

abstract class Users implements Built<Users, UsersBuilder> {
  static Serializer<Users> get serializer => _$usersSerializer;

  @nullable
  String get email;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersBuilder builder) => builder
    ..email = ''
    ..name = '';

  static CollectionReference get collection => FirebaseFirestore.instance.collection('users');

  static Stream<Users> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  Users._();
  factory Users([void Function(UsersBuilder) updates]) = _$Users;
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

Users get dummyUsers {
  final builder = UsersBuilder()
    ..email = dummyString
    ..name = dummyString;
  return builder.build();
}

List<Users> createDummyUsers({int count}) => List.generate(count, (_) => dummyUsers);
