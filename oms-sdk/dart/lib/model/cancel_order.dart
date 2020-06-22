part of openapi.api;

class CancelOrder {
  /* Exchange name */
  String exchangeId = null;
  /* Order Id */
  String exchangeOrderId = null;
  /* Client order Id */
  String clientOrderId = null;
  CancelOrder();

  @override
  String toString() {
    return 'CancelOrder[exchangeId=$exchangeId, exchangeOrderId=$exchangeOrderId, clientOrderId=$clientOrderId, ]';
  }

  CancelOrder.fromJson(Map<String, dynamic> json) {
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

  static List<CancelOrder> listFromJson(List<dynamic> json) {
    return json == null ? List<CancelOrder>() : json.map((value) => CancelOrder.fromJson(value)).toList();
  }

  static Map<String, CancelOrder> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CancelOrder>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CancelOrder.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CancelOrder-objects as value to a dart map
  static Map<String, List<CancelOrder>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CancelOrder>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CancelOrder.listFromJson(value);
       });
     }
     return map;
  }
}

