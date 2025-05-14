//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminShortSalePriceTestStatusModel {
  /// Returns a new [AdminShortSalePriceTestStatusModel] instance.
  AdminShortSalePriceTestStatusModel({
    this.symbol,
    this.timestampNanos,
    this.timestamp,
    this.shortSalePriceTestStatus,
    this.shortSalePriceTestStatusCode,
    this.shortSalePriceTestStatusText,
    this.isShortSalePriceTestNotInEffect,
    this.isShortSalePriceTestInEffect,
    this.detail,
    this.detailCode,
    this.detailText,
    this.isDetailNoPriceTest,
    this.isDetailActivated,
    this.isDetailContinued,
    this.isDetailDeactivated,
    this.isDetailNotAvailable,
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

  /// Time when the short sale price test status was recorded as DateTime
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// Short sale price test status as byte value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shortSalePriceTestStatus;

  /// Short sale price test status as hex string
  String? shortSalePriceTestStatusCode;

  /// Human-readable description of the short sale price test status
  String? shortSalePriceTestStatusText;

  /// Indicates if the short sale price test is not in effect
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isShortSalePriceTestNotInEffect;

  /// Indicates if the short sale price test is in effect
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isShortSalePriceTestInEffect;

  /// Detail of the short sale price test as byte value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? detail;

  /// Detail of the short sale price test as character string
  String? detailCode;

  /// Human-readable description of the short sale price test detail
  String? detailText;

  /// Indicates if there is no price test in place
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDetailNoPriceTest;

  /// Indicates if the short sale price test restriction is in effect due to an intraday price drop
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDetailActivated;

  /// Indicates if the short sale price test restriction remains in effect from prior day
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDetailContinued;

  /// Indicates if the short sale price test restriction is deactivated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDetailDeactivated;

  /// Indicates if the detail is not available
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDetailNotAvailable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminShortSalePriceTestStatusModel &&
    other.symbol == symbol &&
    other.timestampNanos == timestampNanos &&
    other.timestamp == timestamp &&
    other.shortSalePriceTestStatus == shortSalePriceTestStatus &&
    other.shortSalePriceTestStatusCode == shortSalePriceTestStatusCode &&
    other.shortSalePriceTestStatusText == shortSalePriceTestStatusText &&
    other.isShortSalePriceTestNotInEffect == isShortSalePriceTestNotInEffect &&
    other.isShortSalePriceTestInEffect == isShortSalePriceTestInEffect &&
    other.detail == detail &&
    other.detailCode == detailCode &&
    other.detailText == detailText &&
    other.isDetailNoPriceTest == isDetailNoPriceTest &&
    other.isDetailActivated == isDetailActivated &&
    other.isDetailContinued == isDetailContinued &&
    other.isDetailDeactivated == isDetailDeactivated &&
    other.isDetailNotAvailable == isDetailNotAvailable;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbol == null ? 0 : symbol!.hashCode) +
    (timestampNanos == null ? 0 : timestampNanos!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (shortSalePriceTestStatus == null ? 0 : shortSalePriceTestStatus!.hashCode) +
    (shortSalePriceTestStatusCode == null ? 0 : shortSalePriceTestStatusCode!.hashCode) +
    (shortSalePriceTestStatusText == null ? 0 : shortSalePriceTestStatusText!.hashCode) +
    (isShortSalePriceTestNotInEffect == null ? 0 : isShortSalePriceTestNotInEffect!.hashCode) +
    (isShortSalePriceTestInEffect == null ? 0 : isShortSalePriceTestInEffect!.hashCode) +
    (detail == null ? 0 : detail!.hashCode) +
    (detailCode == null ? 0 : detailCode!.hashCode) +
    (detailText == null ? 0 : detailText!.hashCode) +
    (isDetailNoPriceTest == null ? 0 : isDetailNoPriceTest!.hashCode) +
    (isDetailActivated == null ? 0 : isDetailActivated!.hashCode) +
    (isDetailContinued == null ? 0 : isDetailContinued!.hashCode) +
    (isDetailDeactivated == null ? 0 : isDetailDeactivated!.hashCode) +
    (isDetailNotAvailable == null ? 0 : isDetailNotAvailable!.hashCode);

  @override
  String toString() => 'AdminShortSalePriceTestStatusModel[symbol=$symbol, timestampNanos=$timestampNanos, timestamp=$timestamp, shortSalePriceTestStatus=$shortSalePriceTestStatus, shortSalePriceTestStatusCode=$shortSalePriceTestStatusCode, shortSalePriceTestStatusText=$shortSalePriceTestStatusText, isShortSalePriceTestNotInEffect=$isShortSalePriceTestNotInEffect, isShortSalePriceTestInEffect=$isShortSalePriceTestInEffect, detail=$detail, detailCode=$detailCode, detailText=$detailText, isDetailNoPriceTest=$isDetailNoPriceTest, isDetailActivated=$isDetailActivated, isDetailContinued=$isDetailContinued, isDetailDeactivated=$isDetailDeactivated, isDetailNotAvailable=$isDetailNotAvailable]';

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
    if (this.shortSalePriceTestStatus != null) {
      json[r'short_sale_price_test_status'] = this.shortSalePriceTestStatus;
    } else {
      json[r'short_sale_price_test_status'] = null;
    }
    if (this.shortSalePriceTestStatusCode != null) {
      json[r'short_sale_price_test_status_code'] = this.shortSalePriceTestStatusCode;
    } else {
      json[r'short_sale_price_test_status_code'] = null;
    }
    if (this.shortSalePriceTestStatusText != null) {
      json[r'short_sale_price_test_status_text'] = this.shortSalePriceTestStatusText;
    } else {
      json[r'short_sale_price_test_status_text'] = null;
    }
    if (this.isShortSalePriceTestNotInEffect != null) {
      json[r'is_short_sale_price_test_not_in_effect'] = this.isShortSalePriceTestNotInEffect;
    } else {
      json[r'is_short_sale_price_test_not_in_effect'] = null;
    }
    if (this.isShortSalePriceTestInEffect != null) {
      json[r'is_short_sale_price_test_in_effect'] = this.isShortSalePriceTestInEffect;
    } else {
      json[r'is_short_sale_price_test_in_effect'] = null;
    }
    if (this.detail != null) {
      json[r'detail'] = this.detail;
    } else {
      json[r'detail'] = null;
    }
    if (this.detailCode != null) {
      json[r'detail_code'] = this.detailCode;
    } else {
      json[r'detail_code'] = null;
    }
    if (this.detailText != null) {
      json[r'detail_text'] = this.detailText;
    } else {
      json[r'detail_text'] = null;
    }
    if (this.isDetailNoPriceTest != null) {
      json[r'is_detail_no_price_test'] = this.isDetailNoPriceTest;
    } else {
      json[r'is_detail_no_price_test'] = null;
    }
    if (this.isDetailActivated != null) {
      json[r'is_detail_activated'] = this.isDetailActivated;
    } else {
      json[r'is_detail_activated'] = null;
    }
    if (this.isDetailContinued != null) {
      json[r'is_detail_continued'] = this.isDetailContinued;
    } else {
      json[r'is_detail_continued'] = null;
    }
    if (this.isDetailDeactivated != null) {
      json[r'is_detail_deactivated'] = this.isDetailDeactivated;
    } else {
      json[r'is_detail_deactivated'] = null;
    }
    if (this.isDetailNotAvailable != null) {
      json[r'is_detail_not_available'] = this.isDetailNotAvailable;
    } else {
      json[r'is_detail_not_available'] = null;
    }
    return json;
  }

  /// Returns a new [AdminShortSalePriceTestStatusModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminShortSalePriceTestStatusModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminShortSalePriceTestStatusModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminShortSalePriceTestStatusModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminShortSalePriceTestStatusModel(
        symbol: mapValueOfType<String>(json, r'symbol'),
        timestampNanos: mapValueOfType<int>(json, r'timestamp_nanos'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        shortSalePriceTestStatus: mapValueOfType<int>(json, r'short_sale_price_test_status'),
        shortSalePriceTestStatusCode: mapValueOfType<String>(json, r'short_sale_price_test_status_code'),
        shortSalePriceTestStatusText: mapValueOfType<String>(json, r'short_sale_price_test_status_text'),
        isShortSalePriceTestNotInEffect: mapValueOfType<bool>(json, r'is_short_sale_price_test_not_in_effect'),
        isShortSalePriceTestInEffect: mapValueOfType<bool>(json, r'is_short_sale_price_test_in_effect'),
        detail: mapValueOfType<int>(json, r'detail'),
        detailCode: mapValueOfType<String>(json, r'detail_code'),
        detailText: mapValueOfType<String>(json, r'detail_text'),
        isDetailNoPriceTest: mapValueOfType<bool>(json, r'is_detail_no_price_test'),
        isDetailActivated: mapValueOfType<bool>(json, r'is_detail_activated'),
        isDetailContinued: mapValueOfType<bool>(json, r'is_detail_continued'),
        isDetailDeactivated: mapValueOfType<bool>(json, r'is_detail_deactivated'),
        isDetailNotAvailable: mapValueOfType<bool>(json, r'is_detail_not_available'),
      );
    }
    return null;
  }

  static List<AdminShortSalePriceTestStatusModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminShortSalePriceTestStatusModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminShortSalePriceTestStatusModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminShortSalePriceTestStatusModel> mapFromJson(dynamic json) {
    final map = <String, AdminShortSalePriceTestStatusModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminShortSalePriceTestStatusModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminShortSalePriceTestStatusModel-objects as value to a dart map
  static Map<String, List<AdminShortSalePriceTestStatusModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminShortSalePriceTestStatusModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminShortSalePriceTestStatusModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

