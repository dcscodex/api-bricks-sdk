//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'level2_price_level_update_model.g.dart';

/// Represents the response DTO for price level update information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the price level update was recorded as DateTime
/// * [isSideBuy] - Indicates if this is a price level update for the Buy Side.
/// * [isEventProcessingComplete] - Indicates if event processing is complete.
/// * [size] - Aggregate quoted size at the price level
/// * [price] - Price level as decimal
@BuiltValue()
abstract class Level2PriceLevelUpdateModel implements Built<Level2PriceLevelUpdateModel, Level2PriceLevelUpdateModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the price level update was recorded as DateTime
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Indicates if this is a price level update for the Buy Side.
  @BuiltValueField(wireName: r'is_side_buy')
  bool? get isSideBuy;

  /// Indicates if event processing is complete.
  @BuiltValueField(wireName: r'is_event_processing_complete')
  bool? get isEventProcessingComplete;

  /// Aggregate quoted size at the price level
  @BuiltValueField(wireName: r'size')
  int? get size;

  /// Price level as decimal
  @BuiltValueField(wireName: r'price')
  double? get price;

  Level2PriceLevelUpdateModel._();

  factory Level2PriceLevelUpdateModel([void updates(Level2PriceLevelUpdateModelBuilder b)]) = _$Level2PriceLevelUpdateModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Level2PriceLevelUpdateModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Level2PriceLevelUpdateModel> get serializer => _$Level2PriceLevelUpdateModelSerializer();
}

class _$Level2PriceLevelUpdateModelSerializer implements PrimitiveSerializer<Level2PriceLevelUpdateModel> {
  @override
  final Iterable<Type> types = const [Level2PriceLevelUpdateModel, _$Level2PriceLevelUpdateModel];

  @override
  final String wireName = r'Level2PriceLevelUpdateModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Level2PriceLevelUpdateModel object, {
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
    if (object.isSideBuy != null) {
      yield r'is_side_buy';
      yield serializers.serialize(
        object.isSideBuy,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isEventProcessingComplete != null) {
      yield r'is_event_processing_complete';
      yield serializers.serialize(
        object.isEventProcessingComplete,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Level2PriceLevelUpdateModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Level2PriceLevelUpdateModelBuilder result,
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
        case r'is_side_buy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSideBuy = valueDes;
          break;
        case r'is_event_processing_complete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isEventProcessingComplete = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Level2PriceLevelUpdateModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Level2PriceLevelUpdateModelBuilder();
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

