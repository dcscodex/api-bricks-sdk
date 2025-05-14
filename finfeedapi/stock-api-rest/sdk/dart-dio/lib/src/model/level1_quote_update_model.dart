//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'level1_quote_update_model.g.dart';

/// Represents the response DTO for quote update information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the quote update was recorded as DateTime
/// * [isSymbolAvailable] - Gets whether the symbol is available for trading  True if active, False if halted, paused, or otherwise not available
/// * [isPrePostMarketSession] - Gets whether the market session is regular or pre/post-market  True if pre/post-market session, False if regular market session
/// * [askSize] - Ask size in number of shares
/// * [askPrice] - Ask price as decimal
/// * [bidPrice] - Bid price as decimal
/// * [bidSize] - Bid size in number of shares
@BuiltValue()
abstract class Level1QuoteUpdateModel implements Built<Level1QuoteUpdateModel, Level1QuoteUpdateModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the quote update was recorded as DateTime
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Gets whether the symbol is available for trading  True if active, False if halted, paused, or otherwise not available
  @BuiltValueField(wireName: r'is_symbol_available')
  bool? get isSymbolAvailable;

  /// Gets whether the market session is regular or pre/post-market  True if pre/post-market session, False if regular market session
  @BuiltValueField(wireName: r'is_pre_post_market_session')
  bool? get isPrePostMarketSession;

  /// Ask size in number of shares
  @BuiltValueField(wireName: r'ask_size')
  int? get askSize;

  /// Ask price as decimal
  @BuiltValueField(wireName: r'ask_price')
  double? get askPrice;

  /// Bid price as decimal
  @BuiltValueField(wireName: r'bid_price')
  double? get bidPrice;

  /// Bid size in number of shares
  @BuiltValueField(wireName: r'bid_size')
  int? get bidSize;

  Level1QuoteUpdateModel._();

  factory Level1QuoteUpdateModel([void updates(Level1QuoteUpdateModelBuilder b)]) = _$Level1QuoteUpdateModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Level1QuoteUpdateModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Level1QuoteUpdateModel> get serializer => _$Level1QuoteUpdateModelSerializer();
}

class _$Level1QuoteUpdateModelSerializer implements PrimitiveSerializer<Level1QuoteUpdateModel> {
  @override
  final Iterable<Type> types = const [Level1QuoteUpdateModel, _$Level1QuoteUpdateModel];

  @override
  final String wireName = r'Level1QuoteUpdateModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Level1QuoteUpdateModel object, {
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
    if (object.isSymbolAvailable != null) {
      yield r'is_symbol_available';
      yield serializers.serialize(
        object.isSymbolAvailable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isPrePostMarketSession != null) {
      yield r'is_pre_post_market_session';
      yield serializers.serialize(
        object.isPrePostMarketSession,
        specifiedType: const FullType(bool),
      );
    }
    if (object.askSize != null) {
      yield r'ask_size';
      yield serializers.serialize(
        object.askSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.askPrice != null) {
      yield r'ask_price';
      yield serializers.serialize(
        object.askPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.bidPrice != null) {
      yield r'bid_price';
      yield serializers.serialize(
        object.bidPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.bidSize != null) {
      yield r'bid_size';
      yield serializers.serialize(
        object.bidSize,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Level1QuoteUpdateModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Level1QuoteUpdateModelBuilder result,
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
        case r'is_symbol_available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSymbolAvailable = valueDes;
          break;
        case r'is_pre_post_market_session':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPrePostMarketSession = valueDes;
          break;
        case r'ask_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.askSize = valueDes;
          break;
        case r'ask_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.askPrice = valueDes;
          break;
        case r'bid_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.bidPrice = valueDes;
          break;
        case r'bid_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bidSize = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Level1QuoteUpdateModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Level1QuoteUpdateModelBuilder();
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

