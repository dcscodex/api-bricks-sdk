//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1TimeseriesPeriod {
  /// Returns a new [V1TimeseriesPeriod] instance.
  V1TimeseriesPeriod({
    this.periodId,
    this.lengthSeconds,
    this.lengthMonths,
    this.unitCount,
    this.unitName,
    this.displayName,
  });

  /// The period ID.
  String? periodId;

  /// The length of the period in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lengthSeconds;

  /// The length of the period in months.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lengthMonths;

  /// The unit count.
  int? unitCount;

  /// The unit name.
  String? unitName;

  /// The display name of the timeseries period.
  String? displayName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1TimeseriesPeriod &&
    other.periodId == periodId &&
    other.lengthSeconds == lengthSeconds &&
    other.lengthMonths == lengthMonths &&
    other.unitCount == unitCount &&
    other.unitName == unitName &&
    other.displayName == displayName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (periodId == null ? 0 : periodId!.hashCode) +
    (lengthSeconds == null ? 0 : lengthSeconds!.hashCode) +
    (lengthMonths == null ? 0 : lengthMonths!.hashCode) +
    (unitCount == null ? 0 : unitCount!.hashCode) +
    (unitName == null ? 0 : unitName!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode);

  @override
  String toString() => 'V1TimeseriesPeriod[periodId=$periodId, lengthSeconds=$lengthSeconds, lengthMonths=$lengthMonths, unitCount=$unitCount, unitName=$unitName, displayName=$displayName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.periodId != null) {
      json[r'period_id'] = this.periodId;
    } else {
      json[r'period_id'] = null;
    }
    if (this.lengthSeconds != null) {
      json[r'length_seconds'] = this.lengthSeconds;
    } else {
      json[r'length_seconds'] = null;
    }
    if (this.lengthMonths != null) {
      json[r'length_months'] = this.lengthMonths;
    } else {
      json[r'length_months'] = null;
    }
    if (this.unitCount != null) {
      json[r'unit_count'] = this.unitCount;
    } else {
      json[r'unit_count'] = null;
    }
    if (this.unitName != null) {
      json[r'unit_name'] = this.unitName;
    } else {
      json[r'unit_name'] = null;
    }
    if (this.displayName != null) {
      json[r'display_name'] = this.displayName;
    } else {
      json[r'display_name'] = null;
    }
    return json;
  }

  /// Returns a new [V1TimeseriesPeriod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1TimeseriesPeriod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1TimeseriesPeriod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1TimeseriesPeriod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1TimeseriesPeriod(
        periodId: mapValueOfType<String>(json, r'period_id'),
        lengthSeconds: mapValueOfType<int>(json, r'length_seconds'),
        lengthMonths: mapValueOfType<int>(json, r'length_months'),
        unitCount: mapValueOfType<int>(json, r'unit_count'),
        unitName: mapValueOfType<String>(json, r'unit_name'),
        displayName: mapValueOfType<String>(json, r'display_name'),
      );
    }
    return null;
  }

  static List<V1TimeseriesPeriod> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1TimeseriesPeriod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1TimeseriesPeriod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1TimeseriesPeriod> mapFromJson(dynamic json) {
    final map = <String, V1TimeseriesPeriod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1TimeseriesPeriod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1TimeseriesPeriod-objects as value to a dart map
  static Map<String, List<V1TimeseriesPeriod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1TimeseriesPeriod>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1TimeseriesPeriod.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

