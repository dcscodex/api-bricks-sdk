part of openapi.api;

class BalanceData {
  /* symbol_exchange */
  String id = null;
  /* Currency code. */
  String symbolExchange = null;
  /* CoinAPI currency code. */
  String symbolCoinapi = null;
  /* The current balance. */
  double balance = null;
  /* The amount that is available to trade. */
  double available = null;
  /* Blocked funds. */
  double locked = null;
  /* Source of last modification.  */
  String updateOrigin = null;
  //enum updateOriginEnum {  INITIALIZATION,  BALANCE_MANAGER,  EXCHANGE,  };{
  BalanceData();

  @override
  String toString() {
    return 'BalanceData[id=$id, symbolExchange=$symbolExchange, symbolCoinapi=$symbolCoinapi, balance=$balance, available=$available, locked=$locked, updateOrigin=$updateOrigin, ]';
  }

  BalanceData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    symbolExchange = json['symbol_exchange'];
    symbolCoinapi = json['symbol_coinapi'];
    balance = json['balance'];
    available = json['available'];
    locked = json['locked'];
    updateOrigin = json['update_origin'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (symbolExchange != null)
      json['symbol_exchange'] = symbolExchange;
    if (symbolCoinapi != null)
      json['symbol_coinapi'] = symbolCoinapi;
    if (balance != null)
      json['balance'] = balance;
    if (available != null)
      json['available'] = available;
    if (locked != null)
      json['locked'] = locked;
    if (updateOrigin != null)
      json['update_origin'] = updateOrigin;
    return json;
  }

  static List<BalanceData> listFromJson(List<dynamic> json) {
    return json == null ? List<BalanceData>() : json.map((value) => BalanceData.fromJson(value)).toList();
  }

  static Map<String, BalanceData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BalanceData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BalanceData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BalanceData-objects as value to a dart map
  static Map<String, List<BalanceData>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<BalanceData>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = BalanceData.listFromJson(value);
       });
     }
     return map;
  }
}

