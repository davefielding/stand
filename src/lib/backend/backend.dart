// @dart=2.9
import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'schema/schema_util.dart';
import 'schema/serializers.dart';
import 'schema/standups.dart';
import 'schema/users.dart';

export 'schema/standups.dart';
export 'schema/users.dart';

CollectionReference get _standUpsCollection => getCollection('stand_ups');
CollectionReference get usersCollection => getCollection('users');

Stream<List<Users>> queryUsers({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(usersCollection, Users.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<Standups>> queryStandups({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(_standUpsCollection, Standups.serializer,
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
  final userRecord = usersCollection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    return;
  }

  final userData = createUsersRecordData(
    email: user.email,
    name: user.displayName,
  );

  await userRecord.set(userData);
}

Stream<Standups> getStandupsDocument(DocumentReference ref) => ref.snapshots().map(
      (s) => serializers.deserializeWith(
        Standups.serializer,
        serializedData(s),
      ),
    );
