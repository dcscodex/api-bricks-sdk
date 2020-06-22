part of openapi.api;

class CreateOrder400 {
  
  String type = null;
  
  String title = null;
  
  num status = null;
  
  String traceId = null;
  
  String errors = null;
  CreateOrder400();

  @override
  String toString() {
    return 'CreateOrder400[type=$type, title=$title, status=$status, traceId=$traceId, errors=$errors, ]';
  }

  CreateOrder400.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    title = json['title'];
    status = json['status'];
    traceId = json['traceId'];
    errors = json['errors'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (title != null)
      json['title'] = title;
    if (status != null)
      json['status'] = status;
    if (traceId != null)
      json['traceId'] = traceId;
    if (errors != null)
      json['errors'] = errors;
    return json;
  }

  static List<CreateOrder400> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateOrder400>() : json.map((value) => CreateOrder400.fromJson(value)).toList();
  }

  static Map<String, CreateOrder400> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateOrder400>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateOrder400.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateOrder400-objects as value to a dart map
  static Map<String, List<CreateOrder400>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateOrder400>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateOrder400.listFromJson(value);
       });
     }
     return map;
  }
}

