part of openapi.api;

class MessagesOk {
  /* Type of message */
  String type = null;
  /* Exchange name */
  String exchangeId = null;
  /* Message */
  String message = null;
  MessagesOk();

  @override
  String toString() {
    return 'MessagesOk[type=$type, exchangeId=$exchangeId, message=$message, ]';
  }

  MessagesOk.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    exchangeId = json['exchange_id'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (exchangeId != null)
      json['exchange_id'] = exchangeId;
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<MessagesOk> listFromJson(List<dynamic> json) {
    return json == null ? List<MessagesOk>() : json.map((value) => MessagesOk.fromJson(value)).toList();
  }

  static Map<String, MessagesOk> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MessagesOk>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MessagesOk.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MessagesOk-objects as value to a dart map
  static Map<String, List<MessagesOk>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MessagesOk>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MessagesOk.listFromJson(value);
       });
     }
     return map;
  }
}

