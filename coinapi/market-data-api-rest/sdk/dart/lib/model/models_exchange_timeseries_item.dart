//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsExchangeTimeseriesItem {
  /// Returns a new [ModelsExchangeTimeseriesItem] instance.
  ModelsExchangeTimeseriesItem({
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
    this.symbolIdExchange,
    this.symbolIdCoinapi,
  });

  /// The start time of the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timePeriodStart;

  /// The end time of the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timePeriodEnd;

  /// The time when the price opened.
  DateTime? timeOpen;

  /// The time when the price closed.
  DateTime? timeClose;

  /// The opening price.
  double? priceOpen;

  /// The highest price during the time period.
  double? priceHigh;

  /// The lowest price during the time period.
  double? priceLow;

  /// The closing price.
  double? priceClose;

  /// The total volume traded during the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? volumeTraded;

  /// The number of trades executed during the time period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tradesCount;

  String? symbolIdExchange;

  String? symbolIdCoinapi;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsExchangeTimeseriesItem &&
    other.timePeriodStart == timePeriodStart &&
    other.timePeriodEnd == timePeriodEnd &&
    other.timeOpen == timeOpen &&
    other.timeClose == timeClose &&
    other.priceOpen == priceOpen &&
    other.priceHigh == priceHigh &&
    other.priceLow == priceLow &&
    other.priceClose == priceClose &&
    other.volumeTraded == volumeTraded &&
    other.tradesCount == tradesCount &&
    other.symbolIdExchange == symbolIdExchange &&
    other.symbolIdCoinapi == symbolIdCoinapi;

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
    (tradesCount == null ? 0 : tradesCount!.hashCode) +
    (symbolIdExchange == null ? 0 : symbolIdExchange!.hashCode) +
    (symbolIdCoinapi == null ? 0 : symbolIdCoinapi!.hashCode);

  @override
  String toString() => 'ModelsExchangeTimeseriesItem[timePeriodStart=$timePeriodStart, timePeriodEnd=$timePeriodEnd, timeOpen=$timeOpen, timeClose=$timeClose, priceOpen=$priceOpen, priceHigh=$priceHigh, priceLow=$priceLow, priceClose=$priceClose, volumeTraded=$volumeTraded, tradesCount=$tradesCount, symbolIdExchange=$symbolIdExchange, symbolIdCoinapi=$symbolIdCoinapi]';

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
    if (this.symbolIdExchange != null) {
      json[r'symbol_id_exchange'] = this.symbolIdExchange;
    } else {
      json[r'symbol_id_exchange'] = null;
    }
    if (this.symbolIdCoinapi != null) {
      json[r'symbol_id_coinapi'] = this.symbolIdCoinapi;
    } else {
      json[r'symbol_id_coinapi'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsExchangeTimeseriesItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsExchangeTimeseriesItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsExchangeTimeseriesItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsExchangeTimeseriesItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsExchangeTimeseriesItem(
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
        symbolIdExchange: mapValueOfType<String>(json, r'symbol_id_exchange'),
        symbolIdCoinapi: mapValueOfType<String>(json, r'symbol_id_coinapi'),
      );
    }
    return null;
  }

  static List<ModelsExchangeTimeseriesItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsExchangeTimeseriesItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsExchangeTimeseriesItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsExchangeTimeseriesItem> mapFromJson(dynamic json) {
    final map = <String, ModelsExchangeTimeseriesItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsExchangeTimeseriesItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsExchangeTimeseriesItem-objects as value to a dart map
  static Map<String, List<ModelsExchangeTimeseriesItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsExchangeTimeseriesItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsExchangeTimeseriesItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

