//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/level3_modify_order_model.dart';
import 'package:openapi/src/model/level3_add_order_model.dart';
import 'package:openapi/src/model/level3_executed_order_model.dart';
import 'package:openapi/src/model/level3_clear_book_model.dart';
import 'package:openapi/src/model/level3_delete_order_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'level3_order_book_model.g.dart';

/// Represents the response DTO for Level-3 order book information
///
/// Properties:
/// * [addOrder] 
/// * [deleteOrder] 
/// * [modifyOrder] 
/// * [executedOrder] 
/// * [clearBook] 
@BuiltValue()
abstract class Level3OrderBookModel implements Built<Level3OrderBookModel, Level3OrderBookModelBuilder> {
  @BuiltValueField(wireName: r'add_order')
  Level3AddOrderModel? get addOrder;

  @BuiltValueField(wireName: r'delete_order')
  Level3DeleteOrderModel? get deleteOrder;

  @BuiltValueField(wireName: r'modify_order')
  Level3ModifyOrderModel? get modifyOrder;

  @BuiltValueField(wireName: r'executed_order')
  Level3ExecutedOrderModel? get executedOrder;

  @BuiltValueField(wireName: r'clear_book')
  Level3ClearBookModel? get clearBook;

  Level3OrderBookModel._();

  factory Level3OrderBookModel([void updates(Level3OrderBookModelBuilder b)]) = _$Level3OrderBookModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Level3OrderBookModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Level3OrderBookModel> get serializer => _$Level3OrderBookModelSerializer();
}

class _$Level3OrderBookModelSerializer implements PrimitiveSerializer<Level3OrderBookModel> {
  @override
  final Iterable<Type> types = const [Level3OrderBookModel, _$Level3OrderBookModel];

  @override
  final String wireName = r'Level3OrderBookModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Level3OrderBookModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.addOrder != null) {
      yield r'add_order';
      yield serializers.serialize(
        object.addOrder,
        specifiedType: const FullType(Level3AddOrderModel),
      );
    }
    if (object.deleteOrder != null) {
      yield r'delete_order';
      yield serializers.serialize(
        object.deleteOrder,
        specifiedType: const FullType(Level3DeleteOrderModel),
      );
    }
    if (object.modifyOrder != null) {
      yield r'modify_order';
      yield serializers.serialize(
        object.modifyOrder,
        specifiedType: const FullType(Level3ModifyOrderModel),
      );
    }
    if (object.executedOrder != null) {
      yield r'executed_order';
      yield serializers.serialize(
        object.executedOrder,
        specifiedType: const FullType(Level3ExecutedOrderModel),
      );
    }
    if (object.clearBook != null) {
      yield r'clear_book';
      yield serializers.serialize(
        object.clearBook,
        specifiedType: const FullType(Level3ClearBookModel),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Level3OrderBookModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Level3OrderBookModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'add_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Level3AddOrderModel),
          ) as Level3AddOrderModel;
          result.addOrder.replace(valueDes);
          break;
        case r'delete_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Level3DeleteOrderModel),
          ) as Level3DeleteOrderModel;
          result.deleteOrder.replace(valueDes);
          break;
        case r'modify_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Level3ModifyOrderModel),
          ) as Level3ModifyOrderModel;
          result.modifyOrder.replace(valueDes);
          break;
        case r'executed_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Level3ExecutedOrderModel),
          ) as Level3ExecutedOrderModel;
          result.executedOrder.replace(valueDes);
          break;
        case r'clear_book':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Level3ClearBookModel),
          ) as Level3ClearBookModel;
          result.clearBook.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Level3OrderBookModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Level3OrderBookModelBuilder();
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

