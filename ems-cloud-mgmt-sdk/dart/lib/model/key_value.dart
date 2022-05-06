//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class KeyValue {
  /// Returns a new [KeyValue] instance.
  KeyValue({
    this.key,
    this.value,
  });

  String key;

  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KeyValue &&
     other.key == key &&
     other.value == value;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (key == null ? 0 : key.hashCode) +
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'KeyValue[key=$key, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (key != null) {
      json[r'key'] = key;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  /// Returns a new [KeyValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KeyValue fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return KeyValue(
        key: mapValueOfType<String>(json, r'key'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<KeyValue> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(KeyValue.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <KeyValue>[];

  static Map<String, KeyValue> mapFromJson(dynamic json) {
    final map = <String, KeyValue>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = KeyValue.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of KeyValue-objects as value to a dart map
  static Map<String, List<KeyValue>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<KeyValue>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = KeyValue.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

