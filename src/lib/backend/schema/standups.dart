// @dart=2.9
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'person.dart';
import 'serializers.dart';

part 'standups.g.dart';

abstract class Standups implements Built<Standups, StandupsBuilder> {
  Standups._();
  factory Standups([void Function(StandupsBuilder) updates]) = _$Standups;

  static Serializer<Standups> get serializer => _$standupsSerializer;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'image_path')
  @nullable
  String get imagePath;

  @BuiltValueField(wireName: 'start_time_hour')
  int get startTimeHour;

  @BuiltValueField(wireName: 'start_time_minute')
  int get startTimeMinute;

  @BuiltValueField(wireName: 'duration_in_seconds')
  int get durationInSeconds;

  @BuiltValueField(wireName: 'participants')
  BuiltMap<String, Person> get participants;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;
}
