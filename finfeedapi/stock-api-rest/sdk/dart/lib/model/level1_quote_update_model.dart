//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Level1QuoteUpdateModel {
  /// Returns a new [Level1QuoteUpdateModel] instance.
  Level1QuoteUpdateModel({
    this.symbol,
    this.timestampNanos,
    this.timestamp,
    this.isSymbolAvailable,
    this.isPrePostMarketSession,
    this.askSize,
    this.askPrice,
    this.bidPrice,
    this.bidSize,
  });

  /// The stock symbol
  String? symbol;

  /// Original timestamp in nanoseconds since epoch
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timestampNanos;

  /// Time when the quote update was recorded as DateTime
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// Gets whether the symbol is available for trading  True if active, False if halted, paused, or otherwise not available
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSymbolAvailable;

  /// Gets whether the market session is regular or pre/post-market  True if pre/post-market session, False if regular market session
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPrePostMarketSession;

  /// Ask size in number of shares
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? askSize;

  /// Ask price as decimal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? askPrice;

  /// Bid price as decimal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? bidPrice;

  /// Bid size in number of shares
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bidSize;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Level1QuoteUpdateModel &&
    other.symbol == symbol &&
    other.timestampNanos == timestampNanos &&
    other.timestamp == timestamp &&
    other.isSymbolAvailable == isSymbolAvailable &&
    other.isPrePostMarketSession == isPrePostMarketSession &&
    other.askSize == askSize &&
    other.askPrice == askPrice &&
    other.bidPrice == bidPrice &&
    other.bidSize == bidSize;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbol == null ? 0 : symbol!.hashCode) +
    (timestampNanos == null ? 0 : timestampNanos!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (isSymbolAvailable == null ? 0 : isSymbolAvailable!.hashCode) +
    (isPrePostMarketSession == null ? 0 : isPrePostMarketSession!.hashCode) +
    (askSize == null ? 0 : askSize!.hashCode) +
    (askPrice == null ? 0 : askPrice!.hashCode) +
    (bidPrice == null ? 0 : bidPrice!.hashCode) +
    (bidSize == null ? 0 : bidSize!.hashCode);

  @override
  String toString() => 'Level1QuoteUpdateModel[symbol=$symbol, timestampNanos=$timestampNanos, timestamp=$timestamp, isSymbolAvailable=$isSymbolAvailable, isPrePostMarketSession=$isPrePostMarketSession, askSize=$askSize, askPrice=$askPrice, bidPrice=$bidPrice, bidSize=$bidSize]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.symbol != null) {
      json[r'symbol'] = this.symbol;
    } else {
      json[r'symbol'] = null;
    }
    if (this.timestampNanos != null) {
      json[r'timestamp_nanos'] = this.timestampNanos;
    } else {
      json[r'timestamp_nanos'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    if (this.isSymbolAvailable != null) {
      json[r'is_symbol_available'] = this.isSymbolAvailable;
    } else {
      json[r'is_symbol_available'] = null;
    }
    if (this.isPrePostMarketSession != null) {
      json[r'is_pre_post_market_session'] = this.isPrePostMarketSession;
    } else {
      json[r'is_pre_post_market_session'] = null;
    }
    if (this.askSize != null) {
      json[r'ask_size'] = this.askSize;
    } else {
      json[r'ask_size'] = null;
    }
    if (this.askPrice != null) {
      json[r'ask_price'] = this.askPrice;
    } else {
      json[r'ask_price'] = null;
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
    return json;
  }

  /// Returns a new [Level1QuoteUpdateModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Level1QuoteUpdateModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Level1QuoteUpdateModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Level1QuoteUpdateModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Level1QuoteUpdateModel(
        symbol: mapValueOfType<String>(json, r'symbol'),
        timestampNanos: mapValueOfType<int>(json, r'timestamp_nanos'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        isSymbolAvailable: mapValueOfType<bool>(json, r'is_symbol_available'),
        isPrePostMarketSession: mapValueOfType<bool>(json, r'is_pre_post_market_session'),
        askSize: mapValueOfType<int>(json, r'ask_size'),
        askPrice: mapValueOfType<double>(json, r'ask_price'),
        bidPrice: mapValueOfType<double>(json, r'bid_price'),
        bidSize: mapValueOfType<int>(json, r'bid_size'),
      );
    }
    return null;
  }

  static List<Level1QuoteUpdateModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Level1QuoteUpdateModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Level1QuoteUpdateModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Level1QuoteUpdateModel> mapFromJson(dynamic json) {
    final map = <String, Level1QuoteUpdateModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Level1QuoteUpdateModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Level1QuoteUpdateModel-objects as value to a dart map
  static Map<String, List<Level1QuoteUpdateModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Level1QuoteUpdateModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Level1QuoteUpdateModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

