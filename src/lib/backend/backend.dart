// @dart=2.9
import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'schema/serializers.dart';
import 'schema/standups.dart';
import 'schema/users.dart';

export 'schema/standups.dart';
export 'schema/users.dart';

Stream<List<Users>> queryUsers({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(Users.collection, Users.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<Standups>> queryStandups({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(Standups.collection, Standups.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<T>> queryCollection<T>(
  CollectionReference collection,
  Serializer<T> serializer, {
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().map((s) => s.docs
      .map((d) => serializers.deserializeWith(
            serializer,
            serializedData(d),
          ))
      .toList());
}

// Create a Firestore record representing the logged in user if it doesn't exist
Future maybeCreateUser(User user) async {
  final userRecord = Users.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    return;
  }

  final email = '';
  final name = user.displayName;

  final userData = createUsersRecordData(
    email: email,
    name: name,
  );

  await userRecord.set(userData);
}
