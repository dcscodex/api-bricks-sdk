//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/fills.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/ord_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_execution_report_all_of.g.dart';

/// The order execution report message.
///
/// Properties:
/// * [clientOrderIdFormatExchange] - The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
/// * [exchangeOrderId] - Unique identifier of the order assigned by the exchange or executing system.
/// * [amountOpen] - Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
/// * [amountFilled] - Total quantity filled.
/// * [avgPx] - Calculated average price of all fills on this order.
/// * [status] 
/// * [statusHistory] - Timestamped history of order status changes.
/// * [errorMessage] - Error message.
/// * [fills] - Relay fill information on working orders.
abstract class OrderExecutionReportAllOf implements Built<OrderExecutionReportAllOf, OrderExecutionReportAllOfBuilder> {
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

    OrderExecutionReportAllOf._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrderExecutionReportAllOfBuilder b) => b;

    factory OrderExecutionReportAllOf([void updates(OrderExecutionReportAllOfBuilder b)]) = _$OrderExecutionReportAllOf;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrderExecutionReportAllOf> get serializer => _$OrderExecutionReportAllOfSerializer();
}

class _$OrderExecutionReportAllOfSerializer implements StructuredSerializer<OrderExecutionReportAllOf> {
    @override
    final Iterable<Type> types = const [OrderExecutionReportAllOf, _$OrderExecutionReportAllOf];

    @override
    final String wireName = r'OrderExecutionReportAllOf';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrderExecutionReportAllOf object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    OrderExecutionReportAllOf deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrderExecutionReportAllOfBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
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

