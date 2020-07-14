part of openapi.api;

class Balance {
  /* Exchange identifier used to identify the routing destination. */
  String exchangeId = null;
  
  List<BalanceData> data = [];
  Balance();

  @override
  String toString() {
    return 'Balance[exchangeId=$exchangeId, data=$data, ]';
  }

  Balance.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    exchangeId = json['exchange_id'];
    data = (json['data'] == null) ?
      null :
      BalanceData.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (exchangeId != null)
      json['exchange_id'] = exchangeId;
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

