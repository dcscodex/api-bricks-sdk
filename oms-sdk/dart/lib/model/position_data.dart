part of openapi.api;

class PositionData {
  /* Unique position ID */
  String id = null;
  /* The contract for this position. */
  String symbolExchange = null;
  /* The coinapi contract for this position. */
  String symbolCoinapi = null;
  
  num avgEntryPrice = null;
  /* The current position amount in contracts. */
  num quantity = null;
  
  bool isBuy = null;
  /* Unrealised PNL is all the unrealised profit or loss coming from your portfolio's open positions. */
  num unrealisedPnL = null;
  /* 1 / initMarginReq. */
  num leverage = null;
  /* True/false depending on whether you set cross margin on this position. */
  bool crossMargin = null;
  /* Once markPrice reaches this price, this position will be liquidated. */
  num liquidationPrice = null;
  
  String rawData = null;
  PositionData();

  @override
  String toString() {
    return 'PositionData[id=$id, symbolExchange=$symbolExchange, symbolCoinapi=$symbolCoinapi, avgEntryPrice=$avgEntryPrice, quantity=$quantity, isBuy=$isBuy, unrealisedPnL=$unrealisedPnL, leverage=$leverage, crossMargin=$crossMargin, liquidationPrice=$liquidationPrice, rawData=$rawData, ]';
  }

  PositionData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    symbolExchange = json['symbol_exchange'];
    symbolCoinapi = json['symbol_coinapi'];
    avgEntryPrice = json['avg_entry_price'];
    quantity = json['quantity'];
    isBuy = json['is_buy'];
    unrealisedPnL = json['unrealised_pn_l'];
    leverage = json['leverage'];
    crossMargin = json['cross_margin'];
    liquidationPrice = json['liquidation_price'];
    rawData = json['raw_data'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (symbolExchange != null)
      json['symbol_exchange'] = symbolExchange;
    if (symbolCoinapi != null)
      json['symbol_coinapi'] = symbolCoinapi;
    if (avgEntryPrice != null)
      json['avg_entry_price'] = avgEntryPrice;
    if (quantity != null)
      json['quantity'] = quantity;
    if (isBuy != null)
      json['is_buy'] = isBuy;
    if (unrealisedPnL != null)
      json['unrealised_pn_l'] = unrealisedPnL;
    if (leverage != null)
      json['leverage'] = leverage;
    if (crossMargin != null)
      json['cross_margin'] = crossMargin;
    if (liquidationPrice != null)
      json['liquidation_price'] = liquidationPrice;
    if (rawData != null)
      json['raw_data'] = rawData;
    return json;
  }

  static List<PositionData> listFromJson(List<dynamic> json) {
    return json == null ? List<PositionData>() : json.map((value) => PositionData.fromJson(value)).toList();
  }

  static Map<String, PositionData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PositionData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PositionData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PositionData-objects as value to a dart map
  static Map<String, List<PositionData>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PositionData>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PositionData.listFromJson(value);
       });
     }
     return map;
  }
}

