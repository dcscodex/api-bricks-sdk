//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1OrderBookDepth {
  /// Returns a new [V1OrderBookDepth] instance.
  V1OrderBookDepth({
    this.symbolId,
    this.timeExchange,
    this.timeCoinapi,
    this.askLevels,
    this.bidLevels,
    this.askDepth,
    this.bidDepth,
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

  /// The number of ask levels in the order book.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? askLevels;

  /// The number of bid levels in the order book.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bidLevels;

  /// The depth of the ask side of the order book.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? askDepth;

  /// The depth of the bid side of the order book.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? bidDepth;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1OrderBookDepth &&
    other.symbolId == symbolId &&
    other.timeExchange == timeExchange &&
    other.timeCoinapi == timeCoinapi &&
    other.askLevels == askLevels &&
    other.bidLevels == bidLevels &&
    other.askDepth == askDepth &&
    other.bidDepth == bidDepth;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbolId == null ? 0 : symbolId!.hashCode) +
    (timeExchange == null ? 0 : timeExchange!.hashCode) +
    (timeCoinapi == null ? 0 : timeCoinapi!.hashCode) +
    (askLevels == null ? 0 : askLevels!.hashCode) +
    (bidLevels == null ? 0 : bidLevels!.hashCode) +
    (askDepth == null ? 0 : askDepth!.hashCode) +
    (bidDepth == null ? 0 : bidDepth!.hashCode);

  @override
  String toString() => 'V1OrderBookDepth[symbolId=$symbolId, timeExchange=$timeExchange, timeCoinapi=$timeCoinapi, askLevels=$askLevels, bidLevels=$bidLevels, askDepth=$askDepth, bidDepth=$bidDepth]';

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
    if (this.askLevels != null) {
      json[r'ask_levels'] = this.askLevels;
    } else {
      json[r'ask_levels'] = null;
    }
    if (this.bidLevels != null) {
      json[r'bid_levels'] = this.bidLevels;
    } else {
      json[r'bid_levels'] = null;
    }
    if (this.askDepth != null) {
      json[r'ask_depth'] = this.askDepth;
    } else {
      json[r'ask_depth'] = null;
    }
    if (this.bidDepth != null) {
      json[r'bid_depth'] = this.bidDepth;
    } else {
      json[r'bid_depth'] = null;
    }
    return json;
  }

  /// Returns a new [V1OrderBookDepth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1OrderBookDepth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1OrderBookDepth[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1OrderBookDepth[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1OrderBookDepth(
        symbolId: mapValueOfType<String>(json, r'symbol_id'),
        timeExchange: mapDateTime(json, r'time_exchange', r''),
        timeCoinapi: mapDateTime(json, r'time_coinapi', r''),
        askLevels: mapValueOfType<int>(json, r'ask_levels'),
        bidLevels: mapValueOfType<int>(json, r'bid_levels'),
        askDepth: mapValueOfType<double>(json, r'ask_depth'),
        bidDepth: mapValueOfType<double>(json, r'bid_depth'),
      );
    }
    return null;
  }

  static List<V1OrderBookDepth> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1OrderBookDepth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1OrderBookDepth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1OrderBookDepth> mapFromJson(dynamic json) {
    final map = <String, V1OrderBookDepth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1OrderBookDepth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1OrderBookDepth-objects as value to a dart map
  static Map<String, List<V1OrderBookDepth>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1OrderBookDepth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1OrderBookDepth.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

