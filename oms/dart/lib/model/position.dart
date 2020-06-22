part of openapi.api;

class Position {
  /* Result type. */
  String type = null;
  /* Name of exchange. */
  String exchangeName = null;
  
  List<PositionData> data = [];
  Position();

  @override
  String toString() {
    return 'Position[type=$type, exchangeName=$exchangeName, data=$data, ]';
  }

  Position.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    exchangeName = json['exchange_name'];
    data = (json['data'] == null) ?
      null :
      PositionData.listFromJson(json['data']);
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

