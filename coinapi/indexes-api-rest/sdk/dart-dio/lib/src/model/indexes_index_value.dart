//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/indexes_index_value_component.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indexes_index_value.g.dart';

/// IndexesIndexValue
///
/// Properties:
/// * [timestamp] 
/// * [value] 
/// * [composition] 
@BuiltValue()
abstract class IndexesIndexValue implements Built<IndexesIndexValue, IndexesIndexValueBuilder> {
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  @BuiltValueField(wireName: r'value')
  double? get value;

  @BuiltValueField(wireName: r'composition')
  BuiltList<IndexesIndexValueComponent>? get composition;

  IndexesIndexValue._();

  factory IndexesIndexValue([void updates(IndexesIndexValueBuilder b)]) = _$IndexesIndexValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexesIndexValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexesIndexValue> get serializer => _$IndexesIndexValueSerializer();
}

class _$IndexesIndexValueSerializer implements PrimitiveSerializer<IndexesIndexValue> {
  @override
  final Iterable<Type> types = const [IndexesIndexValue, _$IndexesIndexValue];

  @override
  final String wireName = r'IndexesIndexValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexesIndexValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(double),
      );
    }
    if (object.composition != null) {
      yield r'composition';
      yield serializers.serialize(
        object.composition,
        specifiedType: const FullType.nullable(BuiltList, [FullType(IndexesIndexValueComponent)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexesIndexValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IndexesIndexValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.value = valueDes;
          break;
        case r'composition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(IndexesIndexValueComponent)]),
          ) as BuiltList<IndexesIndexValueComponent>?;
          if (valueDes == null) continue;
          result.composition.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexesIndexValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexesIndexValueBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

