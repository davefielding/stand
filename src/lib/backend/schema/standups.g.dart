// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.9

part of 'standups.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Standups> _$standupsSerializer = new _$StandupsSerializer();

class _$StandupsSerializer implements StructuredSerializer<Standups> {
  @override
  final Iterable<Type> types = const [Standups, _$Standups];
  @override
  final String wireName = 'Standups';

  @override
  Iterable<Object> serialize(Serializers serializers, Standups object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'image_path',
      serializers.serialize(object.imagePath,
          specifiedType: const FullType(String)),
      'start_time_hour',
      serializers.serialize(object.startTimeHour,
          specifiedType: const FullType(int)),
      'start_time_minute',
      serializers.serialize(object.startTimeMinute,
          specifiedType: const FullType(int)),
      'duration_in_seconds',
      serializers.serialize(object.durationInSeconds,
          specifiedType: const FullType(int)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(DocumentReference)),
    ];

    return result;
  }

  @override
  Standups deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StandupsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_path':
          result.imagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'start_time_hour':
          result.startTimeHour = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'start_time_minute':
          result.startTimeMinute = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'duration_in_seconds':
          result.durationInSeconds = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
      }
    }

    return result.build();
  }
}

class _$Standups extends Standups {
  @override
  final String name;
  @override
  final String imagePath;
  @override
  final int startTimeHour;
  @override
  final int startTimeMinute;
  @override
  final int durationInSeconds;
  @override
  final DocumentReference reference;

  factory _$Standups([void Function(StandupsBuilder) updates]) =>
      (new StandupsBuilder()..update(updates)).build();

  _$Standups._(
      {this.name,
      this.imagePath,
      this.startTimeHour,
      this.startTimeMinute,
      this.durationInSeconds,
      this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Standups', 'name');
    BuiltValueNullFieldError.checkNotNull(imagePath, 'Standups', 'imagePath');
    BuiltValueNullFieldError.checkNotNull(
        startTimeHour, 'Standups', 'startTimeHour');
    BuiltValueNullFieldError.checkNotNull(
        startTimeMinute, 'Standups', 'startTimeMinute');
    BuiltValueNullFieldError.checkNotNull(
        durationInSeconds, 'Standups', 'durationInSeconds');
    BuiltValueNullFieldError.checkNotNull(reference, 'Standups', 'reference');
  }

  @override
  Standups rebuild(void Function(StandupsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StandupsBuilder toBuilder() => new StandupsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Standups &&
        name == other.name &&
        imagePath == other.imagePath &&
        startTimeHour == other.startTimeHour &&
        startTimeMinute == other.startTimeMinute &&
        durationInSeconds == other.durationInSeconds &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), imagePath.hashCode),
                    startTimeHour.hashCode),
                startTimeMinute.hashCode),
            durationInSeconds.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Standups')
          ..add('name', name)
          ..add('imagePath', imagePath)
          ..add('startTimeHour', startTimeHour)
          ..add('startTimeMinute', startTimeMinute)
          ..add('durationInSeconds', durationInSeconds)
          ..add('reference', reference))
        .toString();
  }
}

class StandupsBuilder implements Builder<Standups, StandupsBuilder> {
  _$Standups _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _imagePath;
  String get imagePath => _$this._imagePath;
  set imagePath(String imagePath) => _$this._imagePath = imagePath;

  int _startTimeHour;
  int get startTimeHour => _$this._startTimeHour;
  set startTimeHour(int startTimeHour) => _$this._startTimeHour = startTimeHour;

  int _startTimeMinute;
  int get startTimeMinute => _$this._startTimeMinute;
  set startTimeMinute(int startTimeMinute) =>
      _$this._startTimeMinute = startTimeMinute;

  int _durationInSeconds;
  int get durationInSeconds => _$this._durationInSeconds;
  set durationInSeconds(int durationInSeconds) =>
      _$this._durationInSeconds = durationInSeconds;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  StandupsBuilder() {
    Standups._initializeBuilder(this);
  }

  StandupsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _imagePath = $v.imagePath;
      _startTimeHour = $v.startTimeHour;
      _startTimeMinute = $v.startTimeMinute;
      _durationInSeconds = $v.durationInSeconds;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Standups other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Standups;
  }

  @override
  void update(void Function(StandupsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Standups build() {
    final _$result = _$v ??
        new _$Standups._(
            name:
                BuiltValueNullFieldError.checkNotNull(name, 'Standups', 'name'),
            imagePath: BuiltValueNullFieldError.checkNotNull(
                imagePath, 'Standups', 'imagePath'),
            startTimeHour: BuiltValueNullFieldError.checkNotNull(
                startTimeHour, 'Standups', 'startTimeHour'),
            startTimeMinute: BuiltValueNullFieldError.checkNotNull(
                startTimeMinute, 'Standups', 'startTimeMinute'),
            durationInSeconds: BuiltValueNullFieldError.checkNotNull(
                durationInSeconds, 'Standups', 'durationInSeconds'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, 'Standups', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
