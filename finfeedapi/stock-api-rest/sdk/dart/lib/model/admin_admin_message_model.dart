//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminAdminMessageModel {
  /// Returns a new [AdminAdminMessageModel] instance.
  AdminAdminMessageModel({
    this.tradingStatus,
    this.officialPrice,
    this.securityEvent,
    this.auctionInformation,
    this.shortSalePriceTest,
    this.operationalHaltStatus,
    this.retailLiquidityIndicator,
    this.systemEvent,
    this.securityDirectory,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdminTradingStatusModel? tradingStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdminOfficialPriceModel? officialPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdminSecurityEventModel? securityEvent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdminAuctionInformationModel? auctionInformation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdminShortSalePriceTestStatusModel? shortSalePriceTest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdminOperationalHaltStatusModel? operationalHaltStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdminRetailLiquidityIndicatorModel? retailLiquidityIndicator;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdminSystemEventModel? systemEvent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdminSecurityDirectoryModel? securityDirectory;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminAdminMessageModel &&
    other.tradingStatus == tradingStatus &&
    other.officialPrice == officialPrice &&
    other.securityEvent == securityEvent &&
    other.auctionInformation == auctionInformation &&
    other.shortSalePriceTest == shortSalePriceTest &&
    other.operationalHaltStatus == operationalHaltStatus &&
    other.retailLiquidityIndicator == retailLiquidityIndicator &&
    other.systemEvent == systemEvent &&
    other.securityDirectory == securityDirectory;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tradingStatus == null ? 0 : tradingStatus!.hashCode) +
    (officialPrice == null ? 0 : officialPrice!.hashCode) +
    (securityEvent == null ? 0 : securityEvent!.hashCode) +
    (auctionInformation == null ? 0 : auctionInformation!.hashCode) +
    (shortSalePriceTest == null ? 0 : shortSalePriceTest!.hashCode) +
    (operationalHaltStatus == null ? 0 : operationalHaltStatus!.hashCode) +
    (retailLiquidityIndicator == null ? 0 : retailLiquidityIndicator!.hashCode) +
    (systemEvent == null ? 0 : systemEvent!.hashCode) +
    (securityDirectory == null ? 0 : securityDirectory!.hashCode);

  @override
  String toString() => 'AdminAdminMessageModel[tradingStatus=$tradingStatus, officialPrice=$officialPrice, securityEvent=$securityEvent, auctionInformation=$auctionInformation, shortSalePriceTest=$shortSalePriceTest, operationalHaltStatus=$operationalHaltStatus, retailLiquidityIndicator=$retailLiquidityIndicator, systemEvent=$systemEvent, securityDirectory=$securityDirectory]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.tradingStatus != null) {
      json[r'trading_status'] = this.tradingStatus;
    } else {
      json[r'trading_status'] = null;
    }
    if (this.officialPrice != null) {
      json[r'official_price'] = this.officialPrice;
    } else {
      json[r'official_price'] = null;
    }
    if (this.securityEvent != null) {
      json[r'security_event'] = this.securityEvent;
    } else {
      json[r'security_event'] = null;
    }
    if (this.auctionInformation != null) {
      json[r'auction_information'] = this.auctionInformation;
    } else {
      json[r'auction_information'] = null;
    }
    if (this.shortSalePriceTest != null) {
      json[r'short_sale_price_test'] = this.shortSalePriceTest;
    } else {
      json[r'short_sale_price_test'] = null;
    }
    if (this.operationalHaltStatus != null) {
      json[r'operational_halt_status'] = this.operationalHaltStatus;
    } else {
      json[r'operational_halt_status'] = null;
    }
    if (this.retailLiquidityIndicator != null) {
      json[r'retail_liquidity_indicator'] = this.retailLiquidityIndicator;
    } else {
      json[r'retail_liquidity_indicator'] = null;
    }
    if (this.systemEvent != null) {
      json[r'system_event'] = this.systemEvent;
    } else {
      json[r'system_event'] = null;
    }
    if (this.securityDirectory != null) {
      json[r'security_directory'] = this.securityDirectory;
    } else {
      json[r'security_directory'] = null;
    }
    return json;
  }

  /// Returns a new [AdminAdminMessageModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminAdminMessageModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminAdminMessageModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminAdminMessageModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminAdminMessageModel(
        tradingStatus: AdminTradingStatusModel.fromJson(json[r'trading_status']),
        officialPrice: AdminOfficialPriceModel.fromJson(json[r'official_price']),
        securityEvent: AdminSecurityEventModel.fromJson(json[r'security_event']),
        auctionInformation: AdminAuctionInformationModel.fromJson(json[r'auction_information']),
        shortSalePriceTest: AdminShortSalePriceTestStatusModel.fromJson(json[r'short_sale_price_test']),
        operationalHaltStatus: AdminOperationalHaltStatusModel.fromJson(json[r'operational_halt_status']),
        retailLiquidityIndicator: AdminRetailLiquidityIndicatorModel.fromJson(json[r'retail_liquidity_indicator']),
        systemEvent: AdminSystemEventModel.fromJson(json[r'system_event']),
        securityDirectory: AdminSecurityDirectoryModel.fromJson(json[r'security_directory']),
      );
    }
    return null;
  }

  static List<AdminAdminMessageModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminAdminMessageModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminAdminMessageModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminAdminMessageModel> mapFromJson(dynamic json) {
    final map = <String, AdminAdminMessageModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminAdminMessageModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminAdminMessageModel-objects as value to a dart map
  static Map<String, List<AdminAdminMessageModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminAdminMessageModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminAdminMessageModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

