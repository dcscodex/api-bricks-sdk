//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'level3_add_order_model.g.dart';

/// Represents the response DTO for add order information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the order was added as DateTime (UTC)
/// * [isSideBuy] - Indicates if this is a Buy order ('8'/0x38).
/// * [size] - Quoted size in number of shares
/// * [price] - Price as decimal
/// * [orderId] - Order identifier
@BuiltValue()
abstract class Level3AddOrderModel implements Built<Level3AddOrderModel, Level3AddOrderModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the order was added as DateTime (UTC)
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Indicates if this is a Buy order ('8'/0x38).
  @BuiltValueField(wireName: r'is_side_buy')
  bool? get isSideBuy;

  /// Quoted size in number of shares
  @BuiltValueField(wireName: r'size')
  int? get size;

  /// Price as decimal
  @BuiltValueField(wireName: r'price')
  double? get price;

  /// Order identifier
  @BuiltValueField(wireName: r'order_id')
  int? get orderId;

  Level3AddOrderModel._();

  factory Level3AddOrderModel([void updates(Level3AddOrderModelBuilder b)]) = _$Level3AddOrderModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Level3AddOrderModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Level3AddOrderModel> get serializer => _$Level3AddOrderModelSerializer();
}

class _$Level3AddOrderModelSerializer implements PrimitiveSerializer<Level3AddOrderModel> {
  @override
  final Iterable<Type> types = const [Level3AddOrderModel, _$Level3AddOrderModel];

  @override
  final String wireName = r'Level3AddOrderModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Level3AddOrderModel object, {
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
    if (object.orderId != null) {
      yield r'order_id';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Level3AddOrderModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Level3AddOrderModelBuilder result,
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
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.orderId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Level3AddOrderModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Level3AddOrderModelBuilder();
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

