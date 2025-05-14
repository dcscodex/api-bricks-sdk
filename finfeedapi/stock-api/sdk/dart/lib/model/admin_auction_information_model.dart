//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminAuctionInformationModel {
  /// Returns a new [AdminAuctionInformationModel] instance.
  AdminAuctionInformationModel({
    this.symbol,
    this.timestampNanos,
    this.timestamp,
    this.auctionType,
    this.auctionTypeCode,
    this.auctionTypeText,
    this.isAuctionTypeOpening,
    this.isAuctionTypeClosing,
    this.isAuctionTypeIpo,
    this.isAuctionTypeHalt,
    this.isAuctionTypeVolatility,
    this.pairedShares,
    this.referencePrice,
    this.indicativeClearingPrice,
    this.imbalanceShares,
    this.imbalanceSide,
    this.imbalanceSideCode,
    this.imbalanceSideText,
    this.isImbalanceSideBuy,
    this.isImbalanceSideSell,
    this.isImbalanceSideNone,
    this.extensionNumber,
    this.scheduledAuctionTimeSeconds,
    this.scheduledAuctionTime,
    this.auctionBookClearingPrice,
    this.collarReferencePrice,
    this.lowerAuctionCollar,
    this.upperAuctionCollar,
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

  /// Time when the auction data was recorded as DateTime
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// Type of auction as byte value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? auctionType;

  /// Type of auction as character string
  String? auctionTypeCode;

  /// Human-readable description of the auction type
  String? auctionTypeText;

  /// Indicates if the auction type is 'Opening Auction' ('O'/0x4f).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAuctionTypeOpening;

  /// Indicates if the auction type is 'Closing Auction' ('C'/0x43).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAuctionTypeClosing;

  /// Indicates if the auction type is 'IPO Auction' ('I'/0x49).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAuctionTypeIpo;

  /// Indicates if the auction type is 'Halt Auction' ('H'/0x48).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAuctionTypeHalt;

  /// Indicates if the auction type is 'Volatility Auction' ('V'/0x56).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAuctionTypeVolatility;

  /// Number of shares paired at the Reference Price
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pairedShares;

  /// Reference price as decimal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? referencePrice;

  /// Indicative clearing price as decimal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? indicativeClearingPrice;

  /// Number of unpaired shares at the Reference Price
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? imbalanceShares;

  /// Side of the imbalance as byte value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? imbalanceSide;

  /// Side of the imbalance as character string
  String? imbalanceSideCode;

  /// Human-readable description of the imbalance side
  String? imbalanceSideText;

  /// Indicates if there is a buy-side imbalance ('B'/0x42).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isImbalanceSideBuy;

  /// Indicates if there is a sell-side imbalance ('S'/0x53).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isImbalanceSideSell;

  /// Indicates if there is no imbalance ('N'/0x4e).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isImbalanceSideNone;

  /// Number of extensions to the auction
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? extensionNumber;

  /// Scheduled auction time in seconds since epoch
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduledAuctionTimeSeconds;

  /// Scheduled time for the auction as DateTime
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? scheduledAuctionTime;

  /// Auction book clearing price as decimal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? auctionBookClearingPrice;

  /// Collar reference price as decimal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? collarReferencePrice;

  /// Lower auction collar as decimal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? lowerAuctionCollar;

  /// Upper auction collar as decimal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? upperAuctionCollar;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminAuctionInformationModel &&
    other.symbol == symbol &&
    other.timestampNanos == timestampNanos &&
    other.timestamp == timestamp &&
    other.auctionType == auctionType &&
    other.auctionTypeCode == auctionTypeCode &&
    other.auctionTypeText == auctionTypeText &&
    other.isAuctionTypeOpening == isAuctionTypeOpening &&
    other.isAuctionTypeClosing == isAuctionTypeClosing &&
    other.isAuctionTypeIpo == isAuctionTypeIpo &&
    other.isAuctionTypeHalt == isAuctionTypeHalt &&
    other.isAuctionTypeVolatility == isAuctionTypeVolatility &&
    other.pairedShares == pairedShares &&
    other.referencePrice == referencePrice &&
    other.indicativeClearingPrice == indicativeClearingPrice &&
    other.imbalanceShares == imbalanceShares &&
    other.imbalanceSide == imbalanceSide &&
    other.imbalanceSideCode == imbalanceSideCode &&
    other.imbalanceSideText == imbalanceSideText &&
    other.isImbalanceSideBuy == isImbalanceSideBuy &&
    other.isImbalanceSideSell == isImbalanceSideSell &&
    other.isImbalanceSideNone == isImbalanceSideNone &&
    other.extensionNumber == extensionNumber &&
    other.scheduledAuctionTimeSeconds == scheduledAuctionTimeSeconds &&
    other.scheduledAuctionTime == scheduledAuctionTime &&
    other.auctionBookClearingPrice == auctionBookClearingPrice &&
    other.collarReferencePrice == collarReferencePrice &&
    other.lowerAuctionCollar == lowerAuctionCollar &&
    other.upperAuctionCollar == upperAuctionCollar;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbol == null ? 0 : symbol!.hashCode) +
    (timestampNanos == null ? 0 : timestampNanos!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (auctionType == null ? 0 : auctionType!.hashCode) +
    (auctionTypeCode == null ? 0 : auctionTypeCode!.hashCode) +
    (auctionTypeText == null ? 0 : auctionTypeText!.hashCode) +
    (isAuctionTypeOpening == null ? 0 : isAuctionTypeOpening!.hashCode) +
    (isAuctionTypeClosing == null ? 0 : isAuctionTypeClosing!.hashCode) +
    (isAuctionTypeIpo == null ? 0 : isAuctionTypeIpo!.hashCode) +
    (isAuctionTypeHalt == null ? 0 : isAuctionTypeHalt!.hashCode) +
    (isAuctionTypeVolatility == null ? 0 : isAuctionTypeVolatility!.hashCode) +
    (pairedShares == null ? 0 : pairedShares!.hashCode) +
    (referencePrice == null ? 0 : referencePrice!.hashCode) +
    (indicativeClearingPrice == null ? 0 : indicativeClearingPrice!.hashCode) +
    (imbalanceShares == null ? 0 : imbalanceShares!.hashCode) +
    (imbalanceSide == null ? 0 : imbalanceSide!.hashCode) +
    (imbalanceSideCode == null ? 0 : imbalanceSideCode!.hashCode) +
    (imbalanceSideText == null ? 0 : imbalanceSideText!.hashCode) +
    (isImbalanceSideBuy == null ? 0 : isImbalanceSideBuy!.hashCode) +
    (isImbalanceSideSell == null ? 0 : isImbalanceSideSell!.hashCode) +
    (isImbalanceSideNone == null ? 0 : isImbalanceSideNone!.hashCode) +
    (extensionNumber == null ? 0 : extensionNumber!.hashCode) +
    (scheduledAuctionTimeSeconds == null ? 0 : scheduledAuctionTimeSeconds!.hashCode) +
    (scheduledAuctionTime == null ? 0 : scheduledAuctionTime!.hashCode) +
    (auctionBookClearingPrice == null ? 0 : auctionBookClearingPrice!.hashCode) +
    (collarReferencePrice == null ? 0 : collarReferencePrice!.hashCode) +
    (lowerAuctionCollar == null ? 0 : lowerAuctionCollar!.hashCode) +
    (upperAuctionCollar == null ? 0 : upperAuctionCollar!.hashCode);

  @override
  String toString() => 'AdminAuctionInformationModel[symbol=$symbol, timestampNanos=$timestampNanos, timestamp=$timestamp, auctionType=$auctionType, auctionTypeCode=$auctionTypeCode, auctionTypeText=$auctionTypeText, isAuctionTypeOpening=$isAuctionTypeOpening, isAuctionTypeClosing=$isAuctionTypeClosing, isAuctionTypeIpo=$isAuctionTypeIpo, isAuctionTypeHalt=$isAuctionTypeHalt, isAuctionTypeVolatility=$isAuctionTypeVolatility, pairedShares=$pairedShares, referencePrice=$referencePrice, indicativeClearingPrice=$indicativeClearingPrice, imbalanceShares=$imbalanceShares, imbalanceSide=$imbalanceSide, imbalanceSideCode=$imbalanceSideCode, imbalanceSideText=$imbalanceSideText, isImbalanceSideBuy=$isImbalanceSideBuy, isImbalanceSideSell=$isImbalanceSideSell, isImbalanceSideNone=$isImbalanceSideNone, extensionNumber=$extensionNumber, scheduledAuctionTimeSeconds=$scheduledAuctionTimeSeconds, scheduledAuctionTime=$scheduledAuctionTime, auctionBookClearingPrice=$auctionBookClearingPrice, collarReferencePrice=$collarReferencePrice, lowerAuctionCollar=$lowerAuctionCollar, upperAuctionCollar=$upperAuctionCollar]';

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
    if (this.auctionType != null) {
      json[r'auction_type'] = this.auctionType;
    } else {
      json[r'auction_type'] = null;
    }
    if (this.auctionTypeCode != null) {
      json[r'auction_type_code'] = this.auctionTypeCode;
    } else {
      json[r'auction_type_code'] = null;
    }
    if (this.auctionTypeText != null) {
      json[r'auction_type_text'] = this.auctionTypeText;
    } else {
      json[r'auction_type_text'] = null;
    }
    if (this.isAuctionTypeOpening != null) {
      json[r'is_auction_type_opening'] = this.isAuctionTypeOpening;
    } else {
      json[r'is_auction_type_opening'] = null;
    }
    if (this.isAuctionTypeClosing != null) {
      json[r'is_auction_type_closing'] = this.isAuctionTypeClosing;
    } else {
      json[r'is_auction_type_closing'] = null;
    }
    if (this.isAuctionTypeIpo != null) {
      json[r'is_auction_type_ipo'] = this.isAuctionTypeIpo;
    } else {
      json[r'is_auction_type_ipo'] = null;
    }
    if (this.isAuctionTypeHalt != null) {
      json[r'is_auction_type_halt'] = this.isAuctionTypeHalt;
    } else {
      json[r'is_auction_type_halt'] = null;
    }
    if (this.isAuctionTypeVolatility != null) {
      json[r'is_auction_type_volatility'] = this.isAuctionTypeVolatility;
    } else {
      json[r'is_auction_type_volatility'] = null;
    }
    if (this.pairedShares != null) {
      json[r'paired_shares'] = this.pairedShares;
    } else {
      json[r'paired_shares'] = null;
    }
    if (this.referencePrice != null) {
      json[r'reference_price'] = this.referencePrice;
    } else {
      json[r'reference_price'] = null;
    }
    if (this.indicativeClearingPrice != null) {
      json[r'indicative_clearing_price'] = this.indicativeClearingPrice;
    } else {
      json[r'indicative_clearing_price'] = null;
    }
    if (this.imbalanceShares != null) {
      json[r'imbalance_shares'] = this.imbalanceShares;
    } else {
      json[r'imbalance_shares'] = null;
    }
    if (this.imbalanceSide != null) {
      json[r'imbalance_side'] = this.imbalanceSide;
    } else {
      json[r'imbalance_side'] = null;
    }
    if (this.imbalanceSideCode != null) {
      json[r'imbalance_side_code'] = this.imbalanceSideCode;
    } else {
      json[r'imbalance_side_code'] = null;
    }
    if (this.imbalanceSideText != null) {
      json[r'imbalance_side_text'] = this.imbalanceSideText;
    } else {
      json[r'imbalance_side_text'] = null;
    }
    if (this.isImbalanceSideBuy != null) {
      json[r'is_imbalance_side_buy'] = this.isImbalanceSideBuy;
    } else {
      json[r'is_imbalance_side_buy'] = null;
    }
    if (this.isImbalanceSideSell != null) {
      json[r'is_imbalance_side_sell'] = this.isImbalanceSideSell;
    } else {
      json[r'is_imbalance_side_sell'] = null;
    }
    if (this.isImbalanceSideNone != null) {
      json[r'is_imbalance_side_none'] = this.isImbalanceSideNone;
    } else {
      json[r'is_imbalance_side_none'] = null;
    }
    if (this.extensionNumber != null) {
      json[r'extension_number'] = this.extensionNumber;
    } else {
      json[r'extension_number'] = null;
    }
    if (this.scheduledAuctionTimeSeconds != null) {
      json[r'scheduled_auction_time_seconds'] = this.scheduledAuctionTimeSeconds;
    } else {
      json[r'scheduled_auction_time_seconds'] = null;
    }
    if (this.scheduledAuctionTime != null) {
      json[r'scheduled_auction_time'] = this.scheduledAuctionTime!.toUtc().toIso8601String();
    } else {
      json[r'scheduled_auction_time'] = null;
    }
    if (this.auctionBookClearingPrice != null) {
      json[r'auction_book_clearing_price'] = this.auctionBookClearingPrice;
    } else {
      json[r'auction_book_clearing_price'] = null;
    }
    if (this.collarReferencePrice != null) {
      json[r'collar_reference_price'] = this.collarReferencePrice;
    } else {
      json[r'collar_reference_price'] = null;
    }
    if (this.lowerAuctionCollar != null) {
      json[r'lower_auction_collar'] = this.lowerAuctionCollar;
    } else {
      json[r'lower_auction_collar'] = null;
    }
    if (this.upperAuctionCollar != null) {
      json[r'upper_auction_collar'] = this.upperAuctionCollar;
    } else {
      json[r'upper_auction_collar'] = null;
    }
    return json;
  }

  /// Returns a new [AdminAuctionInformationModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminAuctionInformationModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminAuctionInformationModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminAuctionInformationModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminAuctionInformationModel(
        symbol: mapValueOfType<String>(json, r'symbol'),
        timestampNanos: mapValueOfType<int>(json, r'timestamp_nanos'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        auctionType: mapValueOfType<int>(json, r'auction_type'),
        auctionTypeCode: mapValueOfType<String>(json, r'auction_type_code'),
        auctionTypeText: mapValueOfType<String>(json, r'auction_type_text'),
        isAuctionTypeOpening: mapValueOfType<bool>(json, r'is_auction_type_opening'),
        isAuctionTypeClosing: mapValueOfType<bool>(json, r'is_auction_type_closing'),
        isAuctionTypeIpo: mapValueOfType<bool>(json, r'is_auction_type_ipo'),
        isAuctionTypeHalt: mapValueOfType<bool>(json, r'is_auction_type_halt'),
        isAuctionTypeVolatility: mapValueOfType<bool>(json, r'is_auction_type_volatility'),
        pairedShares: mapValueOfType<int>(json, r'paired_shares'),
        referencePrice: mapValueOfType<double>(json, r'reference_price'),
        indicativeClearingPrice: mapValueOfType<double>(json, r'indicative_clearing_price'),
        imbalanceShares: mapValueOfType<int>(json, r'imbalance_shares'),
        imbalanceSide: mapValueOfType<int>(json, r'imbalance_side'),
        imbalanceSideCode: mapValueOfType<String>(json, r'imbalance_side_code'),
        imbalanceSideText: mapValueOfType<String>(json, r'imbalance_side_text'),
        isImbalanceSideBuy: mapValueOfType<bool>(json, r'is_imbalance_side_buy'),
        isImbalanceSideSell: mapValueOfType<bool>(json, r'is_imbalance_side_sell'),
        isImbalanceSideNone: mapValueOfType<bool>(json, r'is_imbalance_side_none'),
        extensionNumber: mapValueOfType<int>(json, r'extension_number'),
        scheduledAuctionTimeSeconds: mapValueOfType<int>(json, r'scheduled_auction_time_seconds'),
        scheduledAuctionTime: mapDateTime(json, r'scheduled_auction_time', r''),
        auctionBookClearingPrice: mapValueOfType<double>(json, r'auction_book_clearing_price'),
        collarReferencePrice: mapValueOfType<double>(json, r'collar_reference_price'),
        lowerAuctionCollar: mapValueOfType<double>(json, r'lower_auction_collar'),
        upperAuctionCollar: mapValueOfType<double>(json, r'upper_auction_collar'),
      );
    }
    return null;
  }

  static List<AdminAuctionInformationModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminAuctionInformationModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminAuctionInformationModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminAuctionInformationModel> mapFromJson(dynamic json) {
    final map = <String, AdminAuctionInformationModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminAuctionInformationModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminAuctionInformationModel-objects as value to a dart map
  static Map<String, List<AdminAuctionInformationModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminAuctionInformationModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminAuctionInformationModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

