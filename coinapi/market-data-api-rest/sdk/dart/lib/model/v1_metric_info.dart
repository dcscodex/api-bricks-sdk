//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1MetricInfo {
  /// Returns a new [V1MetricInfo] instance.
  V1MetricInfo({
    this.metricId,
    this.description,
    this.sourceId,
  });

  /// Gets or sets the metric identifier.
  String? metricId;

  /// Gets or sets the description of the metric.
  String? description;

  /// Gets or sets the source identifier of the metric.
  String? sourceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1MetricInfo &&
    other.metricId == metricId &&
    other.description == description &&
    other.sourceId == sourceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (metricId == null ? 0 : metricId!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (sourceId == null ? 0 : sourceId!.hashCode);

  @override
  String toString() => 'V1MetricInfo[metricId=$metricId, description=$description, sourceId=$sourceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.metricId != null) {
      json[r'metric_id'] = this.metricId;
    } else {
      json[r'metric_id'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.sourceId != null) {
      json[r'source_id'] = this.sourceId;
    } else {
      json[r'source_id'] = null;
    }
    return json;
  }

  /// Returns a new [V1MetricInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1MetricInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1MetricInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1MetricInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1MetricInfo(
        metricId: mapValueOfType<String>(json, r'metric_id'),
        description: mapValueOfType<String>(json, r'description'),
        sourceId: mapValueOfType<String>(json, r'source_id'),
      );
    }
    return null;
  }

  static List<V1MetricInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1MetricInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1MetricInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1MetricInfo> mapFromJson(dynamic json) {
    final map = <String, V1MetricInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1MetricInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1MetricInfo-objects as value to a dart map
  static Map<String, List<V1MetricInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1MetricInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1MetricInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

