            import 'package:openapi/model/order_status.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/time_in_force.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_live.g.dart';

abstract class OrderLive implements Built<OrderLive, OrderLiveBuilder> {

    /* Result type name */
        @nullable
    @BuiltValueField(wireName: r'type')
    String get type;
    /* Exchange name */
        @nullable
    @BuiltValueField(wireName: r'exchange_id')
    String get exchangeId;
    /* Client unique identifier for the trade. */
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    /* Hash client id */
        @nullable
    @BuiltValueField(wireName: r'client_order_id_format_exchange')
    String get clientOrderIdFormatExchange;
    /* Exchange order id */
        @nullable
    @BuiltValueField(wireName: r'exchange_order_id')
    String get exchangeOrderId;
    /* Amount open */
        @nullable
    @BuiltValueField(wireName: r'amount_open')
    num get amountOpen;
    /* Amount filled */
        @nullable
    @BuiltValueField(wireName: r'amount_filled')
    num get amountFilled;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    OrderStatus get status;
        //enum statusEnum {  RECEIVED,  ROUTING,  ROUTED,  NEW,  PENDING_CANCEL,  PARTIALLY_FILLED,  FILLED,  CANCELED,  REJECTED,  };
    /* History of order status changes */
        @nullable
    @BuiltValueField(wireName: r'time_order')
    BuiltList<BuiltList<String>> get timeOrder;
    /* Error message */
        @nullable
    @BuiltValueField(wireName: r'error_message')
    String get errorMessage;
    /* Client unique identifier for the trade. */
        @nullable
    @BuiltValueField(wireName: r'client_order_id')
    String get clientOrderId;
    /* The symbol of the order. */
        @nullable
    @BuiltValueField(wireName: r'symbol_exchange')
    String get symbolExchange;
    /* The CoinAPI symbol of the order. */
        @nullable
    @BuiltValueField(wireName: r'symbol_coinapi')
    String get symbolCoinapi;
    /* Quoted decimal amount to purchase. */
        @nullable
    @BuiltValueField(wireName: r'amount_order')
    num get amountOrder;
    /* Quoted decimal amount to spend per unit. */
        @nullable
    @BuiltValueField(wireName: r'price')
    num get price;
    /* Buy or Sell */
        @nullable
    @BuiltValueField(wireName: r'side')
    String get side;
        //enum sideEnum {  BUY,  SELL,  };
    /* The order type. */
        @nullable
    @BuiltValueField(wireName: r'order_type')
    String get orderType;
        //enum orderTypeEnum {  LIMIT,  };
    
        @nullable
    @BuiltValueField(wireName: r'time_in_force')
    TimeInForce get timeInForce;
        //enum timeInForceEnum {  GOOD_TILL_CANCEL,  GOOD_TILL_TIME_EXCHANGE,  GOOD_TILL_TIME_OMS,  FILL_OR_KILL,  IMMEDIATE_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  };
    /* Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS */
        @nullable
    @BuiltValueField(wireName: r'expire_time')
    DateTime get expireTime;
    /* TODO: description exec inst  | Parameter | Description | |-----------|--------| | `MAKER_OR_CANCEL` | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X |  */
        @nullable
    @BuiltValueField(wireName: r'exec_inst')
    BuiltList<String> get execInst;
        //enum execInstEnum {  MAKER_OR_CANCEL,  };

    // Boilerplate code needed to wire-up generated code
    OrderLive._();

    factory OrderLive([updates(OrderLiveBuilder b)]) = _$OrderLive;
    static Serializer<OrderLive> get serializer => _$orderLiveSerializer;

}

