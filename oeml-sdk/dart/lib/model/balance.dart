part of openapi.api;

class Balance {
  /* Result type. */
  String type = null;
  /* Exchange name. */
  String exchangeName = null;
  
  List<BalanceData> data = [];
  Balance();

  @override
  String toString() {
    return 'Balance[type=$type, exchangeName=$exchangeName, data=$data, ]';
  }

  Balance.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    exchangeName = json['exchange_name'];
    data = (json['data'] == null) ?
      null :
      BalanceData.listFromJson(json['data']);
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

  static List<Balance> listFromJson(List<dynamic> json) {
    return json == null ? List<Balance>() : json.map((value) => Balance.fromJson(value)).toList();
  }

  static Map<String, Balance> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Balance>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Balance.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Balance-objects as value to a dart map
  static Map<String, List<Balance>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Balance>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Balance.listFromJson(value);
       });
     }
     return map;
  }
}

