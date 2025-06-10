//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1ListingItem {
  /// Returns a new [V1ListingItem] instance.
  V1ListingItem({
    this.metricId,
    this.symbolId,
    this.symbolIdExternal,
    this.exchangeId,
    this.assetId,
    this.assetIdExternal,
    this.chainId,
    this.networkId,
  });

  /// Gets or sets the metric ID.
  String? metricId;

  /// Gets or sets the symbol ID.
  String? symbolId;

  /// Gets or sets the symbol ID from the exchange.
  String? symbolIdExternal;

  /// Gets or sets the exchange ID.
  String? exchangeId;

  /// Gets or sets the asset ID.
  String? assetId;

  /// Gets or sets the asset ID from the exchange.
  String? assetIdExternal;

  /// Gets or sets the chain id.
  String? chainId;

  /// Gets or sets the network id.
  String? networkId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ListingItem &&
    other.metricId == metricId &&
    other.symbolId == symbolId &&
    other.symbolIdExternal == symbolIdExternal &&
    other.exchangeId == exchangeId &&
    other.assetId == assetId &&
    other.assetIdExternal == assetIdExternal &&
    other.chainId == chainId &&
    other.networkId == networkId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (metricId == null ? 0 : metricId!.hashCode) +
    (symbolId == null ? 0 : symbolId!.hashCode) +
    (symbolIdExternal == null ? 0 : symbolIdExternal!.hashCode) +
    (exchangeId == null ? 0 : exchangeId!.hashCode) +
    (assetId == null ? 0 : assetId!.hashCode) +
    (assetIdExternal == null ? 0 : assetIdExternal!.hashCode) +
    (chainId == null ? 0 : chainId!.hashCode) +
    (networkId == null ? 0 : networkId!.hashCode);

  @override
  String toString() => 'V1ListingItem[metricId=$metricId, symbolId=$symbolId, symbolIdExternal=$symbolIdExternal, exchangeId=$exchangeId, assetId=$assetId, assetIdExternal=$assetIdExternal, chainId=$chainId, networkId=$networkId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.metricId != null) {
      json[r'metric_id'] = this.metricId;
    } else {
      json[r'metric_id'] = null;
    }
    if (this.symbolId != null) {
      json[r'symbol_id'] = this.symbolId;
    } else {
      json[r'symbol_id'] = null;
    }
    if (this.symbolIdExternal != null) {
      json[r'symbol_id_external'] = this.symbolIdExternal;
    } else {
      json[r'symbol_id_external'] = null;
    }
    if (this.exchangeId != null) {
      json[r'exchange_id'] = this.exchangeId;
    } else {
      json[r'exchange_id'] = null;
    }
    if (this.assetId != null) {
      json[r'asset_id'] = this.assetId;
    } else {
      json[r'asset_id'] = null;
    }
    if (this.assetIdExternal != null) {
      json[r'asset_id_external'] = this.assetIdExternal;
    } else {
      json[r'asset_id_external'] = null;
    }
    if (this.chainId != null) {
      json[r'chain_id'] = this.chainId;
    } else {
      json[r'chain_id'] = null;
    }
    if (this.networkId != null) {
      json[r'network_id'] = this.networkId;
    } else {
      json[r'network_id'] = null;
    }
    return json;
  }

  /// Returns a new [V1ListingItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1ListingItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1ListingItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1ListingItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1ListingItem(
        metricId: mapValueOfType<String>(json, r'metric_id'),
        symbolId: mapValueOfType<String>(json, r'symbol_id'),
        symbolIdExternal: mapValueOfType<String>(json, r'symbol_id_external'),
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        assetId: mapValueOfType<String>(json, r'asset_id'),
        assetIdExternal: mapValueOfType<String>(json, r'asset_id_external'),
        chainId: mapValueOfType<String>(json, r'chain_id'),
        networkId: mapValueOfType<String>(json, r'network_id'),
      );
    }
    return null;
  }

  static List<V1ListingItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1ListingItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1ListingItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1ListingItem> mapFromJson(dynamic json) {
    final map = <String, V1ListingItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1ListingItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1ListingItem-objects as value to a dart map
  static Map<String, List<V1ListingItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1ListingItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1ListingItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

