part of openapi.api;

class Order {
  /* null */
  String type = null;
  /* Exchange name */
  String exchangeName = null;
  /* Orders array */
  List<OrderData> data = [];
  Order();

  @override
  String toString() {
    return 'Order[type=$type, exchangeName=$exchangeName, data=$data, ]';
  }

  Order.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    exchangeName = json['exchange_name'];
    data = (json['data'] == null) ?
      null :
      OrderData.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (exchangeName != null)
      json['exchange_name'] = exchangeName;
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<Order> listFromJson(List<dynamic> json) {
    return json == null ? List<Order>() : json.map((value) => Order.fromJson(value)).toList();
  }

  static Map<String, Order> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Order>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Order.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Order-objects as value to a dart map
  static Map<String, List<Order>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Order>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Order.listFromJson(value);
       });
     }
     return map;
  }
}

