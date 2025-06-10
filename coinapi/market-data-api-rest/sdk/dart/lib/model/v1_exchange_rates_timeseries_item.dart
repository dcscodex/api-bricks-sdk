//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1ExchangeRatesTimeseriesItem {
  /// Returns a new [V1ExchangeRatesTimeseriesItem] instance.
  V1ExchangeRatesTimeseriesItem({
    this.timePeriodStart,
    this.timePeriodEnd,
    this.timeOpen,
    this.timeClose,
    this.rateOpen,
    this.rateHigh,
    this.rateLow,
    this.rateClose,
  });

  /// Gets or sets the start time of the period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timePeriodStart;

  /// Gets or sets the end time of the period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timePeriodEnd;

  /// Gets or sets the opening time of the period.
  DateTime? timeOpen;

  /// Gets or sets the closing time of the period.
  DateTime? timeClose;

  /// Gets or sets the opening rate for the period.
  double? rateOpen;

  /// Gets or sets the highest rate for the period.
  double? rateHigh;

  /// Gets or sets the lowest rate for the period.
  double? rateLow;

  /// Gets or sets the closing rate for the period.
  double? rateClose;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ExchangeRatesTimeseriesItem &&
    other.timePeriodStart == timePeriodStart &&
    other.timePeriodEnd == timePeriodEnd &&
    other.timeOpen == timeOpen &&
    other.timeClose == timeClose &&
    other.rateOpen == rateOpen &&
    other.rateHigh == rateHigh &&
    other.rateLow == rateLow &&
    other.rateClose == rateClose;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timePeriodStart == null ? 0 : timePeriodStart!.hashCode) +
    (timePeriodEnd == null ? 0 : timePeriodEnd!.hashCode) +
    (timeOpen == null ? 0 : timeOpen!.hashCode) +
    (timeClose == null ? 0 : timeClose!.hashCode) +
    (rateOpen == null ? 0 : rateOpen!.hashCode) +
    (rateHigh == null ? 0 : rateHigh!.hashCode) +
    (rateLow == null ? 0 : rateLow!.hashCode) +
    (rateClose == null ? 0 : rateClose!.hashCode);

  @override
  String toString() => 'V1ExchangeRatesTimeseriesItem[timePeriodStart=$timePeriodStart, timePeriodEnd=$timePeriodEnd, timeOpen=$timeOpen, timeClose=$timeClose, rateOpen=$rateOpen, rateHigh=$rateHigh, rateLow=$rateLow, rateClose=$rateClose]';

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
    if (this.rateOpen != null) {
      json[r'rate_open'] = this.rateOpen;
    } else {
      json[r'rate_open'] = null;
    }
    if (this.rateHigh != null) {
      json[r'rate_high'] = this.rateHigh;
    } else {
      json[r'rate_high'] = null;
    }
    if (this.rateLow != null) {
      json[r'rate_low'] = this.rateLow;
    } else {
      json[r'rate_low'] = null;
    }
    if (this.rateClose != null) {
      json[r'rate_close'] = this.rateClose;
    } else {
      json[r'rate_close'] = null;
    }
    return json;
  }

  /// Returns a new [V1ExchangeRatesTimeseriesItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1ExchangeRatesTimeseriesItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1ExchangeRatesTimeseriesItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1ExchangeRatesTimeseriesItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1ExchangeRatesTimeseriesItem(
        timePeriodStart: mapDateTime(json, r'time_period_start', r''),
        timePeriodEnd: mapDateTime(json, r'time_period_end', r''),
        timeOpen: mapDateTime(json, r'time_open', r''),
        timeClose: mapDateTime(json, r'time_close', r''),
        rateOpen: mapValueOfType<double>(json, r'rate_open'),
        rateHigh: mapValueOfType<double>(json, r'rate_high'),
        rateLow: mapValueOfType<double>(json, r'rate_low'),
        rateClose: mapValueOfType<double>(json, r'rate_close'),
      );
    }
    return null;
  }

  static List<V1ExchangeRatesTimeseriesItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1ExchangeRatesTimeseriesItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1ExchangeRatesTimeseriesItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1ExchangeRatesTimeseriesItem> mapFromJson(dynamic json) {
    final map = <String, V1ExchangeRatesTimeseriesItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1ExchangeRatesTimeseriesItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1ExchangeRatesTimeseriesItem-objects as value to a dart map
  static Map<String, List<V1ExchangeRatesTimeseriesItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1ExchangeRatesTimeseriesItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1ExchangeRatesTimeseriesItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

