part of openapi.api;

class OrderExecutionReportAllOf {
  /* The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. */
  String clientOrderIdFormatExchange = null;
  /* Unique identifier of the order assigned by the exchange or executing system. */
  String exchangeOrderId = null;
  /* Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled` */
  num amountOpen = null;
  /* Total quantity filled. */
  num amountFilled = null;
  /* Calculated average price of all fills on this order. */
  num avgPx = null;
  
  OrdStatus status = null;
  //enum statusEnum {  RECEIVED,  ROUTING,  ROUTED,  NEW,  PENDING_CANCEL,  PARTIALLY_FILLED,  FILLED,  CANCELED,  REJECTED,  };{
  /* Timestamped history of order status changes. */
  List<List<String>> statusHistory = [];
  /* Error message. */
  String errorMessage = null;
  /* Relay fill information on working orders. */
  List<Fills> fills = [];
  OrderExecutionReportAllOf();

  @override
  String toString() {
    return 'OrderExecutionReportAllOf[clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, avgPx=$avgPx, status=$status, statusHistory=$statusHistory, errorMessage=$errorMessage, fills=$fills, ]';
  }

  OrderExecutionReportAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    clientOrderIdFormatExchange = json['client_order_id_format_exchange'];
    exchangeOrderId = json['exchange_order_id'];
    amountOpen = json['amount_open'];
    amountFilled = json['amount_filled'];
    avgPx = json['avg_px'];
    status = (json['status'] == null) ?
      null :
      OrdStatus.fromJson(json['status']);
    statusHistory = (json['status_history'] == null) ?
      null :
      List.listFromJson(json['status_history']);
    errorMessage = json['error_message'];
    fills = (json['fills'] == null) ?
      null :
      Fills.listFromJson(json['fills']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (clientOrderIdFormatExchange != null)
      json['client_order_id_format_exchange'] = clientOrderIdFormatExchange;
    if (exchangeOrderId != null)
      json['exchange_order_id'] = exchangeOrderId;
    if (amountOpen != null)
      json['amount_open'] = amountOpen;
    if (amountFilled != null)
      json['amount_filled'] = amountFilled;
    if (avgPx != null)
      json['avg_px'] = avgPx;
    if (status != null)
      json['status'] = status;
    if (statusHistory != null)
      json['status_history'] = statusHistory;
    if (errorMessage != null)
      json['error_message'] = errorMessage;
    if (fills != null)
      json['fills'] = fills;
    return json;
  }

  static List<OrderExecutionReportAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<OrderExecutionReportAllOf>() : json.map((value) => OrderExecutionReportAllOf.fromJson(value)).toList();
  }

  static Map<String, OrderExecutionReportAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OrderExecutionReportAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OrderExecutionReportAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderExecutionReportAllOf-objects as value to a dart map
  static Map<String, List<OrderExecutionReportAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<OrderExecutionReportAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = OrderExecutionReportAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

