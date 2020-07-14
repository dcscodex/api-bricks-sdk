part of openapi.api;

class PositionData {
  /* Exchange symbol. */
  String symbolIdExchange = null;
  /* CoinAPI symbol. */
  String symbolIdCoinapi = null;
  /* Calculated average price of all fills on this position. */
  num avgEntryPrice = null;
  /* The current position quantity. */
  num quantity = null;
  
  OrdSide side = null;
  //enum sideEnum {  BUY,  SELL,  };{
  /* Unrealised profit or loss (PNL) of this position. */
  num unrealizedPnl = null;
  /* Leverage for this position reported by the exchange. */
  num leverage = null;
  /* Is cross margin mode enable for this position? */
  bool crossMargin = null;
  /* Liquidation price. If mark price will reach this value, the position will be liquidated. */
  num liquidationPrice = null;
  
  Object rawData = null;
  PositionData();

  @override
  String toString() {
    return 'PositionData[symbolIdExchange=$symbolIdExchange, symbolIdCoinapi=$symbolIdCoinapi, avgEntryPrice=$avgEntryPrice, quantity=$quantity, side=$side, unrealizedPnl=$unrealizedPnl, leverage=$leverage, crossMargin=$crossMargin, liquidationPrice=$liquidationPrice, rawData=$rawData, ]';
  }

  PositionData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    symbolIdExchange = json['symbol_id_exchange'];
    symbolIdCoinapi = json['symbol_id_coinapi'];
    avgEntryPrice = json['avg_entry_price'];
    quantity = json['quantity'];
    side = (json['side'] == null) ?
      null :
      OrdSide.fromJson(json['side']);
    unrealizedPnl = json['unrealized_pnl'];
    leverage = json['leverage'];
    crossMargin = json['cross_margin'];
    liquidationPrice = json['liquidation_price'];
    rawData = json['raw_data'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (symbolIdExchange != null)
      json['symbol_id_exchange'] = symbolIdExchange;
    if (symbolIdCoinapi != null)
      json['symbol_id_coinapi'] = symbolIdCoinapi;
    if (avgEntryPrice != null)
      json['avg_entry_price'] = avgEntryPrice;
    if (quantity != null)
      json['quantity'] = quantity;
    if (side != null)
      json['side'] = side;
    if (unrealizedPnl != null)
      json['unrealized_pnl'] = unrealizedPnl;
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

