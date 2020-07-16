part of openapi.api;

class OrderCancelSingleRequest {
  /* Exchange identifier used to identify the routing destination. */
  String exchangeId = null;
  /* Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order. */
  String exchangeOrderId = null;
  /* The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order. */
  String clientOrderId = null;
  OrderCancelSingleRequest();

  @override
  String toString() {
    return 'OrderCancelSingleRequest[exchangeId=$exchangeId, exchangeOrderId=$exchangeOrderId, clientOrderId=$clientOrderId, ]';
  }

  OrderCancelSingleRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    exchangeId = json['exchange_id'];
    exchangeOrderId = json['exchange_order_id'];
    clientOrderId = json['client_order_id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (exchangeId != null)
      json['exchange_id'] = exchangeId;
    if (exchangeOrderId != null)
      json['exchange_order_id'] = exchangeOrderId;
    if (clientOrderId != null)
      json['client_order_id'] = clientOrderId;
    return json;
  }

  static List<OrderCancelSingleRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<OrderCancelSingleRequest>() : json.map((value) => OrderCancelSingleRequest.fromJson(value)).toList();
  }

  static Map<String, OrderCancelSingleRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OrderCancelSingleRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OrderCancelSingleRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderCancelSingleRequest-objects as value to a dart map
  static Map<String, List<OrderCancelSingleRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<OrderCancelSingleRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = OrderCancelSingleRequest.listFromJson(value);
       });
     }
     return map;
  }
}

