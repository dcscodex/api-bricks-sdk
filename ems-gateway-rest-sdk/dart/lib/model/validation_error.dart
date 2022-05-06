//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidationError {
  /// Returns a new [ValidationError] instance.
  ValidationError({
    this.type,
    this.title,
    this.status,
    this.traceId,
    this.errors,
  });

  String type;

  String title;

  num status;

  String traceId;

  String errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidationError &&
     other.type == type &&
     other.title == title &&
     other.status == status &&
     other.traceId == traceId &&
     other.errors == errors;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (type == null ? 0 : type.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (traceId == null ? 0 : traceId.hashCode) +
    (errors == null ? 0 : errors.hashCode);

  @override
  String toString() => 'ValidationError[type=$type, title=$title, status=$status, traceId=$traceId, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (traceId != null) {
      json[r'traceId'] = traceId;
    }
    if (errors != null) {
      json[r'errors'] = errors;
    }
    return json;
  }

  /// Returns a new [ValidationError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidationError fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ValidationError(
        type: mapValueOfType<String>(json, r'type'),
        title: mapValueOfType<String>(json, r'title'),
        status: json[r'status'] == null
          ? null
          : num.parse(json[r'status'].toString()),
        traceId: mapValueOfType<String>(json, r'traceId'),
        errors: mapValueOfType<String>(json, r'errors'),
      );
    }
    return null;
  }

  static List<ValidationError> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ValidationError.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ValidationError>[];

  static Map<String, ValidationError> mapFromJson(dynamic json) {
    final map = <String, ValidationError>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ValidationError.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ValidationError-objects as value to a dart map
  static Map<String, List<ValidationError>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ValidationError>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ValidationError.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

