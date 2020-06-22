part of openapi.api;

class MessagesInfo {
  /* Type of message */
  String type = null;
  /* Exchange name */
  String exchangeId = null;
  /* Error message */
  String errorMessage = null;
  MessagesInfo();

  @override
  String toString() {
    return 'MessagesInfo[type=$type, exchangeId=$exchangeId, errorMessage=$errorMessage, ]';
  }

  MessagesInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    exchangeId = json['exchange_id'];
    errorMessage = json['error_message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (exchangeId != null)
      json['exchange_id'] = exchangeId;
    if (errorMessage != null)
      json['error_message'] = errorMessage;
    return json;
  }

  static List<MessagesInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<MessagesInfo>() : json.map((value) => MessagesInfo.fromJson(value)).toList();
  }

  static Map<String, MessagesInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MessagesInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MessagesInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MessagesInfo-objects as value to a dart map
  static Map<String, List<MessagesInfo>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MessagesInfo>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MessagesInfo.listFromJson(value);
       });
     }
     return map;
  }
}

