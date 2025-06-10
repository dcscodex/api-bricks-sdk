//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_external_asset.g.dart';

/// Represents an external asset with description.
///
/// Properties:
/// * [assetId] - Gets or sets the asset identifier.
/// * [description] - Gets or sets the description of the asset.
/// * [assetType] - Gets or sets the type/category of the asset.
@BuiltValue()
abstract class V1ExternalAsset implements Built<V1ExternalAsset, V1ExternalAssetBuilder> {
  /// Gets or sets the asset identifier.
  @BuiltValueField(wireName: r'asset_id')
  String? get assetId;

  /// Gets or sets the description of the asset.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Gets or sets the type/category of the asset.
  @BuiltValueField(wireName: r'asset_type')
  String? get assetType;

  V1ExternalAsset._();

  factory V1ExternalAsset([void updates(V1ExternalAssetBuilder b)]) = _$V1ExternalAsset;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ExternalAssetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ExternalAsset> get serializer => _$V1ExternalAssetSerializer();
}

class _$V1ExternalAssetSerializer implements PrimitiveSerializer<V1ExternalAsset> {
  @override
  final Iterable<Type> types = const [V1ExternalAsset, _$V1ExternalAsset];

  @override
  final String wireName = r'V1ExternalAsset';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ExternalAsset object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.assetId != null) {
      yield r'asset_id';
      yield serializers.serialize(
        object.assetId,
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
    if (object.assetType != null) {
      yield r'asset_type';
      yield serializers.serialize(
        object.assetType,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ExternalAsset object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ExternalAssetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'asset_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetId = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'asset_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1ExternalAsset deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ExternalAssetBuilder();
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

