// @dart=2.9
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {
  Person._();
  factory Person([void Function(PersonBuilder) updates]) = _$Person;

  static Serializer<Person> get serializer => _$personSerializer;

  @BuiltValueField(wireName: 'active')
  bool get active;

  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;
}
