part of openapi.api;

class Message {
  /* Type of message. */
  String type = null;
  
  Severity severity = null;
  //enum severityEnum {  INFO,  WARNING,  ERROR,  };{
  /* If the message related to exchange, then the identifier of the exchange will be provided. */
  String exchangeId = null;
  /* Message text. */
  String message = null;
  Message();

  @override
  String toString() {
    return 'Message[type=$type, severity=$severity, exchangeId=$exchangeId, message=$message, ]';
  }

  Message.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    severity = (json['severity'] == null) ?
      null :
      Severity.fromJson(json['severity']);
    exchangeId = json['exchange_id'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (severity != null)
      json['severity'] = severity;
    if (exchangeId != null)
      json['exchange_id'] = exchangeId;
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<Message> listFromJson(List<dynamic> json) {
    return json == null ? List<Message>() : json.map((value) => Message.fromJson(value)).toList();
  }

  static Map<String, Message> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Message>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Message.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Message-objects as value to a dart map
  static Map<String, List<Message>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Message>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Message.listFromJson(value);
       });
     }
     return map;
  }
}

