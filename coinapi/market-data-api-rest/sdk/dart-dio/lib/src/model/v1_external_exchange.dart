//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_external_exchange.g.dart';

/// Represents an exchange with external mapping for metrics.
///
/// Properties:
/// * [exchangeId] - Gets or sets the internal exchange identifier.
/// * [externalName] - Gets or sets the external protocol name/slug.
/// * [description] - Gets or sets the description of the exchange.
/// * [sourceId] 
@BuiltValue()
abstract class V1ExternalExchange implements Built<V1ExternalExchange, V1ExternalExchangeBuilder> {
  /// Gets or sets the internal exchange identifier.
  @BuiltValueField(wireName: r'exchange_id')
  String? get exchangeId;

  /// Gets or sets the external protocol name/slug.
  @BuiltValueField(wireName: r'external_name')
  String? get externalName;

  /// Gets or sets the description of the exchange.
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'source_id')
  String? get sourceId;

  V1ExternalExchange._();

  factory V1ExternalExchange([void updates(V1ExternalExchangeBuilder b)]) = _$V1ExternalExchange;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ExternalExchangeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ExternalExchange> get serializer => _$V1ExternalExchangeSerializer();
}

class _$V1ExternalExchangeSerializer implements PrimitiveSerializer<V1ExternalExchange> {
  @override
  final Iterable<Type> types = const [V1ExternalExchange, _$V1ExternalExchange];

  @override
  final String wireName = r'V1ExternalExchange';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ExternalExchange object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.exchangeId != null) {
      yield r'exchange_id';
      yield serializers.serialize(
        object.exchangeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.externalName != null) {
      yield r'external_name';
      yield serializers.serialize(
        object.externalName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sourceId != null) {
      yield r'source_id';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ExternalExchange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ExternalExchangeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'exchange_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.exchangeId = valueDes;
          break;
        case r'external_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.externalName = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'source_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1ExternalExchange deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ExternalExchangeBuilder();
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

