//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminOfficialPriceModel {
  /// Returns a new [AdminOfficialPriceModel] instance.
  AdminOfficialPriceModel({
    this.symbol,
    this.timestampNanos,
    this.timestamp,
    this.priceType,
    this.priceTypeCode,
    this.priceTypeText,
    this.isPriceTypeOpening,
    this.isPriceTypeClosing,
    this.officialPrice,
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

  /// Time when the official price was recorded as DateTime
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// Type of price as byte value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priceType;

  /// Type of price as character string
  String? priceTypeCode;

  /// Human-readable description of the price type
  String? priceTypeText;

  /// Indicates if the price type is 'IEX Official Opening Price' ('Q'/0x51).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPriceTypeOpening;

  /// Indicates if the price type is 'IEX Official Closing Price' ('M'/0x4d).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPriceTypeClosing;

  /// Official price as decimal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? officialPrice;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminOfficialPriceModel &&
    other.symbol == symbol &&
    other.timestampNanos == timestampNanos &&
    other.timestamp == timestamp &&
    other.priceType == priceType &&
    other.priceTypeCode == priceTypeCode &&
    other.priceTypeText == priceTypeText &&
    other.isPriceTypeOpening == isPriceTypeOpening &&
    other.isPriceTypeClosing == isPriceTypeClosing &&
    other.officialPrice == officialPrice;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbol == null ? 0 : symbol!.hashCode) +
    (timestampNanos == null ? 0 : timestampNanos!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (priceType == null ? 0 : priceType!.hashCode) +
    (priceTypeCode == null ? 0 : priceTypeCode!.hashCode) +
    (priceTypeText == null ? 0 : priceTypeText!.hashCode) +
    (isPriceTypeOpening == null ? 0 : isPriceTypeOpening!.hashCode) +
    (isPriceTypeClosing == null ? 0 : isPriceTypeClosing!.hashCode) +
    (officialPrice == null ? 0 : officialPrice!.hashCode);

  @override
  String toString() => 'AdminOfficialPriceModel[symbol=$symbol, timestampNanos=$timestampNanos, timestamp=$timestamp, priceType=$priceType, priceTypeCode=$priceTypeCode, priceTypeText=$priceTypeText, isPriceTypeOpening=$isPriceTypeOpening, isPriceTypeClosing=$isPriceTypeClosing, officialPrice=$officialPrice]';

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
    if (this.priceType != null) {
      json[r'price_type'] = this.priceType;
    } else {
      json[r'price_type'] = null;
    }
    if (this.priceTypeCode != null) {
      json[r'price_type_code'] = this.priceTypeCode;
    } else {
      json[r'price_type_code'] = null;
    }
    if (this.priceTypeText != null) {
      json[r'price_type_text'] = this.priceTypeText;
    } else {
      json[r'price_type_text'] = null;
    }
    if (this.isPriceTypeOpening != null) {
      json[r'is_price_type_opening'] = this.isPriceTypeOpening;
    } else {
      json[r'is_price_type_opening'] = null;
    }
    if (this.isPriceTypeClosing != null) {
      json[r'is_price_type_closing'] = this.isPriceTypeClosing;
    } else {
      json[r'is_price_type_closing'] = null;
    }
    if (this.officialPrice != null) {
      json[r'official_price'] = this.officialPrice;
    } else {
      json[r'official_price'] = null;
    }
    return json;
  }

  /// Returns a new [AdminOfficialPriceModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminOfficialPriceModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminOfficialPriceModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminOfficialPriceModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminOfficialPriceModel(
        symbol: mapValueOfType<String>(json, r'symbol'),
        timestampNanos: mapValueOfType<int>(json, r'timestamp_nanos'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        priceType: mapValueOfType<int>(json, r'price_type'),
        priceTypeCode: mapValueOfType<String>(json, r'price_type_code'),
        priceTypeText: mapValueOfType<String>(json, r'price_type_text'),
        isPriceTypeOpening: mapValueOfType<bool>(json, r'is_price_type_opening'),
        isPriceTypeClosing: mapValueOfType<bool>(json, r'is_price_type_closing'),
        officialPrice: mapValueOfType<double>(json, r'official_price'),
      );
    }
    return null;
  }

  static List<AdminOfficialPriceModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminOfficialPriceModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminOfficialPriceModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminOfficialPriceModel> mapFromJson(dynamic json) {
    final map = <String, AdminOfficialPriceModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminOfficialPriceModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminOfficialPriceModel-objects as value to a dart map
  static Map<String, List<AdminOfficialPriceModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminOfficialPriceModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminOfficialPriceModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

