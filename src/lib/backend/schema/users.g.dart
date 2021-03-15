// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.9

part of 'users.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Users> _$usersSerializer = new _$UsersSerializer();

class _$UsersSerializer implements StructuredSerializer<Users> {
  @override
  final Iterable<Type> types = const [Users, _$Users];
  @override
  final String wireName = 'Users';

  @override
  Iterable<Object> serialize(Serializers serializers, Users object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    return result;
  }

  @override
  Users deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$Users extends Users {
  @override
  final String email;
  @override
  final String name;
  @override
  final DocumentReference reference;

  factory _$Users([void Function(UsersBuilder) updates]) =>
      (new UsersBuilder()..update(updates)).build();

  _$Users._({this.email, this.name, this.reference}) : super._();

  @override
  Users rebuild(void Function(UsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersBuilder toBuilder() => new UsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Users &&
        email == other.email &&
        name == other.name &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, email.hashCode), name.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Users')
          ..add('email', email)
          ..add('name', name)
          ..add('reference', reference))
        .toString();
  }
}

class UsersBuilder implements Builder<Users, UsersBuilder> {
  _$Users _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  UsersBuilder() {
    Users._initializeBuilder(this);
  }

  UsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _name = $v.name;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Users other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Users;
  }

  @override
  void update(void Function(UsersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Users build() {
    final _$result =
        _$v ?? new _$Users._(email: email, name: name, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
