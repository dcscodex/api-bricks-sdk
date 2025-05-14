//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'level3_modify_order_model.g.dart';

/// Represents the response DTO for order modify information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the order was modified as DateTime (UTC)
/// * [orderIdReference] - Order identifier reference
/// * [isPriorityReset] - Indicates if priority is reseted
/// * [size] - New total quoted size in number of shares
/// * [price] - Price as decimal
@BuiltValue()
abstract class Level3ModifyOrderModel implements Built<Level3ModifyOrderModel, Level3ModifyOrderModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the order was modified as DateTime (UTC)
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Order identifier reference
  @BuiltValueField(wireName: r'order_id_reference')
  int? get orderIdReference;

  /// Indicates if priority is reseted
  @BuiltValueField(wireName: r'is_priority_reset')
  bool? get isPriorityReset;

  /// New total quoted size in number of shares
  @BuiltValueField(wireName: r'size')
  int? get size;

  /// Price as decimal
  @BuiltValueField(wireName: r'price')
  double? get price;

  Level3ModifyOrderModel._();

  factory Level3ModifyOrderModel([void updates(Level3ModifyOrderModelBuilder b)]) = _$Level3ModifyOrderModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Level3ModifyOrderModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Level3ModifyOrderModel> get serializer => _$Level3ModifyOrderModelSerializer();
}

class _$Level3ModifyOrderModelSerializer implements PrimitiveSerializer<Level3ModifyOrderModel> {
  @override
  final Iterable<Type> types = const [Level3ModifyOrderModel, _$Level3ModifyOrderModel];

  @override
  final String wireName = r'Level3ModifyOrderModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Level3ModifyOrderModel object, {
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
    if (object.isPriorityReset != null) {
      yield r'is_priority_reset';
      yield serializers.serialize(
        object.isPriorityReset,
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
    Level3ModifyOrderModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Level3ModifyOrderModelBuilder result,
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
        case r'is_priority_reset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPriorityReset = valueDes;
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
  Level3ModifyOrderModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Level3ModifyOrderModelBuilder();
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

