//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'level3_executed_order_model.g.dart';

/// Represents the response DTO for order executed information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the order was executed as DateTime
/// * [orderIdReference] - Order identifier reference
/// * [saleConditionFlags] - Sale condition flags for the execution as byte value
/// * [isIntermarketSweep] - Bit 7 (Mask 0x80): Intermarket Sweep Flag True: Intermarket Sweep Order (\"ISO\") False: Non-Intermarket Sweep Order
/// * [isExtendedHoursTrade] - Bit 6 (Mask 0x40): Extended Hours Flag True: Extended Hours Trade (i.e., Form T sale condition) False: Regular Market Session Trade
/// * [isOddLotTrade] - Bit 5 (Mask 0x20): Odd Lot Flag True: Odd Lot Trade False: Round or Mixed Lot Trade
/// * [isTradeThroughExempt] - Bit 4 (Mask 0x10): Trade Through Exempt Flag True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS
/// * [isSinglePriceCrossTrade] - Bit 3 (Mask 0x08): Single-price Cross Trade Flag True: Trade resulting from a single-price cross False: Execution during continuous trading
/// * [size] - Trade volume in number of shares
/// * [price] - Execution price as decimal
/// * [tradeId] - IEX trade identifier
@BuiltValue()
abstract class Level3ExecutedOrderModel implements Built<Level3ExecutedOrderModel, Level3ExecutedOrderModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the order was executed as DateTime
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Order identifier reference
  @BuiltValueField(wireName: r'order_id_reference')
  int? get orderIdReference;

  /// Sale condition flags for the execution as byte value
  @BuiltValueField(wireName: r'sale_condition_flags')
  int? get saleConditionFlags;

  /// Bit 7 (Mask 0x80): Intermarket Sweep Flag True: Intermarket Sweep Order (\"ISO\") False: Non-Intermarket Sweep Order
  @BuiltValueField(wireName: r'is_intermarket_sweep')
  bool? get isIntermarketSweep;

  /// Bit 6 (Mask 0x40): Extended Hours Flag True: Extended Hours Trade (i.e., Form T sale condition) False: Regular Market Session Trade
  @BuiltValueField(wireName: r'is_extended_hours_trade')
  bool? get isExtendedHoursTrade;

  /// Bit 5 (Mask 0x20): Odd Lot Flag True: Odd Lot Trade False: Round or Mixed Lot Trade
  @BuiltValueField(wireName: r'is_odd_lot_trade')
  bool? get isOddLotTrade;

  /// Bit 4 (Mask 0x10): Trade Through Exempt Flag True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS
  @BuiltValueField(wireName: r'is_trade_through_exempt')
  bool? get isTradeThroughExempt;

  /// Bit 3 (Mask 0x08): Single-price Cross Trade Flag True: Trade resulting from a single-price cross False: Execution during continuous trading
  @BuiltValueField(wireName: r'is_single_price_cross_trade')
  bool? get isSinglePriceCrossTrade;

  /// Trade volume in number of shares
  @BuiltValueField(wireName: r'size')
  int? get size;

  /// Execution price as decimal
  @BuiltValueField(wireName: r'price')
  double? get price;

  /// IEX trade identifier
  @BuiltValueField(wireName: r'trade_id')
  int? get tradeId;

  Level3ExecutedOrderModel._();

  factory Level3ExecutedOrderModel([void updates(Level3ExecutedOrderModelBuilder b)]) = _$Level3ExecutedOrderModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Level3ExecutedOrderModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Level3ExecutedOrderModel> get serializer => _$Level3ExecutedOrderModelSerializer();
}

class _$Level3ExecutedOrderModelSerializer implements PrimitiveSerializer<Level3ExecutedOrderModel> {
  @override
  final Iterable<Type> types = const [Level3ExecutedOrderModel, _$Level3ExecutedOrderModel];

  @override
  final String wireName = r'Level3ExecutedOrderModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Level3ExecutedOrderModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.symbol != null) {
      yield r'symbol';
      yield serializers.serialize(
        object.symbol,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timestampNanos != null) {
      yield r'timestamp_nanos';
      yield serializers.serialize(
        object.timestampNanos,
        specifiedType: const FullType(int),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.orderIdReference != null) {
      yield r'order_id_reference';
      yield serializers.serialize(
        object.orderIdReference,
        specifiedType: const FullType(int),
      );
    }
    if (object.saleConditionFlags != null) {
      yield r'sale_condition_flags';
      yield serializers.serialize(
        object.saleConditionFlags,
        specifiedType: const FullType(int),
      );
    }
    if (object.isIntermarketSweep != null) {
      yield r'is_intermarket_sweep';
      yield serializers.serialize(
        object.isIntermarketSweep,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isExtendedHoursTrade != null) {
      yield r'is_extended_hours_trade';
      yield serializers.serialize(
        object.isExtendedHoursTrade,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isOddLotTrade != null) {
      yield r'is_odd_lot_trade';
      yield serializers.serialize(
        object.isOddLotTrade,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isTradeThroughExempt != null) {
      yield r'is_trade_through_exempt';
      yield serializers.serialize(
        object.isTradeThroughExempt,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isSinglePriceCrossTrade != null) {
      yield r'is_single_price_cross_trade';
      yield serializers.serialize(
        object.isSinglePriceCrossTrade,
        specifiedType: const FullType(bool),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(double),
      );
    }
    if (object.tradeId != null) {
      yield r'trade_id';
      yield serializers.serialize(
        object.tradeId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Level3ExecutedOrderModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Level3ExecutedOrderModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbol = valueDes;
          break;
        case r'timestamp_nanos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timestampNanos = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'order_id_reference':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.orderIdReference = valueDes;
          break;
        case r'sale_condition_flags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.saleConditionFlags = valueDes;
          break;
        case r'is_intermarket_sweep':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isIntermarketSweep = valueDes;
          break;
        case r'is_extended_hours_trade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isExtendedHoursTrade = valueDes;
          break;
        case r'is_odd_lot_trade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOddLotTrade = valueDes;
          break;
        case r'is_trade_through_exempt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isTradeThroughExempt = valueDes;
          break;
        case r'is_single_price_cross_trade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSinglePriceCrossTrade = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.price = valueDes;
          break;
        case r'trade_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tradeId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Level3ExecutedOrderModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Level3ExecutedOrderModelBuilder();
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

