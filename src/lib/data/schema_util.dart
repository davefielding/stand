import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore fireStore = FirebaseFirestore.instance;
CollectionReference getCollection(String path) => fireStore.collection(path);

final random = Random();

int get dummyInteger => random.nextInt(10);
double get dummyDouble => random.nextDouble() * 10;
bool get dummyBoolean => random.nextBool();
String get dummyString => _stringOptions[random.nextInt(4)];
String get dummyImagePath => 'https://picsum.photos/seed/${random.nextInt(1000)}/400';
Timestamp get dummyTimestamp => Timestamp.fromMillisecondsSinceEpoch(
      1612302574000 - (random.nextDouble() * 8000000000).round(),
    );

final _stringOptions = [
  'Lorem ipsum',
  'dolor sit',
  'amet consectetur',
  'adipiscing elit',
];
