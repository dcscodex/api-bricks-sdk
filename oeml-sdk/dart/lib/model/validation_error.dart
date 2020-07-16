part of openapi.api;

class ValidationError {
  
  String type = null;
  
  String title = null;
  
  num status = null;
  
  String traceId = null;
  
  String errors = null;
  ValidationError();

  @override
  String toString() {
    return 'ValidationError[type=$type, title=$title, status=$status, traceId=$traceId, errors=$errors, ]';
  }

  ValidationError.fromJson(Map<String, dynamic> json) {
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

  static List<ValidationError> listFromJson(List<dynamic> json) {
    return json == null ? List<ValidationError>() : json.map((value) => ValidationError.fromJson(value)).toList();
  }

  static Map<String, ValidationError> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ValidationError>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ValidationError.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ValidationError-objects as value to a dart map
  static Map<String, List<ValidationError>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ValidationError>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ValidationError.listFromJson(value);
       });
     }
     return map;
  }
}

