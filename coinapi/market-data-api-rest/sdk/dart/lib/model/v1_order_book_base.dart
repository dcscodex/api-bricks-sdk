//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1OrderBookBase {
  /// Returns a new [V1OrderBookBase] instance.
  V1OrderBookBase({
    this.symbolId,
    this.timeExchange,
    this.timeCoinapi,
    this.asks,
    this.bids,
  });

  /// The symbol identifier.
  String? symbolId;

  /// The exchange time of the order book.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timeExchange;

  /// The CoinAPI time when the order book was received.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timeCoinapi;

  /// The asks made by market makers.
  Object? asks;

  /// The bids made by market makers.
  Object? bids;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1OrderBookBase &&
    other.symbolId == symbolId &&
    other.timeExchange == timeExchange &&
    other.timeCoinapi == timeCoinapi &&
    other.asks == asks &&
    other.bids == bids;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbolId == null ? 0 : symbolId!.hashCode) +
    (timeExchange == null ? 0 : timeExchange!.hashCode) +
    (timeCoinapi == null ? 0 : timeCoinapi!.hashCode) +
    (asks == null ? 0 : asks!.hashCode) +
    (bids == null ? 0 : bids!.hashCode);

  @override
  String toString() => 'V1OrderBookBase[symbolId=$symbolId, timeExchange=$timeExchange, timeCoinapi=$timeCoinapi, asks=$asks, bids=$bids]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.symbolId != null) {
      json[r'symbol_id'] = this.symbolId;
    } else {
      json[r'symbol_id'] = null;
    }
    if (this.timeExchange != null) {
      json[r'time_exchange'] = this.timeExchange!.toUtc().toIso8601String();
    } else {
      json[r'time_exchange'] = null;
    }
    if (this.timeCoinapi != null) {
      json[r'time_coinapi'] = this.timeCoinapi!.toUtc().toIso8601String();
    } else {
      json[r'time_coinapi'] = null;
    }
    if (this.asks != null) {
      json[r'asks'] = this.asks;
    } else {
      json[r'asks'] = null;
    }
    if (this.bids != null) {
      json[r'bids'] = this.bids;
    } else {
      json[r'bids'] = null;
    }
    return json;
  }

  /// Returns a new [V1OrderBookBase] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1OrderBookBase? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1OrderBookBase[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1OrderBookBase[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1OrderBookBase(
        symbolId: mapValueOfType<String>(json, r'symbol_id'),
        timeExchange: mapDateTime(json, r'time_exchange', r''),
        timeCoinapi: mapDateTime(json, r'time_coinapi', r''),
        asks: mapValueOfType<Object>(json, r'asks'),
        bids: mapValueOfType<Object>(json, r'bids'),
      );
    }
    return null;
  }

  static List<V1OrderBookBase> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1OrderBookBase>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1OrderBookBase.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1OrderBookBase> mapFromJson(dynamic json) {
    final map = <String, V1OrderBookBase>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1OrderBookBase.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1OrderBookBase-objects as value to a dart map
  static Map<String, List<V1OrderBookBase>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1OrderBookBase>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1OrderBookBase.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

