import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/time_in_force.dart';

part 'new_order.jser.dart';

class NewOrder {
   /* Exchange name */
  @Alias('exchange_id', isNullable: false,  )
  final String exchangeId;
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

  NewOrder(
      

{
     this.exchangeId = null,  
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
    return 'NewOrder[exchangeId=$exchangeId, clientOrderId=$clientOrderId, symbolExchange=$symbolExchange, symbolCoinapi=$symbolCoinapi, amountOrder=$amountOrder, price=$price, side=$side, orderType=$orderType, timeInForce=$timeInForce, expireTime=$expireTime, execInst=$execInst, ]';
  }
}

@GenSerializer(nullableFields: true)
class NewOrderSerializer extends Serializer<NewOrder> with _$NewOrderSerializer {

}

