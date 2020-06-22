part of openapi.api;

class Messages {
  /* Type of message */
  String type = null;
  /* Exchange name */
  String exchangeId = null;
  /* Message */
  String message = null;
  Messages();

  @override
  String toString() {
    return 'Messages[type=$type, exchangeId=$exchangeId, message=$message, ]';
  }

  Messages.fromJson(Map<String, dynamic> json) {
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

  static List<Messages> listFromJson(List<dynamic> json) {
    return json == null ? List<Messages>() : json.map((value) => Messages.fromJson(value)).toList();
  }

  static Map<String, Messages> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Messages>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Messages.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Messages-objects as value to a dart map
  static Map<String, List<Messages>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Messages>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Messages.listFromJson(value);
       });
     }
     return map;
  }
}

