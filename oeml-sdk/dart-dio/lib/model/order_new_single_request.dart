//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/ord_side.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/time_in_force.dart';
import 'package:openapi/model/ord_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_new_single_request.g.dart';

abstract class OrderNewSingleRequest implements Built<OrderNewSingleRequest, OrderNewSingleRequestBuilder> {

    /// Exchange identifier used to identify the routing destination.
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    /// The unique identifier of the order assigned by the client.
    @BuiltValueField(wireName: r'client_order_id')
    String get clientOrderId;

    /// Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
    @nullable
    @BuiltValueField(wireName: r'symbol_id_exchange')
    String get symbolIdExchange;

    /// CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
    @nullable
    @BuiltValueField(wireName: r'symbol_id_coinapi')
    String get symbolIdCoinapi;

    /// Order quantity.
    @BuiltValueField(wireName: r'amount_order')
    num get amountOrder;

    /// Order price.
    @BuiltValueField(wireName: r'price')
    num get price;

    @BuiltValueField(wireName: r'side')
    OrdSide get side;
    // enum sideEnum {  BUY,  SELL,  };

    @BuiltValueField(wireName: r'order_type')
    OrdType get orderType;
    // enum orderTypeEnum {  LIMIT,  };

    @BuiltValueField(wireName: r'time_in_force')
    TimeInForce get timeInForce;
    // enum timeInForceEnum {  GOOD_TILL_CANCEL,  GOOD_TILL_TIME_EXCHANGE,  GOOD_TILL_TIME_OMS,  FILL_OR_KILL,  IMMEDIATE_OR_CANCEL,  };

    /// Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
    @nullable
    @BuiltValueField(wireName: r'expire_time')
    DateTime get expireTime;

    /// Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a> 
    @nullable
    @BuiltValueField(wireName: r'exec_inst')
    BuiltList<OrderNewSingleRequestExecInstEnum> get execInst;
    // enum execInstEnum {  MAKER_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  };

    OrderNewSingleRequest._();

    static void _initializeBuilder(OrderNewSingleRequestBuilder b) => b;

    factory OrderNewSingleRequest([void updates(OrderNewSingleRequestBuilder b)]) = _$OrderNewSingleRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrderNewSingleRequest> get serializer => _$OrderNewSingleRequestSerializer();
}

class _$OrderNewSingleRequestSerializer implements StructuredSerializer<OrderNewSingleRequest> {

    @override
    final Iterable<Type> types = const [OrderNewSingleRequest, _$OrderNewSingleRequest];
    @override
    final String wireName = r'OrderNewSingleRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, OrderNewSingleRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'exchange_id')
            ..add(serializers.serialize(object.exchangeId,
                specifiedType: const FullType(String)));
        result
            ..add(r'client_order_id')
            ..add(serializers.serialize(object.clientOrderId,
                specifiedType: const FullType(String)));
        if (object.symbolIdExchange != null) {
            result
                ..add(r'symbol_id_exchange')
                ..add(serializers.serialize(object.symbolIdExchange,
                    specifiedType: const FullType(String)));
        }
        if (object.symbolIdCoinapi != null) {
            result
                ..add(r'symbol_id_coinapi')
                ..add(serializers.serialize(object.symbolIdCoinapi,
                    specifiedType: const FullType(String)));
        }
        result
            ..add(r'amount_order')
            ..add(serializers.serialize(object.amountOrder,
                specifiedType: const FullType(num)));
        result
            ..add(r'price')
            ..add(serializers.serialize(object.price,
                specifiedType: const FullType(num)));
        result
            ..add(r'side')
            ..add(serializers.serialize(object.side,
                specifiedType: const FullType(OrdSide)));
        result
            ..add(r'order_type')
            ..add(serializers.serialize(object.orderType,
                specifiedType: const FullType(OrdType)));
        result
            ..add(r'time_in_force')
            ..add(serializers.serialize(object.timeInForce,
                specifiedType: const FullType(TimeInForce)));
        if (object.expireTime != null) {
            result
                ..add(r'expire_time')
                ..add(serializers.serialize(object.expireTime,
                    specifiedType: const FullType(DateTime)));
        }
        if (object.execInst != null) {
            result
                ..add(r'exec_inst')
                ..add(serializers.serialize(object.execInst,
                    specifiedType: const FullType(BuiltList, [FullType(OrderNewSingleRequestExecInstEnum)])));
        }
        return result;
    }

    @override
    OrderNewSingleRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrderNewSingleRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'exchange_id':
                    result.exchangeId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'client_order_id':
                    result.clientOrderId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'symbol_id_exchange':
                    result.symbolIdExchange = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'symbol_id_coinapi':
                    result.symbolIdCoinapi = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'amount_order':
                    result.amountOrder = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'price':
                    result.price = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'side':
                    result.side = serializers.deserialize(value,
                        specifiedType: const FullType(OrdSide)) as OrdSide;
                    break;
                case r'order_type':
                    result.orderType = serializers.deserialize(value,
                        specifiedType: const FullType(OrdType)) as OrdType;
                    break;
                case r'time_in_force':
                    result.timeInForce = serializers.deserialize(value,
                        specifiedType: const FullType(TimeInForce)) as TimeInForce;
                    break;
                case r'expire_time':
                    result.expireTime = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'exec_inst':
                    result.execInst.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(OrderNewSingleRequestExecInstEnum)])) as BuiltList<OrderNewSingleRequestExecInstEnum>);
                    break;
            }
        }
        return result.build();
    }
}

class OrderExecutionReportExecInstEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'MAKER_OR_CANCEL')
  static const OrderExecutionReportExecInstEnum MAKER_OR_CANCEL = _$orderExecutionReportExecInstEnum_MAKER_OR_CANCEL;
  @BuiltValueEnumConst(wireName: r'AUCTION_ONLY')
  static const OrderExecutionReportExecInstEnum AUCTION_ONLY = _$orderExecutionReportExecInstEnum_AUCTION_ONLY;
  @BuiltValueEnumConst(wireName: r'INDICATION_OF_INTEREST')
  static const OrderExecutionReportExecInstEnum INDICATION_OF_INTEREST = _$orderExecutionReportExecInstEnum_INDICATION_OF_INTEREST;

  static Serializer<OrderExecutionReportExecInstEnum> get serializer => _$orderExecutionReportExecInstEnumSerializer;

  const OrderExecutionReportExecInstEnum._(String name): super(name);

  static BuiltSet<OrderExecutionReportExecInstEnum> get values => _$orderExecutionReportExecInstEnumValues;
  static OrderExecutionReportExecInstEnum valueOf(String name) => _$orderExecutionReportExecInstEnumValueOf(name);
}

