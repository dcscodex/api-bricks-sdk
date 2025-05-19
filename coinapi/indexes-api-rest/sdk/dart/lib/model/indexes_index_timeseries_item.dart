//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IndexesIndexTimeseriesItem {
  /// Returns a new [IndexesIndexTimeseriesItem] instance.
  IndexesIndexTimeseriesItem({
    this.timePeriodStart,
    this.timePeriodEnd,
    this.timeOpen,
    this.timeClose,
    this.valueOpen,
    this.valueHigh,
    this.valueLow,
    this.valueClose,
    this.valueCount,
  });

  /// Gets or sets the start time of the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timePeriodStart;

  /// Gets or sets the end time of the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timePeriodEnd;

  /// Gets or sets the time when the value opened.
  DateTime? timeOpen;

  /// Gets or sets the time when the value closed.
  DateTime? timeClose;

  /// Gets or sets the opening value.
  double? valueOpen;

  /// Gets or sets the highest value during the time period.
  double? valueHigh;

  /// Gets or sets the lowest value during the time period.
  double? valueLow;

  /// Gets or sets the closing value.
  double? valueClose;

  /// Gets or sets the number of values during the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? valueCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexesIndexTimeseriesItem &&
    other.timePeriodStart == timePeriodStart &&
    other.timePeriodEnd == timePeriodEnd &&
    other.timeOpen == timeOpen &&
    other.timeClose == timeClose &&
    other.valueOpen == valueOpen &&
    other.valueHigh == valueHigh &&
    other.valueLow == valueLow &&
    other.valueClose == valueClose &&
    other.valueCount == valueCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timePeriodStart == null ? 0 : timePeriodStart!.hashCode) +
    (timePeriodEnd == null ? 0 : timePeriodEnd!.hashCode) +
    (timeOpen == null ? 0 : timeOpen!.hashCode) +
    (timeClose == null ? 0 : timeClose!.hashCode) +
    (valueOpen == null ? 0 : valueOpen!.hashCode) +
    (valueHigh == null ? 0 : valueHigh!.hashCode) +
    (valueLow == null ? 0 : valueLow!.hashCode) +
    (valueClose == null ? 0 : valueClose!.hashCode) +
    (valueCount == null ? 0 : valueCount!.hashCode);

  @override
  String toString() => 'IndexesIndexTimeseriesItem[timePeriodStart=$timePeriodStart, timePeriodEnd=$timePeriodEnd, timeOpen=$timeOpen, timeClose=$timeClose, valueOpen=$valueOpen, valueHigh=$valueHigh, valueLow=$valueLow, valueClose=$valueClose, valueCount=$valueCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.timePeriodStart != null) {
      json[r'time_period_start'] = this.timePeriodStart!.toUtc().toIso8601String();
    } else {
      json[r'time_period_start'] = null;
    }
    if (this.timePeriodEnd != null) {
      json[r'time_period_end'] = this.timePeriodEnd!.toUtc().toIso8601String();
    } else {
      json[r'time_period_end'] = null;
    }
    if (this.timeOpen != null) {
      json[r'time_open'] = this.timeOpen!.toUtc().toIso8601String();
    } else {
      json[r'time_open'] = null;
    }
    if (this.timeClose != null) {
      json[r'time_close'] = this.timeClose!.toUtc().toIso8601String();
    } else {
      json[r'time_close'] = null;
    }
    if (this.valueOpen != null) {
      json[r'value_open'] = this.valueOpen;
    } else {
      json[r'value_open'] = null;
    }
    if (this.valueHigh != null) {
      json[r'value_high'] = this.valueHigh;
    } else {
      json[r'value_high'] = null;
    }
    if (this.valueLow != null) {
      json[r'value_low'] = this.valueLow;
    } else {
      json[r'value_low'] = null;
    }
    if (this.valueClose != null) {
      json[r'value_close'] = this.valueClose;
    } else {
      json[r'value_close'] = null;
    }
    if (this.valueCount != null) {
      json[r'value_count'] = this.valueCount;
    } else {
      json[r'value_count'] = null;
    }
    return json;
  }

  /// Returns a new [IndexesIndexTimeseriesItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexesIndexTimeseriesItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexesIndexTimeseriesItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexesIndexTimeseriesItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexesIndexTimeseriesItem(
        timePeriodStart: mapDateTime(json, r'time_period_start', r''),
        timePeriodEnd: mapDateTime(json, r'time_period_end', r''),
        timeOpen: mapDateTime(json, r'time_open', r''),
        timeClose: mapDateTime(json, r'time_close', r''),
        valueOpen: mapValueOfType<double>(json, r'value_open'),
        valueHigh: mapValueOfType<double>(json, r'value_high'),
        valueLow: mapValueOfType<double>(json, r'value_low'),
        valueClose: mapValueOfType<double>(json, r'value_close'),
        valueCount: mapValueOfType<int>(json, r'value_count'),
      );
    }
    return null;
  }

  static List<IndexesIndexTimeseriesItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexesIndexTimeseriesItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexesIndexTimeseriesItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexesIndexTimeseriesItem> mapFromJson(dynamic json) {
    final map = <String, IndexesIndexTimeseriesItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexesIndexTimeseriesItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexesIndexTimeseriesItem-objects as value to a dart map
  static Map<String, List<IndexesIndexTimeseriesItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexesIndexTimeseriesItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexesIndexTimeseriesItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

