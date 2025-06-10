//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1MetricData {
  /// Returns a new [V1MetricData] instance.
  V1MetricData({
    this.symbolId,
    this.time,
    this.value,
  });

  /// Gets or sets the symbol id.
  String? symbolId;

  /// Gets or sets the time at which the value is recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? time;

  /// Gets or sets the value of the metric.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1MetricData &&
    other.symbolId == symbolId &&
    other.time == time &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbolId == null ? 0 : symbolId!.hashCode) +
    (time == null ? 0 : time!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'V1MetricData[symbolId=$symbolId, time=$time, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.symbolId != null) {
      json[r'symbol_id'] = this.symbolId;
    } else {
      json[r'symbol_id'] = null;
    }
    if (this.time != null) {
      json[r'time'] = this.time!.toUtc().toIso8601String();
    } else {
      json[r'time'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [V1MetricData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1MetricData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1MetricData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1MetricData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1MetricData(
        symbolId: mapValueOfType<String>(json, r'symbol_id'),
        time: mapDateTime(json, r'time', r''),
        value: mapValueOfType<double>(json, r'value'),
      );
    }
    return null;
  }

  static List<V1MetricData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1MetricData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1MetricData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1MetricData> mapFromJson(dynamic json) {
    final map = <String, V1MetricData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1MetricData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1MetricData-objects as value to a dart map
  static Map<String, List<V1MetricData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1MetricData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1MetricData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

