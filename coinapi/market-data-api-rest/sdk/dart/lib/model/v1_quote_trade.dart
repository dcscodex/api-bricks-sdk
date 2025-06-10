//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1QuoteTrade {
  /// Returns a new [V1QuoteTrade] instance.
  V1QuoteTrade({
    this.symbolId,
    this.timeExchange,
    this.timeCoinapi,
    this.askPrice,
    this.askSize,
    this.bidPrice,
    this.bidSize,
    this.lastTrade,
  });

  /// The symbol identifier.
  String? symbolId;

  /// The exchange time of the quote trade.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timeExchange;

  /// The CoinAPI time when the quote trade was received.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timeCoinapi;

  /// The best asking price.
  double? askPrice;

  /// The volume resting on the best ask. If the value is equal to zero, then the size is unknown.
  double? askSize;

  /// The best bidding price.
  double? bidPrice;

  /// The volume resting on the best bid. If the value is equal to zero, then the size is unknown.
  double? bidSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  V1LastTrade? lastTrade;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1QuoteTrade &&
    other.symbolId == symbolId &&
    other.timeExchange == timeExchange &&
    other.timeCoinapi == timeCoinapi &&
    other.askPrice == askPrice &&
    other.askSize == askSize &&
    other.bidPrice == bidPrice &&
    other.bidSize == bidSize &&
    other.lastTrade == lastTrade;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbolId == null ? 0 : symbolId!.hashCode) +
    (timeExchange == null ? 0 : timeExchange!.hashCode) +
    (timeCoinapi == null ? 0 : timeCoinapi!.hashCode) +
    (askPrice == null ? 0 : askPrice!.hashCode) +
    (askSize == null ? 0 : askSize!.hashCode) +
    (bidPrice == null ? 0 : bidPrice!.hashCode) +
    (bidSize == null ? 0 : bidSize!.hashCode) +
    (lastTrade == null ? 0 : lastTrade!.hashCode);

  @override
  String toString() => 'V1QuoteTrade[symbolId=$symbolId, timeExchange=$timeExchange, timeCoinapi=$timeCoinapi, askPrice=$askPrice, askSize=$askSize, bidPrice=$bidPrice, bidSize=$bidSize, lastTrade=$lastTrade]';

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
    if (this.askPrice != null) {
      json[r'ask_price'] = this.askPrice;
    } else {
      json[r'ask_price'] = null;
    }
    if (this.askSize != null) {
      json[r'ask_size'] = this.askSize;
    } else {
      json[r'ask_size'] = null;
    }
    if (this.bidPrice != null) {
      json[r'bid_price'] = this.bidPrice;
    } else {
      json[r'bid_price'] = null;
    }
    if (this.bidSize != null) {
      json[r'bid_size'] = this.bidSize;
    } else {
      json[r'bid_size'] = null;
    }
    if (this.lastTrade != null) {
      json[r'last_trade'] = this.lastTrade;
    } else {
      json[r'last_trade'] = null;
    }
    return json;
  }

  /// Returns a new [V1QuoteTrade] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1QuoteTrade? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1QuoteTrade[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1QuoteTrade[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1QuoteTrade(
        symbolId: mapValueOfType<String>(json, r'symbol_id'),
        timeExchange: mapDateTime(json, r'time_exchange', r''),
        timeCoinapi: mapDateTime(json, r'time_coinapi', r''),
        askPrice: mapValueOfType<double>(json, r'ask_price'),
        askSize: mapValueOfType<double>(json, r'ask_size'),
        bidPrice: mapValueOfType<double>(json, r'bid_price'),
        bidSize: mapValueOfType<double>(json, r'bid_size'),
        lastTrade: V1LastTrade.fromJson(json[r'last_trade']),
      );
    }
    return null;
  }

  static List<V1QuoteTrade> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1QuoteTrade>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1QuoteTrade.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1QuoteTrade> mapFromJson(dynamic json) {
    final map = <String, V1QuoteTrade>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1QuoteTrade.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1QuoteTrade-objects as value to a dart map
  static Map<String, List<V1QuoteTrade>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1QuoteTrade>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1QuoteTrade.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

