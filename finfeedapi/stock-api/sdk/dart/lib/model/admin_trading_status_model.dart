//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminTradingStatusModel {
  /// Returns a new [AdminTradingStatusModel] instance.
  AdminTradingStatusModel({
    this.symbol,
    this.timestampNanos,
    this.timestamp,
    this.isTradingLive,
    this.isTradingHalted,
    this.isTradingInOrderAcceptancePeriod,
    this.isTradingPaused,
    this.isReasonHaltNewsPending,
    this.isReasonIpoNotYetTrading,
    this.isReasonIpoDeferred,
    this.isReasonHaltNewsDissemination,
    this.isReasonIpoOrderAcceptancePeriod,
    this.isReasonIpoPreLaunchPeriod,
    this.isReasonMarketWideCircuitBreakerLevel1,
    this.isReasonMarketWideCircuitBreakerLevel2,
    this.isReasonMarketWideCircuitBreakerLevel3,
    this.isReasonNotApplicable,
    this.isReasonNotAvailable,
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

  /// Time when the trading status was recorded as DateTime
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// Gets whether the security is currently trading on IEX
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isTradingLive;

  /// Gets whether the security is halted across all US equity markets
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isTradingHalted;

  /// Gets whether the security is in Order Acceptance Period on IEX
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isTradingInOrderAcceptancePeriod;

  /// Gets whether the security is paused and in Order Acceptance Period on IEX
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isTradingPaused;

  /// Gets whether the halt reason is News Pending
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReasonHaltNewsPending;

  /// Gets whether the halt reason is IPO Not Yet Trading
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReasonIpoNotYetTrading;

  /// Gets whether the halt reason is IPO Deferred
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReasonIpoDeferred;

  /// Gets whether the order acceptance period reason is Halt News Dissemination
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReasonHaltNewsDissemination;

  /// Gets whether the order acceptance period reason is IPO Order Acceptance Period
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReasonIpoOrderAcceptancePeriod;

  /// Gets whether the order acceptance period reason is IPO Pre-Launch Period
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReasonIpoPreLaunchPeriod;

  /// Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReasonMarketWideCircuitBreakerLevel1;

  /// Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReasonMarketWideCircuitBreakerLevel2;

  /// Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReasonMarketWideCircuitBreakerLevel3;

  /// Gets whether the reason is Not Applicable
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReasonNotApplicable;

  /// Gets whether the halt reason is Not Available
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReasonNotAvailable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminTradingStatusModel &&
    other.symbol == symbol &&
    other.timestampNanos == timestampNanos &&
    other.timestamp == timestamp &&
    other.isTradingLive == isTradingLive &&
    other.isTradingHalted == isTradingHalted &&
    other.isTradingInOrderAcceptancePeriod == isTradingInOrderAcceptancePeriod &&
    other.isTradingPaused == isTradingPaused &&
    other.isReasonHaltNewsPending == isReasonHaltNewsPending &&
    other.isReasonIpoNotYetTrading == isReasonIpoNotYetTrading &&
    other.isReasonIpoDeferred == isReasonIpoDeferred &&
    other.isReasonHaltNewsDissemination == isReasonHaltNewsDissemination &&
    other.isReasonIpoOrderAcceptancePeriod == isReasonIpoOrderAcceptancePeriod &&
    other.isReasonIpoPreLaunchPeriod == isReasonIpoPreLaunchPeriod &&
    other.isReasonMarketWideCircuitBreakerLevel1 == isReasonMarketWideCircuitBreakerLevel1 &&
    other.isReasonMarketWideCircuitBreakerLevel2 == isReasonMarketWideCircuitBreakerLevel2 &&
    other.isReasonMarketWideCircuitBreakerLevel3 == isReasonMarketWideCircuitBreakerLevel3 &&
    other.isReasonNotApplicable == isReasonNotApplicable &&
    other.isReasonNotAvailable == isReasonNotAvailable;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbol == null ? 0 : symbol!.hashCode) +
    (timestampNanos == null ? 0 : timestampNanos!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (isTradingLive == null ? 0 : isTradingLive!.hashCode) +
    (isTradingHalted == null ? 0 : isTradingHalted!.hashCode) +
    (isTradingInOrderAcceptancePeriod == null ? 0 : isTradingInOrderAcceptancePeriod!.hashCode) +
    (isTradingPaused == null ? 0 : isTradingPaused!.hashCode) +
    (isReasonHaltNewsPending == null ? 0 : isReasonHaltNewsPending!.hashCode) +
    (isReasonIpoNotYetTrading == null ? 0 : isReasonIpoNotYetTrading!.hashCode) +
    (isReasonIpoDeferred == null ? 0 : isReasonIpoDeferred!.hashCode) +
    (isReasonHaltNewsDissemination == null ? 0 : isReasonHaltNewsDissemination!.hashCode) +
    (isReasonIpoOrderAcceptancePeriod == null ? 0 : isReasonIpoOrderAcceptancePeriod!.hashCode) +
    (isReasonIpoPreLaunchPeriod == null ? 0 : isReasonIpoPreLaunchPeriod!.hashCode) +
    (isReasonMarketWideCircuitBreakerLevel1 == null ? 0 : isReasonMarketWideCircuitBreakerLevel1!.hashCode) +
    (isReasonMarketWideCircuitBreakerLevel2 == null ? 0 : isReasonMarketWideCircuitBreakerLevel2!.hashCode) +
    (isReasonMarketWideCircuitBreakerLevel3 == null ? 0 : isReasonMarketWideCircuitBreakerLevel3!.hashCode) +
    (isReasonNotApplicable == null ? 0 : isReasonNotApplicable!.hashCode) +
    (isReasonNotAvailable == null ? 0 : isReasonNotAvailable!.hashCode);

  @override
  String toString() => 'AdminTradingStatusModel[symbol=$symbol, timestampNanos=$timestampNanos, timestamp=$timestamp, isTradingLive=$isTradingLive, isTradingHalted=$isTradingHalted, isTradingInOrderAcceptancePeriod=$isTradingInOrderAcceptancePeriod, isTradingPaused=$isTradingPaused, isReasonHaltNewsPending=$isReasonHaltNewsPending, isReasonIpoNotYetTrading=$isReasonIpoNotYetTrading, isReasonIpoDeferred=$isReasonIpoDeferred, isReasonHaltNewsDissemination=$isReasonHaltNewsDissemination, isReasonIpoOrderAcceptancePeriod=$isReasonIpoOrderAcceptancePeriod, isReasonIpoPreLaunchPeriod=$isReasonIpoPreLaunchPeriod, isReasonMarketWideCircuitBreakerLevel1=$isReasonMarketWideCircuitBreakerLevel1, isReasonMarketWideCircuitBreakerLevel2=$isReasonMarketWideCircuitBreakerLevel2, isReasonMarketWideCircuitBreakerLevel3=$isReasonMarketWideCircuitBreakerLevel3, isReasonNotApplicable=$isReasonNotApplicable, isReasonNotAvailable=$isReasonNotAvailable]';

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
    if (this.isTradingLive != null) {
      json[r'is_trading_live'] = this.isTradingLive;
    } else {
      json[r'is_trading_live'] = null;
    }
    if (this.isTradingHalted != null) {
      json[r'is_trading_halted'] = this.isTradingHalted;
    } else {
      json[r'is_trading_halted'] = null;
    }
    if (this.isTradingInOrderAcceptancePeriod != null) {
      json[r'is_trading_in_order_acceptance_period'] = this.isTradingInOrderAcceptancePeriod;
    } else {
      json[r'is_trading_in_order_acceptance_period'] = null;
    }
    if (this.isTradingPaused != null) {
      json[r'is_trading_paused'] = this.isTradingPaused;
    } else {
      json[r'is_trading_paused'] = null;
    }
    if (this.isReasonHaltNewsPending != null) {
      json[r'is_reason_halt_news_pending'] = this.isReasonHaltNewsPending;
    } else {
      json[r'is_reason_halt_news_pending'] = null;
    }
    if (this.isReasonIpoNotYetTrading != null) {
      json[r'is_reason_ipo_not_yet_trading'] = this.isReasonIpoNotYetTrading;
    } else {
      json[r'is_reason_ipo_not_yet_trading'] = null;
    }
    if (this.isReasonIpoDeferred != null) {
      json[r'is_reason_ipo_deferred'] = this.isReasonIpoDeferred;
    } else {
      json[r'is_reason_ipo_deferred'] = null;
    }
    if (this.isReasonHaltNewsDissemination != null) {
      json[r'is_reason_halt_news_dissemination'] = this.isReasonHaltNewsDissemination;
    } else {
      json[r'is_reason_halt_news_dissemination'] = null;
    }
    if (this.isReasonIpoOrderAcceptancePeriod != null) {
      json[r'is_reason_ipo_order_acceptance_period'] = this.isReasonIpoOrderAcceptancePeriod;
    } else {
      json[r'is_reason_ipo_order_acceptance_period'] = null;
    }
    if (this.isReasonIpoPreLaunchPeriod != null) {
      json[r'is_reason_ipo_pre_launch_period'] = this.isReasonIpoPreLaunchPeriod;
    } else {
      json[r'is_reason_ipo_pre_launch_period'] = null;
    }
    if (this.isReasonMarketWideCircuitBreakerLevel1 != null) {
      json[r'is_reason_market_wide_circuit_breaker_level1'] = this.isReasonMarketWideCircuitBreakerLevel1;
    } else {
      json[r'is_reason_market_wide_circuit_breaker_level1'] = null;
    }
    if (this.isReasonMarketWideCircuitBreakerLevel2 != null) {
      json[r'is_reason_market_wide_circuit_breaker_level2'] = this.isReasonMarketWideCircuitBreakerLevel2;
    } else {
      json[r'is_reason_market_wide_circuit_breaker_level2'] = null;
    }
    if (this.isReasonMarketWideCircuitBreakerLevel3 != null) {
      json[r'is_reason_market_wide_circuit_breaker_level3'] = this.isReasonMarketWideCircuitBreakerLevel3;
    } else {
      json[r'is_reason_market_wide_circuit_breaker_level3'] = null;
    }
    if (this.isReasonNotApplicable != null) {
      json[r'is_reason_not_applicable'] = this.isReasonNotApplicable;
    } else {
      json[r'is_reason_not_applicable'] = null;
    }
    if (this.isReasonNotAvailable != null) {
      json[r'is_reason_not_available'] = this.isReasonNotAvailable;
    } else {
      json[r'is_reason_not_available'] = null;
    }
    return json;
  }

  /// Returns a new [AdminTradingStatusModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminTradingStatusModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminTradingStatusModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminTradingStatusModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminTradingStatusModel(
        symbol: mapValueOfType<String>(json, r'symbol'),
        timestampNanos: mapValueOfType<int>(json, r'timestamp_nanos'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        isTradingLive: mapValueOfType<bool>(json, r'is_trading_live'),
        isTradingHalted: mapValueOfType<bool>(json, r'is_trading_halted'),
        isTradingInOrderAcceptancePeriod: mapValueOfType<bool>(json, r'is_trading_in_order_acceptance_period'),
        isTradingPaused: mapValueOfType<bool>(json, r'is_trading_paused'),
        isReasonHaltNewsPending: mapValueOfType<bool>(json, r'is_reason_halt_news_pending'),
        isReasonIpoNotYetTrading: mapValueOfType<bool>(json, r'is_reason_ipo_not_yet_trading'),
        isReasonIpoDeferred: mapValueOfType<bool>(json, r'is_reason_ipo_deferred'),
        isReasonHaltNewsDissemination: mapValueOfType<bool>(json, r'is_reason_halt_news_dissemination'),
        isReasonIpoOrderAcceptancePeriod: mapValueOfType<bool>(json, r'is_reason_ipo_order_acceptance_period'),
        isReasonIpoPreLaunchPeriod: mapValueOfType<bool>(json, r'is_reason_ipo_pre_launch_period'),
        isReasonMarketWideCircuitBreakerLevel1: mapValueOfType<bool>(json, r'is_reason_market_wide_circuit_breaker_level1'),
        isReasonMarketWideCircuitBreakerLevel2: mapValueOfType<bool>(json, r'is_reason_market_wide_circuit_breaker_level2'),
        isReasonMarketWideCircuitBreakerLevel3: mapValueOfType<bool>(json, r'is_reason_market_wide_circuit_breaker_level3'),
        isReasonNotApplicable: mapValueOfType<bool>(json, r'is_reason_not_applicable'),
        isReasonNotAvailable: mapValueOfType<bool>(json, r'is_reason_not_available'),
      );
    }
    return null;
  }

  static List<AdminTradingStatusModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminTradingStatusModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminTradingStatusModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminTradingStatusModel> mapFromJson(dynamic json) {
    final map = <String, AdminTradingStatusModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminTradingStatusModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminTradingStatusModel-objects as value to a dart map
  static Map<String, List<AdminTradingStatusModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminTradingStatusModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminTradingStatusModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

