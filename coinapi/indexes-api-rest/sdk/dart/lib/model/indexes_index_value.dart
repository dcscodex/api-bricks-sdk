//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IndexesIndexValue {
  /// Returns a new [IndexesIndexValue] instance.
  IndexesIndexValue({
    this.timestamp,
    this.value,
    this.composition = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? value;

  List<IndexesIndexValueComponent>? composition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexesIndexValue &&
    other.timestamp == timestamp &&
    other.value == value &&
    _deepEquality.equals(other.composition, composition);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (composition == null ? 0 : composition!.hashCode);

  @override
  String toString() => 'IndexesIndexValue[timestamp=$timestamp, value=$value, composition=$composition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.composition != null) {
      json[r'composition'] = this.composition;
    } else {
      json[r'composition'] = null;
    }
    return json;
  }

  /// Returns a new [IndexesIndexValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexesIndexValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexesIndexValue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexesIndexValue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexesIndexValue(
        timestamp: mapDateTime(json, r'timestamp', r''),
        value: mapValueOfType<double>(json, r'value'),
        composition: IndexesIndexValueComponent.listFromJson(json[r'composition']),
      );
    }
    return null;
  }

  static List<IndexesIndexValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexesIndexValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexesIndexValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexesIndexValue> mapFromJson(dynamic json) {
    final map = <String, IndexesIndexValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexesIndexValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexesIndexValue-objects as value to a dart map
  static Map<String, List<IndexesIndexValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexesIndexValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexesIndexValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

