//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TradeTradeModel {
  /// Returns a new [TradeTradeModel] instance.
  TradeTradeModel({
    this.isTradeBreak,
    this.symbol,
    this.timestampNanos,
    this.timestamp,
    this.size,
    this.price,
    this.tradeId,
    this.isIntermarketSweep,
    this.isExtendedHoursTrade,
    this.isOddLotTrade,
    this.isTradeThroughExempt,
    this.isSinglePriceCrossTrade,
  });

  /// Indicates if this record represents a trade break (true) or a trade report (false).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isTradeBreak;

  /// The stock symbol.
  String? symbol;

  /// Original timestamp in nanoseconds since epoch.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timestampNanos;

  /// Time when the event was recorded as DateTime (UTC).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// Trade volume (or break volume) in number of shares.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  /// Trade price (or break price) as decimal.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? price;

  /// IEX trade identifier (same for report and its corresponding break).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tradeId;

  /// Bit 7 (Mask 0x80): Intermarket Sweep Flag.  True: Intermarket Sweep Order (\"ISO\").  False: Non-Intermarket Sweep Order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isIntermarketSweep;

  /// Bit 6 (Mask 0x40): Extended Hours Flag.  True: Extended Hours Trade (i.e., Form T sale condition).  False: Regular Market Session Trade.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isExtendedHoursTrade;

  /// Bit 5 (Mask 0x20): Odd Lot Flag.  True: Odd Lot Trade.  False: Round or Mixed Lot Trade.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isOddLotTrade;

  /// Bit 4 (Mask 0x10): Trade Through Exempt Flag.  True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS.  False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS.  Applied when the taking order was an ISO that traded through a protected quotation,  OR the NBBO was crossed at the time of the trade,  OR the trade occurred through a self-helped venue's quotation,  OR the trade was a single-price cross.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isTradeThroughExempt;

  /// Bit 3 (Mask 0x08): Single-price Cross Trade Flag.  True: Trade resulting from a single-price cross.  False: Execution during continuous trading.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSinglePriceCrossTrade;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TradeTradeModel &&
    other.isTradeBreak == isTradeBreak &&
    other.symbol == symbol &&
    other.timestampNanos == timestampNanos &&
    other.timestamp == timestamp &&
    other.size == size &&
    other.price == price &&
    other.tradeId == tradeId &&
    other.isIntermarketSweep == isIntermarketSweep &&
    other.isExtendedHoursTrade == isExtendedHoursTrade &&
    other.isOddLotTrade == isOddLotTrade &&
    other.isTradeThroughExempt == isTradeThroughExempt &&
    other.isSinglePriceCrossTrade == isSinglePriceCrossTrade;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isTradeBreak == null ? 0 : isTradeBreak!.hashCode) +
    (symbol == null ? 0 : symbol!.hashCode) +
    (timestampNanos == null ? 0 : timestampNanos!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (tradeId == null ? 0 : tradeId!.hashCode) +
    (isIntermarketSweep == null ? 0 : isIntermarketSweep!.hashCode) +
    (isExtendedHoursTrade == null ? 0 : isExtendedHoursTrade!.hashCode) +
    (isOddLotTrade == null ? 0 : isOddLotTrade!.hashCode) +
    (isTradeThroughExempt == null ? 0 : isTradeThroughExempt!.hashCode) +
    (isSinglePriceCrossTrade == null ? 0 : isSinglePriceCrossTrade!.hashCode);

  @override
  String toString() => 'TradeTradeModel[isTradeBreak=$isTradeBreak, symbol=$symbol, timestampNanos=$timestampNanos, timestamp=$timestamp, size=$size, price=$price, tradeId=$tradeId, isIntermarketSweep=$isIntermarketSweep, isExtendedHoursTrade=$isExtendedHoursTrade, isOddLotTrade=$isOddLotTrade, isTradeThroughExempt=$isTradeThroughExempt, isSinglePriceCrossTrade=$isSinglePriceCrossTrade]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.isTradeBreak != null) {
      json[r'is_trade_break'] = this.isTradeBreak;
    } else {
      json[r'is_trade_break'] = null;
    }
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
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.tradeId != null) {
      json[r'trade_id'] = this.tradeId;
    } else {
      json[r'trade_id'] = null;
    }
    if (this.isIntermarketSweep != null) {
      json[r'is_intermarket_sweep'] = this.isIntermarketSweep;
    } else {
      json[r'is_intermarket_sweep'] = null;
    }
    if (this.isExtendedHoursTrade != null) {
      json[r'is_extended_hours_trade'] = this.isExtendedHoursTrade;
    } else {
      json[r'is_extended_hours_trade'] = null;
    }
    if (this.isOddLotTrade != null) {
      json[r'is_odd_lot_trade'] = this.isOddLotTrade;
    } else {
      json[r'is_odd_lot_trade'] = null;
    }
    if (this.isTradeThroughExempt != null) {
      json[r'is_trade_through_exempt'] = this.isTradeThroughExempt;
    } else {
      json[r'is_trade_through_exempt'] = null;
    }
    if (this.isSinglePriceCrossTrade != null) {
      json[r'is_single_price_cross_trade'] = this.isSinglePriceCrossTrade;
    } else {
      json[r'is_single_price_cross_trade'] = null;
    }
    return json;
  }

  /// Returns a new [TradeTradeModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TradeTradeModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TradeTradeModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TradeTradeModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TradeTradeModel(
        isTradeBreak: mapValueOfType<bool>(json, r'is_trade_break'),
        symbol: mapValueOfType<String>(json, r'symbol'),
        timestampNanos: mapValueOfType<int>(json, r'timestamp_nanos'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        size: mapValueOfType<int>(json, r'size'),
        price: mapValueOfType<double>(json, r'price'),
        tradeId: mapValueOfType<int>(json, r'trade_id'),
        isIntermarketSweep: mapValueOfType<bool>(json, r'is_intermarket_sweep'),
        isExtendedHoursTrade: mapValueOfType<bool>(json, r'is_extended_hours_trade'),
        isOddLotTrade: mapValueOfType<bool>(json, r'is_odd_lot_trade'),
        isTradeThroughExempt: mapValueOfType<bool>(json, r'is_trade_through_exempt'),
        isSinglePriceCrossTrade: mapValueOfType<bool>(json, r'is_single_price_cross_trade'),
      );
    }
    return null;
  }

  static List<TradeTradeModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TradeTradeModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TradeTradeModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TradeTradeModel> mapFromJson(dynamic json) {
    final map = <String, TradeTradeModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TradeTradeModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TradeTradeModel-objects as value to a dart map
  static Map<String, List<TradeTradeModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TradeTradeModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TradeTradeModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

