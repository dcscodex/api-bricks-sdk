part of openapi.api;

class Fills {
  /* Execution time. */
  DateTime time = null;
  /* Execution price. */
  num price = null;
  /* Executed quantity. */
  num amount = null;
  Fills();

  @override
  String toString() {
    return 'Fills[time=$time, price=$price, amount=$amount, ]';
  }

  Fills.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    time = (json['time'] == null) ?
      null :
      DateTime.fromJson(json['time']);
    price = json['price'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (time != null)
      json['time'] = time;
    if (price != null)
      json['price'] = price;
    if (amount != null)
      json['amount'] = amount;
    return json;
  }

  static List<Fills> listFromJson(List<dynamic> json) {
    return json == null ? List<Fills>() : json.map((value) => Fills.fromJson(value)).toList();
  }

  static Map<String, Fills> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Fills>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Fills.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Fills-objects as value to a dart map
  static Map<String, List<Fills>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Fills>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Fills.listFromJson(value);
       });
     }
     return map;
  }
}

