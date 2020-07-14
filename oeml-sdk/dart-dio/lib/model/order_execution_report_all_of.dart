            import 'package:openapi/model/ord_status.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_execution_report_all_of.g.dart';

abstract class OrderExecutionReportAllOf implements Built<OrderExecutionReportAllOf, OrderExecutionReportAllOfBuilder> {

    /* The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. */
        @nullable
    @BuiltValueField(wireName: r'client_order_id_format_exchange')
    String get clientOrderIdFormatExchange;
    /* Unique identifier of the order assigned by the exchange or executing system. */
        @nullable
    @BuiltValueField(wireName: r'exchange_order_id')
    String get exchangeOrderId;
    /* Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled` */
        @nullable
    @BuiltValueField(wireName: r'amount_open')
    num get amountOpen;
    /* Total quantity filled. */
        @nullable
    @BuiltValueField(wireName: r'amount_filled')
    num get amountFilled;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    OrdStatus get status;
        //enum statusEnum {  RECEIVED,  ROUTING,  ROUTED,  NEW,  PENDING_CANCEL,  PARTIALLY_FILLED,  FILLED,  CANCELED,  REJECTED,  };
    /* Timestamped history of order status changes. */
        @nullable
    @BuiltValueField(wireName: r'time_order')
    BuiltList<BuiltList<String>> get timeOrder;
    /* Error message */
        @nullable
    @BuiltValueField(wireName: r'error_message')
    String get errorMessage;

    // Boilerplate code needed to wire-up generated code
    OrderExecutionReportAllOf._();

    factory OrderExecutionReportAllOf([updates(OrderExecutionReportAllOfBuilder b)]) = _$OrderExecutionReportAllOf;
    static Serializer<OrderExecutionReportAllOf> get serializer => _$orderExecutionReportAllOfSerializer;

}

