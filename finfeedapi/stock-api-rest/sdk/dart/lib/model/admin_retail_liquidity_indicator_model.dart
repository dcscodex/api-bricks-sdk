//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminRetailLiquidityIndicatorModel {
  /// Returns a new [AdminRetailLiquidityIndicatorModel] instance.
  AdminRetailLiquidityIndicatorModel({
    this.symbol,
    this.timestampNanos,
    this.timestamp,
    this.retailLiquidityIndicator,
    this.retailLiquidityIndicatorCode,
    this.retailLiquidityIndicatorText,
    this.isRetailIndicatorNotApplicable,
    this.isRetailIndicatorBuyInterest,
    this.isRetailIndicatorSellInterest,
    this.isRetailIndicatorBuyAndSellInterest,
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

  /// Time when the retail liquidity indicator was recorded as DateTime
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// Retail liquidity indicator as byte value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retailLiquidityIndicator;

  /// Retail liquidity indicator as character string
  String? retailLiquidityIndicatorCode;

  /// Human-readable description of the retail liquidity indicator
  String? retailLiquidityIndicatorText;

  /// Indicates if the indicator is 'Not Applicable' (' '/0x20).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isRetailIndicatorNotApplicable;

  /// Indicates if there is 'Buy interest for Retail' ('A'/0x41).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isRetailIndicatorBuyInterest;

  /// Indicates if there is 'Sell interest for Retail' ('B'/0x42).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isRetailIndicatorSellInterest;

  /// Indicates if there is 'Buy and sell interest for Retail' ('C'/0x43).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isRetailIndicatorBuyAndSellInterest;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminRetailLiquidityIndicatorModel &&
    other.symbol == symbol &&
    other.timestampNanos == timestampNanos &&
    other.timestamp == timestamp &&
    other.retailLiquidityIndicator == retailLiquidityIndicator &&
    other.retailLiquidityIndicatorCode == retailLiquidityIndicatorCode &&
    other.retailLiquidityIndicatorText == retailLiquidityIndicatorText &&
    other.isRetailIndicatorNotApplicable == isRetailIndicatorNotApplicable &&
    other.isRetailIndicatorBuyInterest == isRetailIndicatorBuyInterest &&
    other.isRetailIndicatorSellInterest == isRetailIndicatorSellInterest &&
    other.isRetailIndicatorBuyAndSellInterest == isRetailIndicatorBuyAndSellInterest;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbol == null ? 0 : symbol!.hashCode) +
    (timestampNanos == null ? 0 : timestampNanos!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (retailLiquidityIndicator == null ? 0 : retailLiquidityIndicator!.hashCode) +
    (retailLiquidityIndicatorCode == null ? 0 : retailLiquidityIndicatorCode!.hashCode) +
    (retailLiquidityIndicatorText == null ? 0 : retailLiquidityIndicatorText!.hashCode) +
    (isRetailIndicatorNotApplicable == null ? 0 : isRetailIndicatorNotApplicable!.hashCode) +
    (isRetailIndicatorBuyInterest == null ? 0 : isRetailIndicatorBuyInterest!.hashCode) +
    (isRetailIndicatorSellInterest == null ? 0 : isRetailIndicatorSellInterest!.hashCode) +
    (isRetailIndicatorBuyAndSellInterest == null ? 0 : isRetailIndicatorBuyAndSellInterest!.hashCode);

  @override
  String toString() => 'AdminRetailLiquidityIndicatorModel[symbol=$symbol, timestampNanos=$timestampNanos, timestamp=$timestamp, retailLiquidityIndicator=$retailLiquidityIndicator, retailLiquidityIndicatorCode=$retailLiquidityIndicatorCode, retailLiquidityIndicatorText=$retailLiquidityIndicatorText, isRetailIndicatorNotApplicable=$isRetailIndicatorNotApplicable, isRetailIndicatorBuyInterest=$isRetailIndicatorBuyInterest, isRetailIndicatorSellInterest=$isRetailIndicatorSellInterest, isRetailIndicatorBuyAndSellInterest=$isRetailIndicatorBuyAndSellInterest]';

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
    if (this.retailLiquidityIndicator != null) {
      json[r'retail_liquidity_indicator'] = this.retailLiquidityIndicator;
    } else {
      json[r'retail_liquidity_indicator'] = null;
    }
    if (this.retailLiquidityIndicatorCode != null) {
      json[r'retail_liquidity_indicator_code'] = this.retailLiquidityIndicatorCode;
    } else {
      json[r'retail_liquidity_indicator_code'] = null;
    }
    if (this.retailLiquidityIndicatorText != null) {
      json[r'retail_liquidity_indicator_text'] = this.retailLiquidityIndicatorText;
    } else {
      json[r'retail_liquidity_indicator_text'] = null;
    }
    if (this.isRetailIndicatorNotApplicable != null) {
      json[r'is_retail_indicator_not_applicable'] = this.isRetailIndicatorNotApplicable;
    } else {
      json[r'is_retail_indicator_not_applicable'] = null;
    }
    if (this.isRetailIndicatorBuyInterest != null) {
      json[r'is_retail_indicator_buy_interest'] = this.isRetailIndicatorBuyInterest;
    } else {
      json[r'is_retail_indicator_buy_interest'] = null;
    }
    if (this.isRetailIndicatorSellInterest != null) {
      json[r'is_retail_indicator_sell_interest'] = this.isRetailIndicatorSellInterest;
    } else {
      json[r'is_retail_indicator_sell_interest'] = null;
    }
    if (this.isRetailIndicatorBuyAndSellInterest != null) {
      json[r'is_retail_indicator_buy_and_sell_interest'] = this.isRetailIndicatorBuyAndSellInterest;
    } else {
      json[r'is_retail_indicator_buy_and_sell_interest'] = null;
    }
    return json;
  }

  /// Returns a new [AdminRetailLiquidityIndicatorModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminRetailLiquidityIndicatorModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminRetailLiquidityIndicatorModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminRetailLiquidityIndicatorModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminRetailLiquidityIndicatorModel(
        symbol: mapValueOfType<String>(json, r'symbol'),
        timestampNanos: mapValueOfType<int>(json, r'timestamp_nanos'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        retailLiquidityIndicator: mapValueOfType<int>(json, r'retail_liquidity_indicator'),
        retailLiquidityIndicatorCode: mapValueOfType<String>(json, r'retail_liquidity_indicator_code'),
        retailLiquidityIndicatorText: mapValueOfType<String>(json, r'retail_liquidity_indicator_text'),
        isRetailIndicatorNotApplicable: mapValueOfType<bool>(json, r'is_retail_indicator_not_applicable'),
        isRetailIndicatorBuyInterest: mapValueOfType<bool>(json, r'is_retail_indicator_buy_interest'),
        isRetailIndicatorSellInterest: mapValueOfType<bool>(json, r'is_retail_indicator_sell_interest'),
        isRetailIndicatorBuyAndSellInterest: mapValueOfType<bool>(json, r'is_retail_indicator_buy_and_sell_interest'),
      );
    }
    return null;
  }

  static List<AdminRetailLiquidityIndicatorModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminRetailLiquidityIndicatorModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminRetailLiquidityIndicatorModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminRetailLiquidityIndicatorModel> mapFromJson(dynamic json) {
    final map = <String, AdminRetailLiquidityIndicatorModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminRetailLiquidityIndicatorModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminRetailLiquidityIndicatorModel-objects as value to a dart map
  static Map<String, List<AdminRetailLiquidityIndicatorModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminRetailLiquidityIndicatorModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminRetailLiquidityIndicatorModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

