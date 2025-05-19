//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1Asset {
  /// Returns a new [V1Asset] instance.
  V1Asset({
    this.assetId,
    this.name,
    this.typeIsCrypto,
    this.dataQuoteStart,
    this.dataQuoteEnd,
    this.dataOrderbookStart,
    this.dataOrderbookEnd,
    this.dataTradeStart,
    this.dataTradeEnd,
    this.dataSymbolsCount,
    this.volume1hrsUsd,
    this.volume1dayUsd,
    this.volume1mthUsd,
    this.priceUsd,
    this.idIcon,
    this.supplyCurrent,
    this.supplyTotal,
    this.supplyMax,
    this.chainAddresses = const [],
    this.dataStart,
    this.dataEnd,
  });

  /// Gets or sets the asset ID.
  String? assetId;

  /// Gets or sets the name of the asset.
  String? name;

  /// Gets or sets a value indicating whether the asset is a cryptocurrency.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? typeIsCrypto;

  /// Gets or sets the start date of quote data.
  DateTime? dataQuoteStart;

  /// Gets or sets the end date of quote data.
  DateTime? dataQuoteEnd;

  /// Gets or sets the start date of order book data.
  DateTime? dataOrderbookStart;

  /// Gets or sets the end date of order book data.
  DateTime? dataOrderbookEnd;

  /// Gets or sets the start date of trade data.
  DateTime? dataTradeStart;

  /// Gets or sets the end date of trade data.
  DateTime? dataTradeEnd;

  /// Gets or sets the number of symbols.
  int? dataSymbolsCount;

  /// Gets or sets the USD volume in the last 1 hour.
  double? volume1hrsUsd;

  /// Gets or sets the USD volume in the last 1 day.
  double? volume1dayUsd;

  /// Gets or sets the USD volume in the last 1 month.
  double? volume1mthUsd;

  /// Gets or sets the USD price of the asset.
  double? priceUsd;

  /// Gets or sets the ID of the icon for the asset.
  String? idIcon;

  /// Gets or sets the current supply of the asset.
  double? supplyCurrent;

  /// Gets or sets the total supply of the asset.
  double? supplyTotal;

  /// Gets or sets the maximum supply of the asset.
  double? supplyMax;

  /// 
  List<V1ChainNetworkAddress>? chainAddresses;

  String? dataStart;

  String? dataEnd;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Asset &&
    other.assetId == assetId &&
    other.name == name &&
    other.typeIsCrypto == typeIsCrypto &&
    other.dataQuoteStart == dataQuoteStart &&
    other.dataQuoteEnd == dataQuoteEnd &&
    other.dataOrderbookStart == dataOrderbookStart &&
    other.dataOrderbookEnd == dataOrderbookEnd &&
    other.dataTradeStart == dataTradeStart &&
    other.dataTradeEnd == dataTradeEnd &&
    other.dataSymbolsCount == dataSymbolsCount &&
    other.volume1hrsUsd == volume1hrsUsd &&
    other.volume1dayUsd == volume1dayUsd &&
    other.volume1mthUsd == volume1mthUsd &&
    other.priceUsd == priceUsd &&
    other.idIcon == idIcon &&
    other.supplyCurrent == supplyCurrent &&
    other.supplyTotal == supplyTotal &&
    other.supplyMax == supplyMax &&
    _deepEquality.equals(other.chainAddresses, chainAddresses) &&
    other.dataStart == dataStart &&
    other.dataEnd == dataEnd;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetId == null ? 0 : assetId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (typeIsCrypto == null ? 0 : typeIsCrypto!.hashCode) +
    (dataQuoteStart == null ? 0 : dataQuoteStart!.hashCode) +
    (dataQuoteEnd == null ? 0 : dataQuoteEnd!.hashCode) +
    (dataOrderbookStart == null ? 0 : dataOrderbookStart!.hashCode) +
    (dataOrderbookEnd == null ? 0 : dataOrderbookEnd!.hashCode) +
    (dataTradeStart == null ? 0 : dataTradeStart!.hashCode) +
    (dataTradeEnd == null ? 0 : dataTradeEnd!.hashCode) +
    (dataSymbolsCount == null ? 0 : dataSymbolsCount!.hashCode) +
    (volume1hrsUsd == null ? 0 : volume1hrsUsd!.hashCode) +
    (volume1dayUsd == null ? 0 : volume1dayUsd!.hashCode) +
    (volume1mthUsd == null ? 0 : volume1mthUsd!.hashCode) +
    (priceUsd == null ? 0 : priceUsd!.hashCode) +
    (idIcon == null ? 0 : idIcon!.hashCode) +
    (supplyCurrent == null ? 0 : supplyCurrent!.hashCode) +
    (supplyTotal == null ? 0 : supplyTotal!.hashCode) +
    (supplyMax == null ? 0 : supplyMax!.hashCode) +
    (chainAddresses == null ? 0 : chainAddresses!.hashCode) +
    (dataStart == null ? 0 : dataStart!.hashCode) +
    (dataEnd == null ? 0 : dataEnd!.hashCode);

  @override
  String toString() => 'V1Asset[assetId=$assetId, name=$name, typeIsCrypto=$typeIsCrypto, dataQuoteStart=$dataQuoteStart, dataQuoteEnd=$dataQuoteEnd, dataOrderbookStart=$dataOrderbookStart, dataOrderbookEnd=$dataOrderbookEnd, dataTradeStart=$dataTradeStart, dataTradeEnd=$dataTradeEnd, dataSymbolsCount=$dataSymbolsCount, volume1hrsUsd=$volume1hrsUsd, volume1dayUsd=$volume1dayUsd, volume1mthUsd=$volume1mthUsd, priceUsd=$priceUsd, idIcon=$idIcon, supplyCurrent=$supplyCurrent, supplyTotal=$supplyTotal, supplyMax=$supplyMax, chainAddresses=$chainAddresses, dataStart=$dataStart, dataEnd=$dataEnd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assetId != null) {
      json[r'asset_id'] = this.assetId;
    } else {
      json[r'asset_id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.typeIsCrypto != null) {
      json[r'type_is_crypto'] = this.typeIsCrypto;
    } else {
      json[r'type_is_crypto'] = null;
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
    if (this.dataSymbolsCount != null) {
      json[r'data_symbols_count'] = this.dataSymbolsCount;
    } else {
      json[r'data_symbols_count'] = null;
    }
    if (this.volume1hrsUsd != null) {
      json[r'volume_1hrs_usd'] = this.volume1hrsUsd;
    } else {
      json[r'volume_1hrs_usd'] = null;
    }
    if (this.volume1dayUsd != null) {
      json[r'volume_1day_usd'] = this.volume1dayUsd;
    } else {
      json[r'volume_1day_usd'] = null;
    }
    if (this.volume1mthUsd != null) {
      json[r'volume_1mth_usd'] = this.volume1mthUsd;
    } else {
      json[r'volume_1mth_usd'] = null;
    }
    if (this.priceUsd != null) {
      json[r'price_usd'] = this.priceUsd;
    } else {
      json[r'price_usd'] = null;
    }
    if (this.idIcon != null) {
      json[r'id_icon'] = this.idIcon;
    } else {
      json[r'id_icon'] = null;
    }
    if (this.supplyCurrent != null) {
      json[r'supply_current'] = this.supplyCurrent;
    } else {
      json[r'supply_current'] = null;
    }
    if (this.supplyTotal != null) {
      json[r'supply_total'] = this.supplyTotal;
    } else {
      json[r'supply_total'] = null;
    }
    if (this.supplyMax != null) {
      json[r'supply_max'] = this.supplyMax;
    } else {
      json[r'supply_max'] = null;
    }
    if (this.chainAddresses != null) {
      json[r'chain_addresses'] = this.chainAddresses;
    } else {
      json[r'chain_addresses'] = null;
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
    return json;
  }

  /// Returns a new [V1Asset] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1Asset? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1Asset[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1Asset[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1Asset(
        assetId: mapValueOfType<String>(json, r'asset_id'),
        name: mapValueOfType<String>(json, r'name'),
        typeIsCrypto: mapValueOfType<int>(json, r'type_is_crypto'),
        dataQuoteStart: mapDateTime(json, r'data_quote_start', r''),
        dataQuoteEnd: mapDateTime(json, r'data_quote_end', r''),
        dataOrderbookStart: mapDateTime(json, r'data_orderbook_start', r''),
        dataOrderbookEnd: mapDateTime(json, r'data_orderbook_end', r''),
        dataTradeStart: mapDateTime(json, r'data_trade_start', r''),
        dataTradeEnd: mapDateTime(json, r'data_trade_end', r''),
        dataSymbolsCount: mapValueOfType<int>(json, r'data_symbols_count'),
        volume1hrsUsd: mapValueOfType<double>(json, r'volume_1hrs_usd'),
        volume1dayUsd: mapValueOfType<double>(json, r'volume_1day_usd'),
        volume1mthUsd: mapValueOfType<double>(json, r'volume_1mth_usd'),
        priceUsd: mapValueOfType<double>(json, r'price_usd'),
        idIcon: mapValueOfType<String>(json, r'id_icon'),
        supplyCurrent: mapValueOfType<double>(json, r'supply_current'),
        supplyTotal: mapValueOfType<double>(json, r'supply_total'),
        supplyMax: mapValueOfType<double>(json, r'supply_max'),
        chainAddresses: V1ChainNetworkAddress.listFromJson(json[r'chain_addresses']),
        dataStart: mapValueOfType<String>(json, r'data_start'),
        dataEnd: mapValueOfType<String>(json, r'data_end'),
      );
    }
    return null;
  }

  static List<V1Asset> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1Asset>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1Asset.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1Asset> mapFromJson(dynamic json) {
    final map = <String, V1Asset>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1Asset.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1Asset-objects as value to a dart map
  static Map<String, List<V1Asset>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1Asset>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1Asset.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

