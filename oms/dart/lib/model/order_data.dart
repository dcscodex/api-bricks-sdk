part of openapi.api;

class OrderData {
  /* Exchange name */
  String exchangeId = null;
  /* Client unique identifier for the trade. */
  String id = null;
  /* Hash client id */
  String clientOrderIdFormatExchange = null;
  /* Exchange order id */
  String exchangeOrderId = null;
  /* Amount open */
  num amountOpen = null;
  /* Amount filled */
  num amountFilled = null;
  
  OrderStatus status = null;
  //enum statusEnum {  RECEIVED,  ROUTING,  ROUTED,  NEW,  PENDING_CANCEL,  PARTIALLY_FILLED,  FILLED,  CANCELED,  REJECTED,  };{
  /* History of order status changes */
  List<List<String>> timeOrder = [];
  /* Error message */
  String errorMessage = null;
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
  OrderData();

  @override
  String toString() {
    return 'OrderData[exchangeId=$exchangeId, id=$id, clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, status=$status, timeOrder=$timeOrder, errorMessage=$errorMessage, clientOrderId=$clientOrderId, symbolExchange=$symbolExchange, symbolCoinapi=$symbolCoinapi, amountOrder=$amountOrder, price=$price, side=$side, orderType=$orderType, timeInForce=$timeInForce, expireTime=$expireTime, execInst=$execInst, ]';
  }

  OrderData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    exchangeId = json['exchange_id'];
    id = json['id'];
    clientOrderIdFormatExchange = json['client_order_id_format_exchange'];
    exchangeOrderId = json['exchange_order_id'];
    amountOpen = json['amount_open'];
    amountFilled = json['amount_filled'];
    status = (json['status'] == null) ?
      null :
      OrderStatus.fromJson(json['status']);
    timeOrder = (json['time_order'] == null) ?
      null :
      List.listFromJson(json['time_order']);
    errorMessage = json['error_message'];
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
    if (id != null)
      json['id'] = id;
    if (clientOrderIdFormatExchange != null)
      json['client_order_id_format_exchange'] = clientOrderIdFormatExchange;
    if (exchangeOrderId != null)
      json['exchange_order_id'] = exchangeOrderId;
    if (amountOpen != null)
      json['amount_open'] = amountOpen;
    if (amountFilled != null)
      json['amount_filled'] = amountFilled;
    if (status != null)
      json['status'] = status;
    if (timeOrder != null)
      json['time_order'] = timeOrder;
    if (errorMessage != null)
      json['error_message'] = errorMessage;
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

  static List<OrderData> listFromJson(List<dynamic> json) {
    return json == null ? List<OrderData>() : json.map((value) => OrderData.fromJson(value)).toList();
  }

  static Map<String, OrderData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OrderData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OrderData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderData-objects as value to a dart map
  static Map<String, List<OrderData>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<OrderData>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = OrderData.listFromJson(value);
       });
     }
     return map;
  }
}

