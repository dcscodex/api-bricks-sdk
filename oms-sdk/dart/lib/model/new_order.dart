part of openapi.api;

class NewOrder {
  /* Exchange name */
  String exchangeId = null;
  /* Client unique identifier for the trade. */
  String clientOrderId = null;
  /* The symbol of the order. */
  String symbolExchange = null;
  /* The CoinAPI symbol of the order. */
  String symbolCoinapi = null;
  /* Quoted decimal amount to purchase. */
  num amountOrder = null;
  /* Quoted decimal amount to spend per unit. */
  num price = null;
  /* Buy or Sell */
  String side = null;
  //enum sideEnum {  BUY,  SELL,  };{
  /* The order type. */
  String orderType = null;
  //enum orderTypeEnum {  LIMIT,  };{
  
  TimeInForce timeInForce = null;
  //enum timeInForceEnum {  GOOD_TILL_CANCEL,  GOOD_TILL_TIME_EXCHANGE,  GOOD_TILL_TIME_OMS,  FILL_OR_KILL,  IMMEDIATE_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  };{
  /* Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS */
  DateTime expireTime = null;
  /* TODO: description exec inst  | Parameter | Description | |-----------|--------| | `MAKER_OR_CANCEL` | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X |  */
  List<String> execInst = [];
  //enum execInstEnum {  MAKER_OR_CANCEL,  };{
  NewOrder();

  @override
  String toString() {
    return 'NewOrder[exchangeId=$exchangeId, clientOrderId=$clientOrderId, symbolExchange=$symbolExchange, symbolCoinapi=$symbolCoinapi, amountOrder=$amountOrder, price=$price, side=$side, orderType=$orderType, timeInForce=$timeInForce, expireTime=$expireTime, execInst=$execInst, ]';
  }

  NewOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    exchangeId = json['exchange_id'];
    clientOrderId = json['client_order_id'];
    symbolExchange = json['symbol_exchange'];
    symbolCoinapi = json['symbol_coinapi'];
    amountOrder = json['amount_order'];
    price = json['price'];
    side = json['side'];
    orderType = json['order_type'];
    timeInForce = (json['time_in_force'] == null) ?
      null :
      TimeInForce.fromJson(json['time_in_force']);
    expireTime = (json['expire_time'] == null) ?
      null :
      DateTime.fromJson(json['expire_time']);
    execInst = (json['exec_inst'] == null) ?
      null :
      (json['exec_inst'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (exchangeId != null)
      json['exchange_id'] = exchangeId;
    if (clientOrderId != null)
      json['client_order_id'] = clientOrderId;
    if (symbolExchange != null)
      json['symbol_exchange'] = symbolExchange;
    if (symbolCoinapi != null)
      json['symbol_coinapi'] = symbolCoinapi;
    if (amountOrder != null)
      json['amount_order'] = amountOrder;
    if (price != null)
      json['price'] = price;
    if (side != null)
      json['side'] = side;
    if (orderType != null)
      json['order_type'] = orderType;
    if (timeInForce != null)
      json['time_in_force'] = timeInForce;
    if (expireTime != null)
      json['expire_time'] = expireTime;
    if (execInst != null)
      json['exec_inst'] = execInst;
    return json;
  }

  static List<NewOrder> listFromJson(List<dynamic> json) {
    return json == null ? List<NewOrder>() : json.map((value) => NewOrder.fromJson(value)).toList();
  }

  static Map<String, NewOrder> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NewOrder>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NewOrder.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewOrder-objects as value to a dart map
  static Map<String, List<NewOrder>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NewOrder>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NewOrder.listFromJson(value);
       });
     }
     return map;
  }
}

