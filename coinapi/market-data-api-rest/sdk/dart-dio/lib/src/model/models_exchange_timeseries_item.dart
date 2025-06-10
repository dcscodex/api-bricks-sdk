//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'models_exchange_timeseries_item.g.dart';

/// Represents a timeseries item with price and volume information.
///
/// Properties:
/// * [timePeriodStart] - The start time of the time period.
/// * [timePeriodEnd] - The end time of the time period.
/// * [timeOpen] - The time when the price opened.
/// * [timeClose] - The time when the price closed.
/// * [priceOpen] - The opening price.
/// * [priceHigh] - The highest price during the time period.
/// * [priceLow] - The lowest price during the time period.
/// * [priceClose] - The closing price.
/// * [volumeTraded] - The total volume traded during the time period.
/// * [tradesCount] - The number of trades executed during the time period.
/// * [symbolIdExchange] 
/// * [symbolIdCoinapi] 
@BuiltValue()
abstract class ModelsExchangeTimeseriesItem implements Built<ModelsExchangeTimeseriesItem, ModelsExchangeTimeseriesItemBuilder> {
  /// The start time of the time period.
  @BuiltValueField(wireName: r'time_period_start')
  DateTime? get timePeriodStart;

  /// The end time of the time period.
  @BuiltValueField(wireName: r'time_period_end')
  DateTime? get timePeriodEnd;

  /// The time when the price opened.
  @BuiltValueField(wireName: r'time_open')
  DateTime? get timeOpen;

  /// The time when the price closed.
  @BuiltValueField(wireName: r'time_close')
  DateTime? get timeClose;

  /// The opening price.
  @BuiltValueField(wireName: r'price_open')
  double? get priceOpen;

  /// The highest price during the time period.
  @BuiltValueField(wireName: r'price_high')
  double? get priceHigh;

  /// The lowest price during the time period.
  @BuiltValueField(wireName: r'price_low')
  double? get priceLow;

  /// The closing price.
  @BuiltValueField(wireName: r'price_close')
  double? get priceClose;

  /// The total volume traded during the time period.
  @BuiltValueField(wireName: r'volume_traded')
  double? get volumeTraded;

  /// The number of trades executed during the time period.
  @BuiltValueField(wireName: r'trades_count')
  int? get tradesCount;

  @BuiltValueField(wireName: r'symbol_id_exchange')
  String? get symbolIdExchange;

  @BuiltValueField(wireName: r'symbol_id_coinapi')
  String? get symbolIdCoinapi;

  ModelsExchangeTimeseriesItem._();

  factory ModelsExchangeTimeseriesItem([void updates(ModelsExchangeTimeseriesItemBuilder b)]) = _$ModelsExchangeTimeseriesItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelsExchangeTimeseriesItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelsExchangeTimeseriesItem> get serializer => _$ModelsExchangeTimeseriesItemSerializer();
}

class _$ModelsExchangeTimeseriesItemSerializer implements PrimitiveSerializer<ModelsExchangeTimeseriesItem> {
  @override
  final Iterable<Type> types = const [ModelsExchangeTimeseriesItem, _$ModelsExchangeTimeseriesItem];

  @override
  final String wireName = r'ModelsExchangeTimeseriesItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelsExchangeTimeseriesItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.timePeriodStart != null) {
      yield r'time_period_start';
      yield serializers.serialize(
        object.timePeriodStart,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.timePeriodEnd != null) {
      yield r'time_period_end';
      yield serializers.serialize(
        object.timePeriodEnd,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.timeOpen != null) {
      yield r'time_open';
      yield serializers.serialize(
        object.timeOpen,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.timeClose != null) {
      yield r'time_close';
      yield serializers.serialize(
        object.timeClose,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.priceOpen != null) {
      yield r'price_open';
      yield serializers.serialize(
        object.priceOpen,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.priceHigh != null) {
      yield r'price_high';
      yield serializers.serialize(
        object.priceHigh,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.priceLow != null) {
      yield r'price_low';
      yield serializers.serialize(
        object.priceLow,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.priceClose != null) {
      yield r'price_close';
      yield serializers.serialize(
        object.priceClose,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.volumeTraded != null) {
      yield r'volume_traded';
      yield serializers.serialize(
        object.volumeTraded,
        specifiedType: const FullType(double),
      );
    }
    if (object.tradesCount != null) {
      yield r'trades_count';
      yield serializers.serialize(
        object.tradesCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.symbolIdExchange != null) {
      yield r'symbol_id_exchange';
      yield serializers.serialize(
        object.symbolIdExchange,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.symbolIdCoinapi != null) {
      yield r'symbol_id_coinapi';
      yield serializers.serialize(
        object.symbolIdCoinapi,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelsExchangeTimeseriesItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModelsExchangeTimeseriesItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'time_period_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timePeriodStart = valueDes;
          break;
        case r'time_period_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timePeriodEnd = valueDes;
          break;
        case r'time_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timeOpen = valueDes;
          break;
        case r'time_close':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timeClose = valueDes;
          break;
        case r'price_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.priceOpen = valueDes;
          break;
        case r'price_high':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.priceHigh = valueDes;
          break;
        case r'price_low':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.priceLow = valueDes;
          break;
        case r'price_close':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.priceClose = valueDes;
          break;
        case r'volume_traded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.volumeTraded = valueDes;
          break;
        case r'trades_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tradesCount = valueDes;
          break;
        case r'symbol_id_exchange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbolIdExchange = valueDes;
          break;
        case r'symbol_id_coinapi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbolIdCoinapi = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelsExchangeTimeseriesItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelsExchangeTimeseriesItemBuilder();
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

