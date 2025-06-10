//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1SymbolMapping {
  /// Returns a new [V1SymbolMapping] instance.
  V1SymbolMapping({
    this.symbolId,
    this.symbolIdExchange,
    this.coinapiDatainfoId,
    this.assetIdBaseExchange,
    this.assetIdQuoteExchange,
    this.assetIdBase,
    this.assetIdQuote,
    this.pricePrecision,
    this.sizePrecision,
  });

  /// The symbol ID.
  String? symbolId;

  /// The exchange-specific symbol ID.
  String? symbolIdExchange;

  /// The CoinAPI DataInfo ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? coinapiDatainfoId;

  /// The exchange-specific base asset ID.
  String? assetIdBaseExchange;

  /// The exchange-specific quote asset ID.
  String? assetIdQuoteExchange;

  /// The base asset ID.
  String? assetIdBase;

  /// The quote asset ID.
  String? assetIdQuote;

  /// The price precision.
  double? pricePrecision;

  /// The size precision.
  double? sizePrecision;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1SymbolMapping &&
    other.symbolId == symbolId &&
    other.symbolIdExchange == symbolIdExchange &&
    other.coinapiDatainfoId == coinapiDatainfoId &&
    other.assetIdBaseExchange == assetIdBaseExchange &&
    other.assetIdQuoteExchange == assetIdQuoteExchange &&
    other.assetIdBase == assetIdBase &&
    other.assetIdQuote == assetIdQuote &&
    other.pricePrecision == pricePrecision &&
    other.sizePrecision == sizePrecision;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbolId == null ? 0 : symbolId!.hashCode) +
    (symbolIdExchange == null ? 0 : symbolIdExchange!.hashCode) +
    (coinapiDatainfoId == null ? 0 : coinapiDatainfoId!.hashCode) +
    (assetIdBaseExchange == null ? 0 : assetIdBaseExchange!.hashCode) +
    (assetIdQuoteExchange == null ? 0 : assetIdQuoteExchange!.hashCode) +
    (assetIdBase == null ? 0 : assetIdBase!.hashCode) +
    (assetIdQuote == null ? 0 : assetIdQuote!.hashCode) +
    (pricePrecision == null ? 0 : pricePrecision!.hashCode) +
    (sizePrecision == null ? 0 : sizePrecision!.hashCode);

  @override
  String toString() => 'V1SymbolMapping[symbolId=$symbolId, symbolIdExchange=$symbolIdExchange, coinapiDatainfoId=$coinapiDatainfoId, assetIdBaseExchange=$assetIdBaseExchange, assetIdQuoteExchange=$assetIdQuoteExchange, assetIdBase=$assetIdBase, assetIdQuote=$assetIdQuote, pricePrecision=$pricePrecision, sizePrecision=$sizePrecision]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.symbolId != null) {
      json[r'symbol_id'] = this.symbolId;
    } else {
      json[r'symbol_id'] = null;
    }
    if (this.symbolIdExchange != null) {
      json[r'symbol_id_exchange'] = this.symbolIdExchange;
    } else {
      json[r'symbol_id_exchange'] = null;
    }
    if (this.coinapiDatainfoId != null) {
      json[r'coinapi_datainfo_id'] = this.coinapiDatainfoId;
    } else {
      json[r'coinapi_datainfo_id'] = null;
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
    return json;
  }

  /// Returns a new [V1SymbolMapping] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1SymbolMapping? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1SymbolMapping[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1SymbolMapping[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1SymbolMapping(
        symbolId: mapValueOfType<String>(json, r'symbol_id'),
        symbolIdExchange: mapValueOfType<String>(json, r'symbol_id_exchange'),
        coinapiDatainfoId: mapValueOfType<int>(json, r'coinapi_datainfo_id'),
        assetIdBaseExchange: mapValueOfType<String>(json, r'asset_id_base_exchange'),
        assetIdQuoteExchange: mapValueOfType<String>(json, r'asset_id_quote_exchange'),
        assetIdBase: mapValueOfType<String>(json, r'asset_id_base'),
        assetIdQuote: mapValueOfType<String>(json, r'asset_id_quote'),
        pricePrecision: mapValueOfType<double>(json, r'price_precision'),
        sizePrecision: mapValueOfType<double>(json, r'size_precision'),
      );
    }
    return null;
  }

  static List<V1SymbolMapping> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1SymbolMapping>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1SymbolMapping.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1SymbolMapping> mapFromJson(dynamic json) {
    final map = <String, V1SymbolMapping>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1SymbolMapping.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1SymbolMapping-objects as value to a dart map
  static Map<String, List<V1SymbolMapping>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1SymbolMapping>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1SymbolMapping.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

