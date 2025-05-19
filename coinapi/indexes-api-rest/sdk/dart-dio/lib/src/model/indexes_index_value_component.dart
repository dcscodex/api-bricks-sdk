//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indexes_index_value_component.g.dart';

/// IndexesIndexValueComponent
///
/// Properties:
/// * [componentId] 
/// * [componentValue] 
@BuiltValue()
abstract class IndexesIndexValueComponent implements Built<IndexesIndexValueComponent, IndexesIndexValueComponentBuilder> {
  @BuiltValueField(wireName: r'component_id')
  String? get componentId;

  @BuiltValueField(wireName: r'component_value')
  double? get componentValue;

  IndexesIndexValueComponent._();

  factory IndexesIndexValueComponent([void updates(IndexesIndexValueComponentBuilder b)]) = _$IndexesIndexValueComponent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexesIndexValueComponentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexesIndexValueComponent> get serializer => _$IndexesIndexValueComponentSerializer();
}

class _$IndexesIndexValueComponentSerializer implements PrimitiveSerializer<IndexesIndexValueComponent> {
  @override
  final Iterable<Type> types = const [IndexesIndexValueComponent, _$IndexesIndexValueComponent];

  @override
  final String wireName = r'IndexesIndexValueComponent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexesIndexValueComponent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.componentId != null) {
      yield r'component_id';
      yield serializers.serialize(
        object.componentId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.componentValue != null) {
      yield r'component_value';
      yield serializers.serialize(
        object.componentValue,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexesIndexValueComponent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IndexesIndexValueComponentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'component_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.componentId = valueDes;
          break;
        case r'component_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.componentValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexesIndexValueComponent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexesIndexValueComponentBuilder();
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

