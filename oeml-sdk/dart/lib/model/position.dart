part of openapi.api;

class Position {
  /* Exchange identifier used to identify the routing destination. */
  String exchangeId = null;
  
  List<PositionData> data = [];
  Position();

  @override
  String toString() {
    return 'Position[exchangeId=$exchangeId, data=$data, ]';
  }

  Position.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    exchangeId = json['exchange_id'];
    data = (json['data'] == null) ?
      null :
      PositionData.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (exchangeId != null)
      json['exchange_id'] = exchangeId;
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<Position> listFromJson(List<dynamic> json) {
    return json == null ? List<Position>() : json.map((value) => Position.fromJson(value)).toList();
  }

  static Map<String, Position> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Position>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Position.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Position-objects as value to a dart map
  static Map<String, List<Position>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Position>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Position.listFromJson(value);
       });
     }
     return map;
  }
}

