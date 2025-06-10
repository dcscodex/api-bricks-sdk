//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_chain.g.dart';

/// Represents a blockchain chain.
///
/// Properties:
/// * [chainId] - Gets or sets the chain identifier.
/// * [name] - Gets or sets the name of the chain.
@BuiltValue()
abstract class V1Chain implements Built<V1Chain, V1ChainBuilder> {
  /// Gets or sets the chain identifier.
  @BuiltValueField(wireName: r'chain_id')
  String? get chainId;

  /// Gets or sets the name of the chain.
  @BuiltValueField(wireName: r'name')
  String? get name;

  V1Chain._();

  factory V1Chain([void updates(V1ChainBuilder b)]) = _$V1Chain;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ChainBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1Chain> get serializer => _$V1ChainSerializer();
}

class _$V1ChainSerializer implements PrimitiveSerializer<V1Chain> {
  @override
  final Iterable<Type> types = const [V1Chain, _$V1Chain];

  @override
  final String wireName = r'V1Chain';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1Chain object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.chainId != null) {
      yield r'chain_id';
      yield serializers.serialize(
        object.chainId,
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
    V1Chain object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ChainBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chain_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chainId = valueDes;
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
  V1Chain deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ChainBuilder();
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

