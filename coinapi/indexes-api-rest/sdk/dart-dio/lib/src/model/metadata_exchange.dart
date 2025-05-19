//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metadata_exchange.g.dart';

/// Represents an exchange.
///
/// Properties:
/// * [exchangeId] - Gets or sets the exchange ID.
/// * [website] - Gets or sets the website URL of the exchange.
/// * [name] - Gets or sets the name of the exchange.
@BuiltValue()
abstract class MetadataExchange implements Built<MetadataExchange, MetadataExchangeBuilder> {
  /// Gets or sets the exchange ID.
  @BuiltValueField(wireName: r'exchange_id')
  String? get exchangeId;

  /// Gets or sets the website URL of the exchange.
  @BuiltValueField(wireName: r'website')
  String? get website;

  /// Gets or sets the name of the exchange.
  @BuiltValueField(wireName: r'name')
  String? get name;

  MetadataExchange._();

  factory MetadataExchange([void updates(MetadataExchangeBuilder b)]) = _$MetadataExchange;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetadataExchangeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetadataExchange> get serializer => _$MetadataExchangeSerializer();
}

class _$MetadataExchangeSerializer implements PrimitiveSerializer<MetadataExchange> {
  @override
  final Iterable<Type> types = const [MetadataExchange, _$MetadataExchange];

  @override
  final String wireName = r'MetadataExchange';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetadataExchange object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.exchangeId != null) {
      yield r'exchange_id';
      yield serializers.serialize(
        object.exchangeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.website != null) {
      yield r'website';
      yield serializers.serialize(
        object.website,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MetadataExchange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MetadataExchangeBuilder result,
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
        case r'website':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.website = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetadataExchange deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetadataExchangeBuilder();
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

