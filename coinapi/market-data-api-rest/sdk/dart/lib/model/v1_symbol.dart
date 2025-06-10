//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1Symbol {
  /// Returns a new [V1Symbol] instance.
  V1Symbol({
    this.symbolId,
    this.exchangeId,
    this.symbolType,
    this.assetIdBase,
    this.assetIdQuote,
    this.assetIdUnit,
    this.futureContractUnit,
    this.futureContractUnitAsset,
    this.futureDeliveryTime,
    this.optionTypeIsCall,
    this.optionStrikePrice,
    this.optionContractUnit,
    this.optionExerciseStyle,
    this.optionExpirationTime,
    this.contractDeliveryTime,
    this.contractUnit,
    this.contractUnitAsset,
    this.contractId,
    this.contractDisplayName,
    this.contractDisplayDescription,
    this.dataStart,
    this.dataEnd,
    this.dataQuoteStart,
    this.dataQuoteEnd,
    this.dataOrderbookStart,
    this.dataOrderbookEnd,
    this.dataTradeStart,
    this.dataTradeEnd,
    this.indexId,
    this.indexDisplayName,
    this.indexDisplayDescription,
    this.volume1hrs,
    this.volume1hrsUsd,
    this.volume1day,
    this.volume1dayUsd,
    this.volume1mth,
    this.volume1mthUsd,
    this.price,
    this.symbolIdExchange,
    this.assetIdBaseExchange,
    this.assetIdQuoteExchange,
    this.pricePrecision,
    this.sizePrecision,
    this.rawKvp = const {},
    this.volumeToUsd,
  });

  /// The symbol identifier.
  String? symbolId;

  /// The exchange identifier.
  String? exchangeId;

  /// The symbol type.
  String? symbolType;

  /// The base asset identifier.
  String? assetIdBase;

  /// The quote asset identifier.
  String? assetIdQuote;

  /// The unit asset identifier.
  String? assetIdUnit;

  /// The contract unit for futures.
  double? futureContractUnit;

  /// The asset used as the unit for futures contract.
  String? futureContractUnitAsset;

  /// The future delivery time for futures contract.
  DateTime? futureDeliveryTime;

  /// Indicates whether the option type is a call.
  bool? optionTypeIsCall;

  /// The strike price for options.
  double? optionStrikePrice;

  /// The contract unit for options.
  double? optionContractUnit;

  /// The exercise style for options.
  String? optionExerciseStyle;

  /// The expiration time for options.
  DateTime? optionExpirationTime;

  /// The delivery time for contracts.
  DateTime? contractDeliveryTime;

  /// The contract unit for contracts.
  double? contractUnit;

  /// The asset used as the unit for contracts.
  String? contractUnitAsset;

  /// The contract identifier.
  String? contractId;

  /// The display name of the contract.
  String? contractDisplayName;

  /// The display description of the contract.
  String? contractDisplayDescription;

  String? dataStart;

  String? dataEnd;

  /// The start date of quote data.
  DateTime? dataQuoteStart;

  /// The end date of quote data.
  DateTime? dataQuoteEnd;

  /// The start date of order book data.
  DateTime? dataOrderbookStart;

  /// The end date of order book data.
  DateTime? dataOrderbookEnd;

  /// The start date of trade data.
  DateTime? dataTradeStart;

  /// The end date of trade data.
  DateTime? dataTradeEnd;

  /// The index identifier.
  String? indexId;

  /// The display name of the index.
  String? indexDisplayName;

  /// The display description of the index.
  String? indexDisplayDescription;

  /// The volume in the last 1 hour.
  double? volume1hrs;

  /// The volume in USD in the last 1 hour.
  double? volume1hrsUsd;

  /// The volume in the last 1 day.
  double? volume1day;

  /// The volume in USD in the last 1 day.
  double? volume1dayUsd;

  /// The volume in the last 1 month.
  double? volume1mth;

  /// The volume in USD in the last 1 month.
  double? volume1mthUsd;

  /// The price.
  double? price;

  /// The symbol identifier in the exchange.
  String? symbolIdExchange;

  /// The base asset identifier in the exchange.
  String? assetIdBaseExchange;

  /// The quote asset identifier in the exchange.
  String? assetIdQuoteExchange;

  /// The price precision.
  double? pricePrecision;

  /// The size precision.
  double? sizePrecision;

  /// Not normalized raw kvp data.
  Map<String, String>? rawKvp;

  /// Volume unit in USD.
  double? volumeToUsd;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Symbol &&
    other.symbolId == symbolId &&
    other.exchangeId == exchangeId &&
    other.symbolType == symbolType &&
    other.assetIdBase == assetIdBase &&
    other.assetIdQuote == assetIdQuote &&
    other.assetIdUnit == assetIdUnit &&
    other.futureContractUnit == futureContractUnit &&
    other.futureContractUnitAsset == futureContractUnitAsset &&
    other.futureDeliveryTime == futureDeliveryTime &&
    other.optionTypeIsCall == optionTypeIsCall &&
    other.optionStrikePrice == optionStrikePrice &&
    other.optionContractUnit == optionContractUnit &&
    other.optionExerciseStyle == optionExerciseStyle &&
    other.optionExpirationTime == optionExpirationTime &&
    other.contractDeliveryTime == contractDeliveryTime &&
    other.contractUnit == contractUnit &&
    other.contractUnitAsset == contractUnitAsset &&
    other.contractId == contractId &&
    other.contractDisplayName == contractDisplayName &&
    other.contractDisplayDescription == contractDisplayDescription &&
    other.dataStart == dataStart &&
    other.dataEnd == dataEnd &&
    other.dataQuoteStart == dataQuoteStart &&
    other.dataQuoteEnd == dataQuoteEnd &&
    other.dataOrderbookStart == dataOrderbookStart &&
    other.dataOrderbookEnd == dataOrderbookEnd &&
    other.dataTradeStart == dataTradeStart &&
    other.dataTradeEnd == dataTradeEnd &&
    other.indexId == indexId &&
    other.indexDisplayName == indexDisplayName &&
    other.indexDisplayDescription == indexDisplayDescription &&
    other.volume1hrs == volume1hrs &&
    other.volume1hrsUsd == volume1hrsUsd &&
    other.volume1day == volume1day &&
    other.volume1dayUsd == volume1dayUsd &&
    other.volume1mth == volume1mth &&
    other.volume1mthUsd == volume1mthUsd &&
    other.price == price &&
    other.symbolIdExchange == symbolIdExchange &&
    other.assetIdBaseExchange == assetIdBaseExchange &&
    other.assetIdQuoteExchange == assetIdQuoteExchange &&
    other.pricePrecision == pricePrecision &&
    other.sizePrecision == sizePrecision &&
    _deepEquality.equals(other.rawKvp, rawKvp) &&
    other.volumeToUsd == volumeToUsd;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbolId == null ? 0 : symbolId!.hashCode) +
    (exchangeId == null ? 0 : exchangeId!.hashCode) +
    (symbolType == null ? 0 : symbolType!.hashCode) +
    (assetIdBase == null ? 0 : assetIdBase!.hashCode) +
    (assetIdQuote == null ? 0 : assetIdQuote!.hashCode) +
    (assetIdUnit == null ? 0 : assetIdUnit!.hashCode) +
    (futureContractUnit == null ? 0 : futureContractUnit!.hashCode) +
    (futureContractUnitAsset == null ? 0 : futureContractUnitAsset!.hashCode) +
    (futureDeliveryTime == null ? 0 : futureDeliveryTime!.hashCode) +
    (optionTypeIsCall == null ? 0 : optionTypeIsCall!.hashCode) +
    (optionStrikePrice == null ? 0 : optionStrikePrice!.hashCode) +
    (optionContractUnit == null ? 0 : optionContractUnit!.hashCode) +
    (optionExerciseStyle == null ? 0 : optionExerciseStyle!.hashCode) +
    (optionExpirationTime == null ? 0 : optionExpirationTime!.hashCode) +
    (contractDeliveryTime == null ? 0 : contractDeliveryTime!.hashCode) +
    (contractUnit == null ? 0 : contractUnit!.hashCode) +
    (contractUnitAsset == null ? 0 : contractUnitAsset!.hashCode) +
    (contractId == null ? 0 : contractId!.hashCode) +
    (contractDisplayName == null ? 0 : contractDisplayName!.hashCode) +
    (contractDisplayDescription == null ? 0 : contractDisplayDescription!.hashCode) +
    (dataStart == null ? 0 : dataStart!.hashCode) +
    (dataEnd == null ? 0 : dataEnd!.hashCode) +
    (dataQuoteStart == null ? 0 : dataQuoteStart!.hashCode) +
    (dataQuoteEnd == null ? 0 : dataQuoteEnd!.hashCode) +
    (dataOrderbookStart == null ? 0 : dataOrderbookStart!.hashCode) +
    (dataOrderbookEnd == null ? 0 : dataOrderbookEnd!.hashCode) +
    (dataTradeStart == null ? 0 : dataTradeStart!.hashCode) +
    (dataTradeEnd == null ? 0 : dataTradeEnd!.hashCode) +
    (indexId == null ? 0 : indexId!.hashCode) +
    (indexDisplayName == null ? 0 : indexDisplayName!.hashCode) +
    (indexDisplayDescription == null ? 0 : indexDisplayDescription!.hashCode) +
    (volume1hrs == null ? 0 : volume1hrs!.hashCode) +
    (volume1hrsUsd == null ? 0 : volume1hrsUsd!.hashCode) +
    (volume1day == null ? 0 : volume1day!.hashCode) +
    (volume1dayUsd == null ? 0 : volume1dayUsd!.hashCode) +
    (volume1mth == null ? 0 : volume1mth!.hashCode) +
    (volume1mthUsd == null ? 0 : volume1mthUsd!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (symbolIdExchange == null ? 0 : symbolIdExchange!.hashCode) +
    (assetIdBaseExchange == null ? 0 : assetIdBaseExchange!.hashCode) +
    (assetIdQuoteExchange == null ? 0 : assetIdQuoteExchange!.hashCode) +
    (pricePrecision == null ? 0 : pricePrecision!.hashCode) +
    (sizePrecision == null ? 0 : sizePrecision!.hashCode) +
    (rawKvp == null ? 0 : rawKvp!.hashCode) +
    (volumeToUsd == null ? 0 : volumeToUsd!.hashCode);

  @override
  String toString() => 'V1Symbol[symbolId=$symbolId, exchangeId=$exchangeId, symbolType=$symbolType, assetIdBase=$assetIdBase, assetIdQuote=$assetIdQuote, assetIdUnit=$assetIdUnit, futureContractUnit=$futureContractUnit, futureContractUnitAsset=$futureContractUnitAsset, futureDeliveryTime=$futureDeliveryTime, optionTypeIsCall=$optionTypeIsCall, optionStrikePrice=$optionStrikePrice, optionContractUnit=$optionContractUnit, optionExerciseStyle=$optionExerciseStyle, optionExpirationTime=$optionExpirationTime, contractDeliveryTime=$contractDeliveryTime, contractUnit=$contractUnit, contractUnitAsset=$contractUnitAsset, contractId=$contractId, contractDisplayName=$contractDisplayName, contractDisplayDescription=$contractDisplayDescription, dataStart=$dataStart, dataEnd=$dataEnd, dataQuoteStart=$dataQuoteStart, dataQuoteEnd=$dataQuoteEnd, dataOrderbookStart=$dataOrderbookStart, dataOrderbookEnd=$dataOrderbookEnd, dataTradeStart=$dataTradeStart, dataTradeEnd=$dataTradeEnd, indexId=$indexId, indexDisplayName=$indexDisplayName, indexDisplayDescription=$indexDisplayDescription, volume1hrs=$volume1hrs, volume1hrsUsd=$volume1hrsUsd, volume1day=$volume1day, volume1dayUsd=$volume1dayUsd, volume1mth=$volume1mth, volume1mthUsd=$volume1mthUsd, price=$price, symbolIdExchange=$symbolIdExchange, assetIdBaseExchange=$assetIdBaseExchange, assetIdQuoteExchange=$assetIdQuoteExchange, pricePrecision=$pricePrecision, sizePrecision=$sizePrecision, rawKvp=$rawKvp, volumeToUsd=$volumeToUsd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.symbolId != null) {
      json[r'symbol_id'] = this.symbolId;
    } else {
      json[r'symbol_id'] = null;
    }
    if (this.exchangeId != null) {
      json[r'exchange_id'] = this.exchangeId;
    } else {
      json[r'exchange_id'] = null;
    }
    if (this.symbolType != null) {
      json[r'symbol_type'] = this.symbolType;
    } else {
      json[r'symbol_type'] = null;
    }
    if (this.assetIdBase != null) {
      json[r'asset_id_base'] = this.assetIdBase;
    } else {
      json[r'asset_id_base'] = null;
    }
    if (this.assetIdQuote != null) {
      json[r'asset_id_quote'] = this.assetIdQuote;
    } else {
      json[r'asset_id_quote'] = null;
    }
    if (this.assetIdUnit != null) {
      json[r'asset_id_unit'] = this.assetIdUnit;
    } else {
      json[r'asset_id_unit'] = null;
    }
    if (this.futureContractUnit != null) {
      json[r'future_contract_unit'] = this.futureContractUnit;
    } else {
      json[r'future_contract_unit'] = null;
    }
    if (this.futureContractUnitAsset != null) {
      json[r'future_contract_unit_asset'] = this.futureContractUnitAsset;
    } else {
      json[r'future_contract_unit_asset'] = null;
    }
    if (this.futureDeliveryTime != null) {
      json[r'future_delivery_time'] = this.futureDeliveryTime!.toUtc().toIso8601String();
    } else {
      json[r'future_delivery_time'] = null;
    }
    if (this.optionTypeIsCall != null) {
      json[r'option_type_is_call'] = this.optionTypeIsCall;
    } else {
      json[r'option_type_is_call'] = null;
    }
    if (this.optionStrikePrice != null) {
      json[r'option_strike_price'] = this.optionStrikePrice;
    } else {
      json[r'option_strike_price'] = null;
    }
    if (this.optionContractUnit != null) {
      json[r'option_contract_unit'] = this.optionContractUnit;
    } else {
      json[r'option_contract_unit'] = null;
    }
    if (this.optionExerciseStyle != null) {
      json[r'option_exercise_style'] = this.optionExerciseStyle;
    } else {
      json[r'option_exercise_style'] = null;
    }
    if (this.optionExpirationTime != null) {
      json[r'option_expiration_time'] = this.optionExpirationTime!.toUtc().toIso8601String();
    } else {
      json[r'option_expiration_time'] = null;
    }
    if (this.contractDeliveryTime != null) {
      json[r'contract_delivery_time'] = this.contractDeliveryTime!.toUtc().toIso8601String();
    } else {
      json[r'contract_delivery_time'] = null;
    }
    if (this.contractUnit != null) {
      json[r'contract_unit'] = this.contractUnit;
    } else {
      json[r'contract_unit'] = null;
    }
    if (this.contractUnitAsset != null) {
      json[r'contract_unit_asset'] = this.contractUnitAsset;
    } else {
      json[r'contract_unit_asset'] = null;
    }
    if (this.contractId != null) {
      json[r'contract_id'] = this.contractId;
    } else {
      json[r'contract_id'] = null;
    }
    if (this.contractDisplayName != null) {
      json[r'contract_display_name'] = this.contractDisplayName;
    } else {
      json[r'contract_display_name'] = null;
    }
    if (this.contractDisplayDescription != null) {
      json[r'contract_display_description'] = this.contractDisplayDescription;
    } else {
      json[r'contract_display_description'] = null;
    }
    if (this.dataStart != null) {
      json[r'data_start'] = this.dataStart;
    } else {
      json[r'data_start'] = null;
    }
    if (this.dataEnd != null) {
      json[r'data_end'] = this.dataEnd;
    } else {
      json[r'data_end'] = null;
    }
    if (this.dataQuoteStart != null) {
      json[r'data_quote_start'] = this.dataQuoteStart!.toUtc().toIso8601String();
    } else {
      json[r'data_quote_start'] = null;
    }
    if (this.dataQuoteEnd != null) {
      json[r'data_quote_end'] = this.dataQuoteEnd!.toUtc().toIso8601String();
    } else {
      json[r'data_quote_end'] = null;
    }
    if (this.dataOrderbookStart != null) {
      json[r'data_orderbook_start'] = this.dataOrderbookStart!.toUtc().toIso8601String();
    } else {
      json[r'data_orderbook_start'] = null;
    }
    if (this.dataOrderbookEnd != null) {
      json[r'data_orderbook_end'] = this.dataOrderbookEnd!.toUtc().toIso8601String();
    } else {
      json[r'data_orderbook_end'] = null;
    }
    if (this.dataTradeStart != null) {
      json[r'data_trade_start'] = this.dataTradeStart!.toUtc().toIso8601String();
    } else {
      json[r'data_trade_start'] = null;
    }
    if (this.dataTradeEnd != null) {
      json[r'data_trade_end'] = this.dataTradeEnd!.toUtc().toIso8601String();
    } else {
      json[r'data_trade_end'] = null;
    }
    if (this.indexId != null) {
      json[r'index_id'] = this.indexId;
    } else {
      json[r'index_id'] = null;
    }
    if (this.indexDisplayName != null) {
      json[r'index_display_name'] = this.indexDisplayName;
    } else {
      json[r'index_display_name'] = null;
    }
    if (this.indexDisplayDescription != null) {
      json[r'index_display_description'] = this.indexDisplayDescription;
    } else {
      json[r'index_display_description'] = null;
    }
    if (this.volume1hrs != null) {
      json[r'volume_1hrs'] = this.volume1hrs;
    } else {
      json[r'volume_1hrs'] = null;
    }
    if (this.volume1hrsUsd != null) {
      json[r'volume_1hrs_usd'] = this.volume1hrsUsd;
    } else {
      json[r'volume_1hrs_usd'] = null;
    }
    if (this.volume1day != null) {
      json[r'volume_1day'] = this.volume1day;
    } else {
      json[r'volume_1day'] = null;
    }
    if (this.volume1dayUsd != null) {
      json[r'volume_1day_usd'] = this.volume1dayUsd;
    } else {
      json[r'volume_1day_usd'] = null;
    }
    if (this.volume1mth != null) {
      json[r'volume_1mth'] = this.volume1mth;
    } else {
      json[r'volume_1mth'] = null;
    }
    if (this.volume1mthUsd != null) {
      json[r'volume_1mth_usd'] = this.volume1mthUsd;
    } else {
      json[r'volume_1mth_usd'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.symbolIdExchange != null) {
      json[r'symbol_id_exchange'] = this.symbolIdExchange;
    } else {
      json[r'symbol_id_exchange'] = null;
    }
    if (this.assetIdBaseExchange != null) {
      json[r'asset_id_base_exchange'] = this.assetIdBaseExchange;
    } else {
      json[r'asset_id_base_exchange'] = null;
    }
    if (this.assetIdQuoteExchange != null) {
      json[r'asset_id_quote_exchange'] = this.assetIdQuoteExchange;
    } else {
      json[r'asset_id_quote_exchange'] = null;
    }
    if (this.pricePrecision != null) {
      json[r'price_precision'] = this.pricePrecision;
    } else {
      json[r'price_precision'] = null;
    }
    if (this.sizePrecision != null) {
      json[r'size_precision'] = this.sizePrecision;
    } else {
      json[r'size_precision'] = null;
    }
    if (this.rawKvp != null) {
      json[r'raw_kvp'] = this.rawKvp;
    } else {
      json[r'raw_kvp'] = null;
    }
    if (this.volumeToUsd != null) {
      json[r'volume_to_usd'] = this.volumeToUsd;
    } else {
      json[r'volume_to_usd'] = null;
    }
    return json;
  }

  /// Returns a new [V1Symbol] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1Symbol? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1Symbol[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1Symbol[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1Symbol(
        symbolId: mapValueOfType<String>(json, r'symbol_id'),
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        symbolType: mapValueOfType<String>(json, r'symbol_type'),
        assetIdBase: mapValueOfType<String>(json, r'asset_id_base'),
        assetIdQuote: mapValueOfType<String>(json, r'asset_id_quote'),
        assetIdUnit: mapValueOfType<String>(json, r'asset_id_unit'),
        futureContractUnit: mapValueOfType<double>(json, r'future_contract_unit'),
        futureContractUnitAsset: mapValueOfType<String>(json, r'future_contract_unit_asset'),
        futureDeliveryTime: mapDateTime(json, r'future_delivery_time', r''),
        optionTypeIsCall: mapValueOfType<bool>(json, r'option_type_is_call'),
        optionStrikePrice: mapValueOfType<double>(json, r'option_strike_price'),
        optionContractUnit: mapValueOfType<double>(json, r'option_contract_unit'),
        optionExerciseStyle: mapValueOfType<String>(json, r'option_exercise_style'),
        optionExpirationTime: mapDateTime(json, r'option_expiration_time', r''),
        contractDeliveryTime: mapDateTime(json, r'contract_delivery_time', r''),
        contractUnit: mapValueOfType<double>(json, r'contract_unit'),
        contractUnitAsset: mapValueOfType<String>(json, r'contract_unit_asset'),
        contractId: mapValueOfType<String>(json, r'contract_id'),
        contractDisplayName: mapValueOfType<String>(json, r'contract_display_name'),
        contractDisplayDescription: mapValueOfType<String>(json, r'contract_display_description'),
        dataStart: mapValueOfType<String>(json, r'data_start'),
        dataEnd: mapValueOfType<String>(json, r'data_end'),
        dataQuoteStart: mapDateTime(json, r'data_quote_start', r''),
        dataQuoteEnd: mapDateTime(json, r'data_quote_end', r''),
        dataOrderbookStart: mapDateTime(json, r'data_orderbook_start', r''),
        dataOrderbookEnd: mapDateTime(json, r'data_orderbook_end', r''),
        dataTradeStart: mapDateTime(json, r'data_trade_start', r''),
        dataTradeEnd: mapDateTime(json, r'data_trade_end', r''),
        indexId: mapValueOfType<String>(json, r'index_id'),
        indexDisplayName: mapValueOfType<String>(json, r'index_display_name'),
        indexDisplayDescription: mapValueOfType<String>(json, r'index_display_description'),
        volume1hrs: mapValueOfType<double>(json, r'volume_1hrs'),
        volume1hrsUsd: mapValueOfType<double>(json, r'volume_1hrs_usd'),
        volume1day: mapValueOfType<double>(json, r'volume_1day'),
        volume1dayUsd: mapValueOfType<double>(json, r'volume_1day_usd'),
        volume1mth: mapValueOfType<double>(json, r'volume_1mth'),
        volume1mthUsd: mapValueOfType<double>(json, r'volume_1mth_usd'),
        price: mapValueOfType<double>(json, r'price'),
        symbolIdExchange: mapValueOfType<String>(json, r'symbol_id_exchange'),
        assetIdBaseExchange: mapValueOfType<String>(json, r'asset_id_base_exchange'),
        assetIdQuoteExchange: mapValueOfType<String>(json, r'asset_id_quote_exchange'),
        pricePrecision: mapValueOfType<double>(json, r'price_precision'),
        sizePrecision: mapValueOfType<double>(json, r'size_precision'),
        rawKvp: mapCastOfType<String, String>(json, r'raw_kvp') ?? const {},
        volumeToUsd: mapValueOfType<double>(json, r'volume_to_usd'),
      );
    }
    return null;
  }

  static List<V1Symbol> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1Symbol>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1Symbol.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1Symbol> mapFromJson(dynamic json) {
    final map = <String, V1Symbol>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1Symbol.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1Symbol-objects as value to a dart map
  static Map<String, List<V1Symbol>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1Symbol>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1Symbol.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

