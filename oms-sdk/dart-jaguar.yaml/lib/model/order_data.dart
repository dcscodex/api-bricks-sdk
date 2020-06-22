import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/order_status.dart';

import 'package:openapi/model/time_in_force.dart';

part 'order_data.jser.dart';

class OrderData {
   /* Exchange name */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
   /* Client unique identifier for the trade. */
  @Alias('id', isNullable: false,  )
  final String id;
   /* Hash client id */
  @Alias('client_order_id_format_exchange', isNullable: false,  )
  final String clientOrderIdFormatExchange;
   /* Exchange order id */
  @Alias('exchange_order_id', isNullable: false,  )
  final String exchangeOrderId;
   /* Amount open */
  @Alias('amount_open', isNullable: false,  )
  final num amountOpen;
   /* Amount filled */
  @Alias('amount_filled', isNullable: false,  )
  final num amountFilled;
  
  @Alias('status', isNullable: false,
          
             processor:  const OrderStatusFieldProcessor(),
          
  )
  final OrderStatus status;
  //enum statusEnum {  RECEIVED,  ROUTING,  ROUTED,  NEW,  PENDING_CANCEL,  PARTIALLY_FILLED,  FILLED,  CANCELED,  REJECTED,  }; /* History of order status changes */
  @Alias('time_order', isNullable: false,  )
  final List<List<String>> timeOrder;
   /* Error message */
  @Alias('error_message', isNullable: false,  )
  final String errorMessage;
   /* Client unique identifier for the trade. */
  @Alias('client_order_id', isNullable: false,  )
  final String clientOrderId;
   /* The symbol of the order. */
  @Alias('symbol_exchange', isNullable: false,  )
  final String symbolExchange;
   /* The CoinAPI symbol of the order. */
  @Alias('symbol_coinapi', isNullable: false,  )
  final String symbolCoinapi;
   /* Quoted decimal amount to purchase. */
  @Alias('amount_order', isNullable: false,  )
  final num amountOrder;
   /* Quoted decimal amount to spend per unit. */
  @Alias('price', isNullable: false,  )
  final num price;
   /* Buy or Sell */
  @Alias('side', isNullable: false,
          
  )
  final String side;
  //enum sideEnum {  BUY,  SELL,  }; /* The order type. */
  @Alias('order_type', isNullable: false,
          
  )
  final String orderType;
  //enum orderTypeEnum {  LIMIT,  };
  @Alias('time_in_force', isNullable: false,
          
             processor:  const TimeInForceFieldProcessor(),
          
  )
  final TimeInForce timeInForce;
  //enum timeInForceEnum {  GOOD_TILL_CANCEL,  GOOD_TILL_TIME_EXCHANGE,  GOOD_TILL_TIME_OMS,  FILL_OR_KILL,  IMMEDIATE_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  }; /* Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS */
  @Alias('expire_time', isNullable: false,  )
  final DateTime expireTime;
   /* TODO: description exec inst  | Parameter | Description | |-----------|--------| | `MAKER_OR_CANCEL` | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X |  */
  @Alias('exec_inst', isNullable: false,
          
             processor:  const List<String>FieldProcessor(),
          
  )
  final List<String> execInst;
  //enum execInstEnum {  MAKER_OR_CANCEL,  };

  OrderData(
      

{
     this.exchangeId = null,  
     this.id = null,  
     this.clientOrderIdFormatExchange = null,  
     this.exchangeOrderId = null,  
     this.amountOpen = null,  
     this.amountFilled = null,  
     this.status = null,  
     this.timeOrder = const [],  
     this.errorMessage = null,  
     this.clientOrderId = null,  
     this.symbolExchange = null,  
     this.symbolCoinapi = null,  
     this.amountOrder = null,  
     this.price = null,  
     this.side = null,  
     this.orderType = null,  
     this.timeInForce = null,  
     this.expireTime = null,  
     this.execInst = const [] 
    
    }
  );

  @override
  String toString() {
    return 'OrderData[exchangeId=$exchangeId, id=$id, clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, status=$status, timeOrder=$timeOrder, errorMessage=$errorMessage, clientOrderId=$clientOrderId, symbolExchange=$symbolExchange, symbolCoinapi=$symbolCoinapi, amountOrder=$amountOrder, price=$price, side=$side, orderType=$orderType, timeInForce=$timeInForce, expireTime=$expireTime, execInst=$execInst, ]';
  }
}

@GenSerializer(nullableFields: true)
class OrderDataSerializer extends Serializer<OrderData> with _$OrderDataSerializer {

}

