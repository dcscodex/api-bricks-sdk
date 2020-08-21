part of openapi.api;

class BalanceData {
  /* Exchange currency code. */
  String assetIdExchange = null;
  /* CoinAPI currency code. */
  String assetIdCoinapi = null;
  /* Value of the current total currency balance on the exchange. */
  double balance = null;
  /* Value of the current available currency balance on the exchange that can be used as collateral. */
  double available = null;
  /* Value of the current locked currency balance by the exchange. */
  double locked = null;
  /* Source of the last modification.  */
  String lastUpdatedBy = null;
  //enum lastUpdatedByEnum {  INITIALIZATION,  BALANCE_MANAGER,  EXCHANGE,  };{
  /* Current exchange rate to the USD for the single unit of the currency.  */
  double rateUsd = null;
  /* Value of the current total traded. */
  double traded = null;
  BalanceData();

  @override
  String toString() {
    return 'BalanceData[assetIdExchange=$assetIdExchange, assetIdCoinapi=$assetIdCoinapi, balance=$balance, available=$available, locked=$locked, lastUpdatedBy=$lastUpdatedBy, rateUsd=$rateUsd, traded=$traded, ]';
  }

  BalanceData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assetIdExchange = json['asset_id_exchange'];
    assetIdCoinapi = json['asset_id_coinapi'];
    balance = json['balance'];
    available = json['available'];
    locked = json['locked'];
    lastUpdatedBy = json['last_updated_by'];
    rateUsd = json['rate_usd'];
    traded = json['traded'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assetIdExchange != null)
      json['asset_id_exchange'] = assetIdExchange;
    if (assetIdCoinapi != null)
      json['asset_id_coinapi'] = assetIdCoinapi;
    if (balance != null)
      json['balance'] = balance;
    if (available != null)
      json['available'] = available;
    if (locked != null)
      json['locked'] = locked;
    if (lastUpdatedBy != null)
      json['last_updated_by'] = lastUpdatedBy;
    if (rateUsd != null)
      json['rate_usd'] = rateUsd;
    if (traded != null)
      json['traded'] = traded;
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

