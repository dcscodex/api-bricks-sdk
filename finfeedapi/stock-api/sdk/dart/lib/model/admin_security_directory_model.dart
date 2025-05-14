//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminSecurityDirectoryModel {
  /// Returns a new [AdminSecurityDirectoryModel] instance.
  AdminSecurityDirectoryModel({
    this.symbol,
    this.timestampNanos,
    this.timestamp,
    this.flags,
    this.roundLotSize,
    this.adjustedPocPrice,
    this.luldTier,
    this.luldTierCode,
    this.luldTierText,
    this.isLuldTierNotApplicable,
    this.isLuldTier1,
    this.isLuldTier2,
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

  /// Time when the security directory information was recorded as DateTime
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// Flags for the security
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? flags;

  /// Number of shares that represent a round lot
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? roundLotSize;

  /// Adjusted previous official closing price as decimal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? adjustedPocPrice;

  /// LULD tier as byte value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? luldTier;

  /// LULD tier as numeric string
  String? luldTierCode;

  /// Human-readable description of the LULD tier
  String? luldTierText;

  /// Indicates if LULD Tier is 'Not applicable' (0x0).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLuldTierNotApplicable;

  /// Indicates if LULD Tier is 'Tier 1 NMS Stock' (0x1).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLuldTier1;

  /// Indicates if LULD Tier is 'Tier 2 NMS Stock' (0x2).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLuldTier2;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminSecurityDirectoryModel &&
    other.symbol == symbol &&
    other.timestampNanos == timestampNanos &&
    other.timestamp == timestamp &&
    other.flags == flags &&
    other.roundLotSize == roundLotSize &&
    other.adjustedPocPrice == adjustedPocPrice &&
    other.luldTier == luldTier &&
    other.luldTierCode == luldTierCode &&
    other.luldTierText == luldTierText &&
    other.isLuldTierNotApplicable == isLuldTierNotApplicable &&
    other.isLuldTier1 == isLuldTier1 &&
    other.isLuldTier2 == isLuldTier2;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbol == null ? 0 : symbol!.hashCode) +
    (timestampNanos == null ? 0 : timestampNanos!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (flags == null ? 0 : flags!.hashCode) +
    (roundLotSize == null ? 0 : roundLotSize!.hashCode) +
    (adjustedPocPrice == null ? 0 : adjustedPocPrice!.hashCode) +
    (luldTier == null ? 0 : luldTier!.hashCode) +
    (luldTierCode == null ? 0 : luldTierCode!.hashCode) +
    (luldTierText == null ? 0 : luldTierText!.hashCode) +
    (isLuldTierNotApplicable == null ? 0 : isLuldTierNotApplicable!.hashCode) +
    (isLuldTier1 == null ? 0 : isLuldTier1!.hashCode) +
    (isLuldTier2 == null ? 0 : isLuldTier2!.hashCode);

  @override
  String toString() => 'AdminSecurityDirectoryModel[symbol=$symbol, timestampNanos=$timestampNanos, timestamp=$timestamp, flags=$flags, roundLotSize=$roundLotSize, adjustedPocPrice=$adjustedPocPrice, luldTier=$luldTier, luldTierCode=$luldTierCode, luldTierText=$luldTierText, isLuldTierNotApplicable=$isLuldTierNotApplicable, isLuldTier1=$isLuldTier1, isLuldTier2=$isLuldTier2]';

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
    if (this.flags != null) {
      json[r'flags'] = this.flags;
    } else {
      json[r'flags'] = null;
    }
    if (this.roundLotSize != null) {
      json[r'round_lot_size'] = this.roundLotSize;
    } else {
      json[r'round_lot_size'] = null;
    }
    if (this.adjustedPocPrice != null) {
      json[r'adjusted_poc_price'] = this.adjustedPocPrice;
    } else {
      json[r'adjusted_poc_price'] = null;
    }
    if (this.luldTier != null) {
      json[r'luld_tier'] = this.luldTier;
    } else {
      json[r'luld_tier'] = null;
    }
    if (this.luldTierCode != null) {
      json[r'luld_tier_code'] = this.luldTierCode;
    } else {
      json[r'luld_tier_code'] = null;
    }
    if (this.luldTierText != null) {
      json[r'luld_tier_text'] = this.luldTierText;
    } else {
      json[r'luld_tier_text'] = null;
    }
    if (this.isLuldTierNotApplicable != null) {
      json[r'is_luld_tier_not_applicable'] = this.isLuldTierNotApplicable;
    } else {
      json[r'is_luld_tier_not_applicable'] = null;
    }
    if (this.isLuldTier1 != null) {
      json[r'is_luld_tier1'] = this.isLuldTier1;
    } else {
      json[r'is_luld_tier1'] = null;
    }
    if (this.isLuldTier2 != null) {
      json[r'is_luld_tier2'] = this.isLuldTier2;
    } else {
      json[r'is_luld_tier2'] = null;
    }
    return json;
  }

  /// Returns a new [AdminSecurityDirectoryModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminSecurityDirectoryModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminSecurityDirectoryModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminSecurityDirectoryModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminSecurityDirectoryModel(
        symbol: mapValueOfType<String>(json, r'symbol'),
        timestampNanos: mapValueOfType<int>(json, r'timestamp_nanos'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        flags: mapValueOfType<int>(json, r'flags'),
        roundLotSize: mapValueOfType<int>(json, r'round_lot_size'),
        adjustedPocPrice: mapValueOfType<double>(json, r'adjusted_poc_price'),
        luldTier: mapValueOfType<int>(json, r'luld_tier'),
        luldTierCode: mapValueOfType<String>(json, r'luld_tier_code'),
        luldTierText: mapValueOfType<String>(json, r'luld_tier_text'),
        isLuldTierNotApplicable: mapValueOfType<bool>(json, r'is_luld_tier_not_applicable'),
        isLuldTier1: mapValueOfType<bool>(json, r'is_luld_tier1'),
        isLuldTier2: mapValueOfType<bool>(json, r'is_luld_tier2'),
      );
    }
    return null;
  }

  static List<AdminSecurityDirectoryModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminSecurityDirectoryModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminSecurityDirectoryModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminSecurityDirectoryModel> mapFromJson(dynamic json) {
    final map = <String, AdminSecurityDirectoryModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminSecurityDirectoryModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminSecurityDirectoryModel-objects as value to a dart map
  static Map<String, List<AdminSecurityDirectoryModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminSecurityDirectoryModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminSecurityDirectoryModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

