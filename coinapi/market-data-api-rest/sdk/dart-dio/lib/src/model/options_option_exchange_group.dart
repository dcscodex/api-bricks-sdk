//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/options_strike.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'options_option_exchange_group.g.dart';

/// Represents an option exchange group data model.
///
/// Properties:
/// * [assetIdBase] - The base asset identifier.
/// * [assetIdQuote] - The quote asset identifier.
/// * [underlyingPrice] - The underlying price of the option.
/// * [timeExpiration] - The expiration time of the option.
/// * [strikes] - The list of strikes available.
@BuiltValue()
abstract class OptionsOptionExchangeGroup implements Built<OptionsOptionExchangeGroup, OptionsOptionExchangeGroupBuilder> {
  /// The base asset identifier.
  @BuiltValueField(wireName: r'asset_id_base')
  String? get assetIdBase;

  /// The quote asset identifier.
  @BuiltValueField(wireName: r'asset_id_quote')
  String? get assetIdQuote;

  /// The underlying price of the option.
  @BuiltValueField(wireName: r'underlying_price')
  double? get underlyingPrice;

  /// The expiration time of the option.
  @BuiltValueField(wireName: r'time_expiration')
  DateTime? get timeExpiration;

  /// The list of strikes available.
  @BuiltValueField(wireName: r'strikes')
  BuiltList<OptionsStrike>? get strikes;

  OptionsOptionExchangeGroup._();

  factory OptionsOptionExchangeGroup([void updates(OptionsOptionExchangeGroupBuilder b)]) = _$OptionsOptionExchangeGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OptionsOptionExchangeGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OptionsOptionExchangeGroup> get serializer => _$OptionsOptionExchangeGroupSerializer();
}

class _$OptionsOptionExchangeGroupSerializer implements PrimitiveSerializer<OptionsOptionExchangeGroup> {
  @override
  final Iterable<Type> types = const [OptionsOptionExchangeGroup, _$OptionsOptionExchangeGroup];

  @override
  final String wireName = r'OptionsOptionExchangeGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OptionsOptionExchangeGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.assetIdBase != null) {
      yield r'asset_id_base';
      yield serializers.serialize(
        object.assetIdBase,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.assetIdQuote != null) {
      yield r'asset_id_quote';
      yield serializers.serialize(
        object.assetIdQuote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.underlyingPrice != null) {
      yield r'underlying_price';
      yield serializers.serialize(
        object.underlyingPrice,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.timeExpiration != null) {
      yield r'time_expiration';
      yield serializers.serialize(
        object.timeExpiration,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.strikes != null) {
      yield r'strikes';
      yield serializers.serialize(
        object.strikes,
        specifiedType: const FullType.nullable(BuiltList, [FullType(OptionsStrike)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OptionsOptionExchangeGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OptionsOptionExchangeGroupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'asset_id_base':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetIdBase = valueDes;
          break;
        case r'asset_id_quote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assetIdQuote = valueDes;
          break;
        case r'underlying_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.underlyingPrice = valueDes;
          break;
        case r'time_expiration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timeExpiration = valueDes;
          break;
        case r'strikes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(OptionsStrike)]),
          ) as BuiltList<OptionsStrike>?;
          if (valueDes == null) continue;
          result.strikes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OptionsOptionExchangeGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OptionsOptionExchangeGroupBuilder();
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

