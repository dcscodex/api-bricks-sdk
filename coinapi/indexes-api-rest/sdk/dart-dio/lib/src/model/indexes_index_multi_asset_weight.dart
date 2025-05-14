//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indexes_index_multi_asset_weight.g.dart';

/// IndexesIndexMultiAssetWeight
///
/// Properties:
/// * [indexId] 
/// * [assetId] 
/// * [weight] 
@BuiltValue()
abstract class IndexesIndexMultiAssetWeight implements Built<IndexesIndexMultiAssetWeight, IndexesIndexMultiAssetWeightBuilder> {
  @BuiltValueField(wireName: r'indexId')
  String? get indexId;

  @BuiltValueField(wireName: r'assetId')
  String? get assetId;

  @BuiltValueField(wireName: r'weight')
  double? get weight;

  IndexesIndexMultiAssetWeight._();

  factory IndexesIndexMultiAssetWeight([void updates(IndexesIndexMultiAssetWeightBuilder b)]) = _$IndexesIndexMultiAssetWeight;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexesIndexMultiAssetWeightBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexesIndexMultiAssetWeight> get serializer => _$IndexesIndexMultiAssetWeightSerializer();
}

class _$IndexesIndexMultiAssetWeightSerializer implements PrimitiveSerializer<IndexesIndexMultiAssetWeight> {
  @override
  final Iterable<Type> types = const [IndexesIndexMultiAssetWeight, _$IndexesIndexMultiAssetWeight];

  @override
  final String wireName = r'IndexesIndexMultiAssetWeight';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexesIndexMultiAssetWeight object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.indexId != null) {
      yield r'indexId';
      yield serializers.serialize(
        object.indexId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.assetId != null) {
      yield r'assetId';
      yield serializers.serialize(
        object.assetId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.weight != null) {
      yield r'weight';
      yield serializers.serialize(
        object.weight,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexesIndexMultiAssetWeight object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IndexesIndexMultiAssetWeightBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'indexId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.indexId = valueDes;
          break;
        case r'assetId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetId = valueDes;
          break;
        case r'weight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.weight = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexesIndexMultiAssetWeight deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexesIndexMultiAssetWeightBuilder();
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

