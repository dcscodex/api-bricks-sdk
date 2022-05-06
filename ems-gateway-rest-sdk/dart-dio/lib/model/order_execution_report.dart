//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/ord_side.dart';
import 'package:openapi/model/fills.dart';
import 'package:openapi/model/ord_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/time_in_force.dart';
import 'package:openapi/model/order_new_single_request.dart';
import 'package:openapi/model/ord_type.dart';
import 'package:openapi/model/order_execution_report_all_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_execution_report.g.dart';

abstract class OrderExecutionReport implements Built<OrderExecutionReport, OrderExecutionReportBuilder> {

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
    BuiltList<ExecInstEnum> get execInst;
    // enum execInstEnum {  MAKER_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  };

    /// The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
    @BuiltValueField(wireName: r'client_order_id_format_exchange')
    String get clientOrderIdFormatExchange;

    /// Unique identifier of the order assigned by the exchange or executing system.
    @nullable
    @BuiltValueField(wireName: r'exchange_order_id')
    String get exchangeOrderId;

    /// Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
    @BuiltValueField(wireName: r'amount_open')
    num get amountOpen;

    /// Total quantity filled.
    @BuiltValueField(wireName: r'amount_filled')
    num get amountFilled;

    /// Calculated average price of all fills on this order.
    @nullable
    @BuiltValueField(wireName: r'avg_px')
    num get avgPx;

    @BuiltValueField(wireName: r'status')
    OrdStatus get status;
    // enum statusEnum {  RECEIVED,  ROUTING,  ROUTED,  NEW,  PENDING_CANCEL,  PARTIALLY_FILLED,  FILLED,  CANCELED,  REJECTED,  };

    /// Timestamped history of order status changes.
    @nullable
    @BuiltValueField(wireName: r'status_history')
    BuiltList<BuiltList<String>> get statusHistory;

    /// Error message.
    @nullable
    @BuiltValueField(wireName: r'error_message')
    String get errorMessage;

    /// Relay fill information on working orders.
    @nullable
    @BuiltValueField(wireName: r'fills')
    BuiltList<Fills> get fills;

    OrderExecutionReport._();

    static void _initializeBuilder(OrderExecutionReportBuilder b) => b;

    factory OrderExecutionReport([void updates(OrderExecutionReportBuilder b)]) = _$OrderExecutionReport;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrderExecutionReport> get serializer => _$OrderExecutionReportSerializer();
}

class _$OrderExecutionReportSerializer implements StructuredSerializer<OrderExecutionReport> {

    @override
    final Iterable<Type> types = const [OrderExecutionReport, _$OrderExecutionReport];
    @override
    final String wireName = r'OrderExecutionReport';

    @override
    Iterable<Object> serialize(Serializers serializers, OrderExecutionReport object,
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
                    specifiedType: const FullType(BuiltList, [FullType(OrderExecutionReportExecInstEnum)])));
        }
        result
            ..add(r'client_order_id_format_exchange')
            ..add(serializers.serialize(object.clientOrderIdFormatExchange,
                specifiedType: const FullType(String)));
        if (object.exchangeOrderId != null) {
            result
                ..add(r'exchange_order_id')
                ..add(serializers.serialize(object.exchangeOrderId,
                    specifiedType: const FullType(String)));
        }
        result
            ..add(r'amount_open')
            ..add(serializers.serialize(object.amountOpen,
                specifiedType: const FullType(num)));
        result
            ..add(r'amount_filled')
            ..add(serializers.serialize(object.amountFilled,
                specifiedType: const FullType(num)));
        if (object.avgPx != null) {
            result
                ..add(r'avg_px')
                ..add(serializers.serialize(object.avgPx,
                    specifiedType: const FullType(num)));
        }
        result
            ..add(r'status')
            ..add(serializers.serialize(object.status,
                specifiedType: const FullType(OrdStatus)));
        if (object.statusHistory != null) {
            result
                ..add(r'status_history')
                ..add(serializers.serialize(object.statusHistory,
                    specifiedType: const FullType(BuiltList, [FullType(BuiltList, [FullType(String)])])));
        }
        if (object.errorMessage != null) {
            result
                ..add(r'error_message')
                ..add(serializers.serialize(object.errorMessage,
                    specifiedType: const FullType(String)));
        }
        if (object.fills != null) {
            result
                ..add(r'fills')
                ..add(serializers.serialize(object.fills,
                    specifiedType: const FullType(BuiltList, [FullType(Fills)])));
        }
        return result;
    }

    @override
    OrderExecutionReport deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrderExecutionReportBuilder();

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
                        specifiedType: const FullType(BuiltList, [FullType(OrderExecutionReportExecInstEnum)])) as BuiltList<ExecInstEnum>);
                    break;
                case r'client_order_id_format_exchange':
                    result.clientOrderIdFormatExchange = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'exchange_order_id':
                    result.exchangeOrderId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'amount_open':
                    result.amountOpen = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'amount_filled':
                    result.amountFilled = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'avg_px':
                    result.avgPx = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'status':
                    result.status = serializers.deserialize(value,
                        specifiedType: const FullType(OrdStatus)) as OrdStatus;
                    break;
                case r'status_history':
                    result.statusHistory.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(BuiltList, [FullType(String)])])) as BuiltList<BuiltList<String>>);
                    break;
                case r'error_message':
                    result.errorMessage = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'fills':
                    result.fills.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Fills)])) as BuiltList<Fills>);
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

