// @dart=2.9
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'standups.g.dart';

abstract class Standups implements Built<Standups, StandupsBuilder> {
  static Serializer<Standups> get serializer => _$standupsSerializer;

  String get name;

  @BuiltValueField(wireName: 'image_path')
  String get imagePath;

  @BuiltValueField(wireName: 'start_time_hour')
  int get startTimeHour;

  @BuiltValueField(wireName: 'start_time_minute')
  int get startTimeMinute;

  @BuiltValueField(wireName: 'duration_in_seconds')
  int get durationInSeconds;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(StandupsBuilder builder) => builder
    ..name = ''
    ..imagePath = ''
    ..startTimeHour = 0
    ..startTimeMinute = 0
    ..durationInSeconds = 0;

  static CollectionReference get collection => FirebaseFirestore.instance.collection('stand_ups');

  static Stream<Standups> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  Standups._();
  factory Standups([
    void Function(StandupsBuilder) updates,
  ]) = _$Standups;
}

Map<String, dynamic> createStandupsRecordData({
  String name,
  String imagePath,
  int startTimeHour,
  int startTimeMinute,
  int durationInSeconds,
}) =>
    serializers.serializeWith(
        Standups.serializer,
        Standups((s) => s
          ..name = name
          ..imagePath = imagePath
          ..startTimeHour = startTimeHour
          ..startTimeMinute = startTimeMinute
          ..durationInSeconds = durationInSeconds));

Standups get dummyStandups {
  final builder = StandupsBuilder()
    ..name = dummyString
    ..imagePath = dummyImagePath
    ..startTimeHour = dummyInteger
    ..startTimeMinute = dummyInteger
    ..durationInSeconds = dummyInteger;
  return builder.build();
}

List<Standups> createDummyStandups({int count}) => List.generate(
      count,
      (_) => dummyStandups,
    );
