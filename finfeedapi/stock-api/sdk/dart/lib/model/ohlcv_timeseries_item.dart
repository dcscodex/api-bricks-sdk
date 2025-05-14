//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OHLCVTimeseriesItem {
  /// Returns a new [OHLCVTimeseriesItem] instance.
  OHLCVTimeseriesItem({
    this.timePeriodStart,
    this.timePeriodEnd,
    this.timeOpen,
    this.timeClose,
    this.priceOpen,
    this.priceHigh,
    this.priceLow,
    this.priceClose,
    this.volumeTraded,
    this.tradesCount,
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

  /// Gets or sets the time when the price opened.
  DateTime? timeOpen;

  /// Gets or sets the time when the price closed.
  DateTime? timeClose;

  /// Gets or sets the opening price.
  double? priceOpen;

  /// Gets or sets the highest price during the time period.
  double? priceHigh;

  /// Gets or sets the lowest price during the time period.
  double? priceLow;

  /// Gets or sets the closing price.
  double? priceClose;

  /// Gets or sets the total volume traded during the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? volumeTraded;

  /// Gets or sets the number of trades executed during the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tradesCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OHLCVTimeseriesItem &&
    other.timePeriodStart == timePeriodStart &&
    other.timePeriodEnd == timePeriodEnd &&
    other.timeOpen == timeOpen &&
    other.timeClose == timeClose &&
    other.priceOpen == priceOpen &&
    other.priceHigh == priceHigh &&
    other.priceLow == priceLow &&
    other.priceClose == priceClose &&
    other.volumeTraded == volumeTraded &&
    other.tradesCount == tradesCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timePeriodStart == null ? 0 : timePeriodStart!.hashCode) +
    (timePeriodEnd == null ? 0 : timePeriodEnd!.hashCode) +
    (timeOpen == null ? 0 : timeOpen!.hashCode) +
    (timeClose == null ? 0 : timeClose!.hashCode) +
    (priceOpen == null ? 0 : priceOpen!.hashCode) +
    (priceHigh == null ? 0 : priceHigh!.hashCode) +
    (priceLow == null ? 0 : priceLow!.hashCode) +
    (priceClose == null ? 0 : priceClose!.hashCode) +
    (volumeTraded == null ? 0 : volumeTraded!.hashCode) +
    (tradesCount == null ? 0 : tradesCount!.hashCode);

  @override
  String toString() => 'OHLCVTimeseriesItem[timePeriodStart=$timePeriodStart, timePeriodEnd=$timePeriodEnd, timeOpen=$timeOpen, timeClose=$timeClose, priceOpen=$priceOpen, priceHigh=$priceHigh, priceLow=$priceLow, priceClose=$priceClose, volumeTraded=$volumeTraded, tradesCount=$tradesCount]';

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
    if (this.priceOpen != null) {
      json[r'price_open'] = this.priceOpen;
    } else {
      json[r'price_open'] = null;
    }
    if (this.priceHigh != null) {
      json[r'price_high'] = this.priceHigh;
    } else {
      json[r'price_high'] = null;
    }
    if (this.priceLow != null) {
      json[r'price_low'] = this.priceLow;
    } else {
      json[r'price_low'] = null;
    }
    if (this.priceClose != null) {
      json[r'price_close'] = this.priceClose;
    } else {
      json[r'price_close'] = null;
    }
    if (this.volumeTraded != null) {
      json[r'volume_traded'] = this.volumeTraded;
    } else {
      json[r'volume_traded'] = null;
    }
    if (this.tradesCount != null) {
      json[r'trades_count'] = this.tradesCount;
    } else {
      json[r'trades_count'] = null;
    }
    return json;
  }

  /// Returns a new [OHLCVTimeseriesItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OHLCVTimeseriesItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OHLCVTimeseriesItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OHLCVTimeseriesItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OHLCVTimeseriesItem(
        timePeriodStart: mapDateTime(json, r'time_period_start', r''),
        timePeriodEnd: mapDateTime(json, r'time_period_end', r''),
        timeOpen: mapDateTime(json, r'time_open', r''),
        timeClose: mapDateTime(json, r'time_close', r''),
        priceOpen: mapValueOfType<double>(json, r'price_open'),
        priceHigh: mapValueOfType<double>(json, r'price_high'),
        priceLow: mapValueOfType<double>(json, r'price_low'),
        priceClose: mapValueOfType<double>(json, r'price_close'),
        volumeTraded: mapValueOfType<double>(json, r'volume_traded'),
        tradesCount: mapValueOfType<int>(json, r'trades_count'),
      );
    }
    return null;
  }

  static List<OHLCVTimeseriesItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OHLCVTimeseriesItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OHLCVTimeseriesItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OHLCVTimeseriesItem> mapFromJson(dynamic json) {
    final map = <String, OHLCVTimeseriesItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OHLCVTimeseriesItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OHLCVTimeseriesItem-objects as value to a dart map
  static Map<String, List<OHLCVTimeseriesItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OHLCVTimeseriesItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OHLCVTimeseriesItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

