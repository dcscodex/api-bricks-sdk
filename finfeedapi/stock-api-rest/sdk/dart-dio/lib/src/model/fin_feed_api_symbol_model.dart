//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fin_feed_api_symbol_model.g.dart';

/// FinFeedAPISymbolModel
///
/// Properties:
/// * [symbolId] 
/// * [exchangeId] 
/// * [securityCategory] 
/// * [name] 
/// * [date] 
/// * [assetClass] 
@BuiltValue()
abstract class FinFeedAPISymbolModel implements Built<FinFeedAPISymbolModel, FinFeedAPISymbolModelBuilder> {
  @BuiltValueField(wireName: r'symbol_id')
  String? get symbolId;

  @BuiltValueField(wireName: r'exchange_id')
  String? get exchangeId;

  @BuiltValueField(wireName: r'security_category')
  String? get securityCategory;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'date')
  String? get date;

  @BuiltValueField(wireName: r'asset_class')
  String? get assetClass;

  FinFeedAPISymbolModel._();

  factory FinFeedAPISymbolModel([void updates(FinFeedAPISymbolModelBuilder b)]) = _$FinFeedAPISymbolModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FinFeedAPISymbolModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FinFeedAPISymbolModel> get serializer => _$FinFeedAPISymbolModelSerializer();
}

class _$FinFeedAPISymbolModelSerializer implements PrimitiveSerializer<FinFeedAPISymbolModel> {
  @override
  final Iterable<Type> types = const [FinFeedAPISymbolModel, _$FinFeedAPISymbolModel];

  @override
  final String wireName = r'FinFeedAPISymbolModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FinFeedAPISymbolModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.symbolId != null) {
      yield r'symbol_id';
      yield serializers.serialize(
        object.symbolId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.exchangeId != null) {
      yield r'exchange_id';
      yield serializers.serialize(
        object.exchangeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.securityCategory != null) {
      yield r'security_category';
      yield serializers.serialize(
        object.securityCategory,
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
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.assetClass != null) {
      yield r'asset_class';
      yield serializers.serialize(
        object.assetClass,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FinFeedAPISymbolModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FinFeedAPISymbolModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'symbol_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbolId = valueDes;
          break;
        case r'exchange_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.exchangeId = valueDes;
          break;
        case r'security_category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.securityCategory = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.date = valueDes;
          break;
        case r'asset_class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetClass = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FinFeedAPISymbolModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FinFeedAPISymbolModelBuilder();
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

