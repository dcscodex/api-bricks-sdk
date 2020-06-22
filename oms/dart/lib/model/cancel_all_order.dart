part of openapi.api;

class CancelAllOrder {
  /* Exchange name */
  String exchangeId = null;
  CancelAllOrder();

  @override
  String toString() {
    return 'CancelAllOrder[exchangeId=$exchangeId, ]';
  }

  CancelAllOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    exchangeId = json['exchange_id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (exchangeId != null)
      json['exchange_id'] = exchangeId;
    return json;
  }

  static List<CancelAllOrder> listFromJson(List<dynamic> json) {
    return json == null ? List<CancelAllOrder>() : json.map((value) => CancelAllOrder.fromJson(value)).toList();
  }

  static Map<String, CancelAllOrder> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CancelAllOrder>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CancelAllOrder.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CancelAllOrder-objects as value to a dart map
  static Map<String, List<CancelAllOrder>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CancelAllOrder>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CancelAllOrder.listFromJson(value);
       });
     }
     return map;
  }
}

