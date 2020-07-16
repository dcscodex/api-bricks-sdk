part of openapi.api;

class OrderExecutionReport {
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
  /* The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. */
  String clientOrderIdFormatExchange = null;
  /* Unique identifier of the order assigned by the exchange or executing system. */
  String exchangeOrderId = null;
  /* Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled` */
  num amountOpen = null;
  /* Total quantity filled. */
  num amountFilled = null;
  
  OrdStatus status = null;
  //enum statusEnum {  RECEIVED,  ROUTING,  ROUTED,  NEW,  PENDING_CANCEL,  PARTIALLY_FILLED,  FILLED,  CANCELED,  REJECTED,  };{
  /* Timestamped history of order status changes. */
  List<List<String>> timeOrder = [];
  /* Error message */
  String errorMessage = null;
  OrderExecutionReport();

  @override
  String toString() {
    return 'OrderExecutionReport[exchangeId=$exchangeId, clientOrderId=$clientOrderId, symbolIdExchange=$symbolIdExchange, symbolIdCoinapi=$symbolIdCoinapi, amountOrder=$amountOrder, price=$price, side=$side, orderType=$orderType, timeInForce=$timeInForce, expireTime=$expireTime, execInst=$execInst, clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, status=$status, timeOrder=$timeOrder, errorMessage=$errorMessage, ]';
  }

  OrderExecutionReport.fromJson(Map<String, dynamic> json) {
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
    clientOrderIdFormatExchange = json['client_order_id_format_exchange'];
    exchangeOrderId = json['exchange_order_id'];
    amountOpen = json['amount_open'];
    amountFilled = json['amount_filled'];
    status = (json['status'] == null) ?
      null :
      OrdStatus.fromJson(json['status']);
    timeOrder = (json['time_order'] == null) ?
      null :
      List.listFromJson(json['time_order']);
    errorMessage = json['error_message'];
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
    return json;
  }

  static List<OrderExecutionReport> listFromJson(List<dynamic> json) {
    return json == null ? List<OrderExecutionReport>() : json.map((value) => OrderExecutionReport.fromJson(value)).toList();
  }

  static Map<String, OrderExecutionReport> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OrderExecutionReport>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OrderExecutionReport.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderExecutionReport-objects as value to a dart map
  static Map<String, List<OrderExecutionReport>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<OrderExecutionReport>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = OrderExecutionReport.listFromJson(value);
       });
     }
     return map;
  }
}

