part of openapi.api;

class OrderCancelAllRequest {
  /* Identifier of the exchange from which active orders should be canceled. */
  String exchangeId = null;
  OrderCancelAllRequest();

  @override
  String toString() {
    return 'OrderCancelAllRequest[exchangeId=$exchangeId, ]';
  }

  OrderCancelAllRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    exchangeId = json['exchange_id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (exchangeId != null)
      json['exchange_id'] = exchangeId;
    return json;
  }

  static List<OrderCancelAllRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<OrderCancelAllRequest>() : json.map((value) => OrderCancelAllRequest.fromJson(value)).toList();
  }

  static Map<String, OrderCancelAllRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OrderCancelAllRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OrderCancelAllRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderCancelAllRequest-objects as value to a dart map
  static Map<String, List<OrderCancelAllRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<OrderCancelAllRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = OrderCancelAllRequest.listFromJson(value);
       });
     }
     return map;
  }
}

