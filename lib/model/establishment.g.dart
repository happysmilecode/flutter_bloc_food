// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'establishment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Establishment> _$establishmentSerializer =
    new _$EstablishmentSerializer();

class _$EstablishmentSerializer implements StructuredSerializer<Establishment> {
  @override
  final Iterable<Type> types = const [Establishment, _$Establishment];
  @override
  final String wireName = 'Establishment';

  @override
  Iterable<Object> serialize(Serializers serializers, Establishment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'cuisine_id',
      serializers.serialize(object.cuisine_id,
          specifiedType: const FullType(String)),
      'cuisine_name',
      serializers.serialize(object.cuisine_name,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Establishment deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EstablishmentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cuisine_id':
          result.cuisine_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cuisine_name':
          result.cuisine_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Establishment extends Establishment {
  @override
  final String cuisine_id;
  @override
  final String cuisine_name;

  factory _$Establishment([void Function(EstablishmentBuilder) updates]) =>
      (new EstablishmentBuilder()..update(updates)).build();

  _$Establishment._({this.cuisine_id, this.cuisine_name}) : super._() {
    if (cuisine_id == null) {
      throw new BuiltValueNullFieldError('Establishment', 'cuisine_id');
    }
    if (cuisine_name == null) {
      throw new BuiltValueNullFieldError('Establishment', 'cuisine_name');
    }
  }

  @override
  Establishment rebuild(void Function(EstablishmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EstablishmentBuilder toBuilder() => new EstablishmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Establishment &&
        cuisine_id == other.cuisine_id &&
        cuisine_name == other.cuisine_name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, cuisine_id.hashCode), cuisine_name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Establishment')
          ..add('cuisine_id', cuisine_id)
          ..add('cuisine_name', cuisine_name))
        .toString();
  }
}

class EstablishmentBuilder
    implements Builder<Establishment, EstablishmentBuilder> {
  _$Establishment _$v;

  String _cuisine_id;
  String get cuisine_id => _$this._cuisine_id;
  set cuisine_id(String cuisine_id) => _$this._cuisine_id = cuisine_id;

  String _cuisine_name;
  String get cuisine_name => _$this._cuisine_name;
  set cuisine_name(String cuisine_name) => _$this._cuisine_name = cuisine_name;

  EstablishmentBuilder();

  EstablishmentBuilder get _$this {
    if (_$v != null) {
      _cuisine_id = _$v.cuisine_id;
      _cuisine_name = _$v.cuisine_name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Establishment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Establishment;
  }

  @override
  void update(void Function(EstablishmentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Establishment build() {
    final _$result = _$v ??
        new _$Establishment._(
            cuisine_id: cuisine_id, cuisine_name: cuisine_name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new