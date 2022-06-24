//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/fills.dart';
import 'package:openapi/src/model/ord_type.dart';
import 'package:openapi/src/model/ord_side.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/order_execution_report_all_of.dart';
import 'package:openapi/src/model/order_new_single_request.dart';
import 'package:openapi/src/model/time_in_force.dart';
import 'package:openapi/src/model/ord_status.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_execution_report.g.dart';

/// The order execution report object.
///
/// Properties:
/// * [exchangeId] - Exchange identifier used to identify the routing destination.
/// * [clientOrderId] - The unique identifier of the order assigned by the client.
/// * [symbolIdExchange] - Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
/// * [symbolIdCoinapi] - CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
/// * [amountOrder] - Order quantity.
/// * [price] - Order price.
/// * [side] 
/// * [orderType] 
/// * [timeInForce] 
/// * [expireTime] - Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
/// * [execInst] - Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a> 
/// * [clientOrderIdFormatExchange] - The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
/// * [exchangeOrderId] - Unique identifier of the order assigned by the exchange or executing system.
/// * [amountOpen] - Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
/// * [amountFilled] - Total quantity filled.
/// * [avgPx] - Calculated average price of all fills on this order.
/// * [status] 
/// * [statusHistory] - Timestamped history of order status changes.
/// * [errorMessage] - Error message.
/// * [fills] - Relay fill information on working orders.
abstract class OrderExecutionReport implements Built<OrderExecutionReport, OrderExecutionReportBuilder> {
    /// Exchange identifier used to identify the routing destination.
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;

    /// The unique identifier of the order assigned by the client.
    @BuiltValueField(wireName: r'client_order_id')
    String get clientOrderId;

    /// Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
    @BuiltValueField(wireName: r'symbol_id_exchange')
    String? get symbolIdExchange;

    /// CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
    @BuiltValueField(wireName: r'symbol_id_coinapi')
    String? get symbolIdCoinapi;

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
    @BuiltValueField(wireName: r'expire_time')
    Date? get expireTime;

    /// Order execution instructions are documented in the separate section: <a href=\"#ems-order-params-exec\">EMS / Starter Guide / Order parameters / Execution instructions</a> 
    @BuiltValueField(wireName: r'exec_inst')
    BuiltList<OrderExecutionReportExecInstEnum>? get execInst;
    // enum execInstEnum {  MAKER_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  };

    /// The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
    @BuiltValueField(wireName: r'client_order_id_format_exchange')
    String get clientOrderIdFormatExchange;

    /// Unique identifier of the order assigned by the exchange or executing system.
    @BuiltValueField(wireName: r'exchange_order_id')
    String? get exchangeOrderId;

    /// Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
    @BuiltValueField(wireName: r'amount_open')
    num get amountOpen;

    /// Total quantity filled.
    @BuiltValueField(wireName: r'amount_filled')
    num get amountFilled;

    /// Calculated average price of all fills on this order.
    @BuiltValueField(wireName: r'avg_px')
    num? get avgPx;

    @BuiltValueField(wireName: r'status')
    OrdStatus get status;
    // enum statusEnum {  RECEIVED,  ROUTING,  ROUTED,  NEW,  PENDING_CANCEL,  PARTIALLY_FILLED,  FILLED,  CANCELED,  REJECTED,  };

    /// Timestamped history of order status changes.
    @BuiltValueField(wireName: r'status_history')
    BuiltList<BuiltList<String>>? get statusHistory;

    /// Error message.
    @BuiltValueField(wireName: r'error_message')
    String? get errorMessage;

    /// Relay fill information on working orders.
    @BuiltValueField(wireName: r'fills')
    BuiltList<Fills>? get fills;

    OrderExecutionReport._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrderExecutionReportBuilder b) => b;

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
    Iterable<Object?> serialize(Serializers serializers, OrderExecutionReport object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
                    specifiedType: const FullType(Date)));
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
    OrderExecutionReport deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrderExecutionReportBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'exchange_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.exchangeId = valueDes;
                    break;
                case r'client_order_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.clientOrderId = valueDes;
                    break;
                case r'symbol_id_exchange':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.symbolIdExchange = valueDes;
                    break;
                case r'symbol_id_coinapi':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.symbolIdCoinapi = valueDes;
                    break;
                case r'amount_order':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.amountOrder = valueDes;
                    break;
                case r'price':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.price = valueDes;
                    break;
                case r'side':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrdSide)) as OrdSide;
                    result.side = valueDes;
                    break;
                case r'order_type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrdType)) as OrdType;
                    result.orderType = valueDes;
                    break;
                case r'time_in_force':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(TimeInForce)) as TimeInForce;
                    result.timeInForce = valueDes;
                    break;
                case r'expire_time':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.expireTime = valueDes;
                    break;
                case r'exec_inst':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(OrderExecutionReportExecInstEnum)])) as BuiltList<OrderExecutionReportExecInstEnum>;
                    result.execInst.replace(valueDes);
                    break;
                case r'client_order_id_format_exchange':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.clientOrderIdFormatExchange = valueDes;
                    break;
                case r'exchange_order_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.exchangeOrderId = valueDes;
                    break;
                case r'amount_open':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.amountOpen = valueDes;
                    break;
                case r'amount_filled':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.amountFilled = valueDes;
                    break;
                case r'avg_px':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.avgPx = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrdStatus)) as OrdStatus;
                    result.status = valueDes;
                    break;
                case r'status_history':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(BuiltList, [FullType(String)])])) as BuiltList<BuiltList<String>>;
                    result.statusHistory.replace(valueDes);
                    break;
                case r'error_message':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.errorMessage = valueDes;
                    break;
                case r'fills':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Fills)])) as BuiltList<Fills>;
                    result.fills.replace(valueDes);
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

