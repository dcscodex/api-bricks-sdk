part of openapi.api;

class OrderNewSingleRequest {
  /* Exchange identifier used to identify the routing destination. */
  String exchangeId = null;
  /* The unique identifier of the order assigned by the client. */
  String clientOrderId = null;
  /* Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order. */
  String symbolIdExchange = null;
  /* CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order. */
  String symbolIdCoinapi = null;
  /* Order quantity. */
  num amountOrder = null;
  /* Order price. */
  num price = null;
  
  OrdSide side = null;
  //enum sideEnum {  BUY,  SELL,  };{
  
  OrdType orderType = null;
  //enum orderTypeEnum {  LIMIT,  };{
  
  TimeInForce timeInForce = null;
  //enum timeInForceEnum {  GOOD_TILL_CANCEL,  GOOD_TILL_TIME_EXCHANGE,  GOOD_TILL_TIME_OMS,  FILL_OR_KILL,  IMMEDIATE_OR_CANCEL,  };{
  /* Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`. */
  DateTime expireTime = null;
  /* Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>  */
  List<String> execInst = [];
  //enum execInstEnum {  MAKER_OR_CANCEL,  AUCTION_ONLY,  INDICATION_OF_INTEREST,  };{
  OrderNewSingleRequest();

  @override
  String toString() {
    return 'OrderNewSingleRequest[exchangeId=$exchangeId, clientOrderId=$clientOrderId, symbolIdExchange=$symbolIdExchange, symbolIdCoinapi=$symbolIdCoinapi, amountOrder=$amountOrder, price=$price, side=$side, orderType=$orderType, timeInForce=$timeInForce, expireTime=$expireTime, execInst=$execInst, ]';
  }

  OrderNewSingleRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    exchangeId = json['exchange_id'];
    clientOrderId = json['client_order_id'];
    symbolIdExchange = json['symbol_id_exchange'];
    symbolIdCoinapi = json['symbol_id_coinapi'];
    amountOrder = json['amount_order'];
    price = json['price'];
    side = (json['side'] == null) ?
      null :
      OrdSide.fromJson(json['side']);
    orderType = (json['order_type'] == null) ?
      null :
      OrdType.fromJson(json['order_type']);
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
    if (symbolIdExchange != null)
      json['symbol_id_exchange'] = symbolIdExchange;
    if (symbolIdCoinapi != null)
      json['symbol_id_coinapi'] = symbolIdCoinapi;
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

  static List<OrderNewSingleRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<OrderNewSingleRequest>() : json.map((value) => OrderNewSingleRequest.fromJson(value)).toList();
  }

  static Map<String, OrderNewSingleRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OrderNewSingleRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OrderNewSingleRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderNewSingleRequest-objects as value to a dart map
  static Map<String, List<OrderNewSingleRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<OrderNewSingleRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = OrderNewSingleRequest.listFromJson(value);
       });
     }
     return map;
  }
}

