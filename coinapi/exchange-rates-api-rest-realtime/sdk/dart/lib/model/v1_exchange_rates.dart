//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1ExchangeRates {
  /// Returns a new [V1ExchangeRates] instance.
  V1ExchangeRates({
    this.assetIdBase,
    this.rates = const [],
  });

  /// Gets or sets the base asset ID.
  String? assetIdBase;

  /// Gets or sets the list of exchange rates.
  List<V1ExchangeRatesRate>? rates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ExchangeRates &&
    other.assetIdBase == assetIdBase &&
    _deepEquality.equals(other.rates, rates);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetIdBase == null ? 0 : assetIdBase!.hashCode) +
    (rates == null ? 0 : rates!.hashCode);

  @override
  String toString() => 'V1ExchangeRates[assetIdBase=$assetIdBase, rates=$rates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assetIdBase != null) {
      json[r'asset_id_base'] = this.assetIdBase;
    } else {
      json[r'asset_id_base'] = null;
    }
    if (this.rates != null) {
      json[r'rates'] = this.rates;
    } else {
      json[r'rates'] = null;
    }
    return json;
  }

  /// Returns a new [V1ExchangeRates] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1ExchangeRates? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1ExchangeRates[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1ExchangeRates[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1ExchangeRates(
        assetIdBase: mapValueOfType<String>(json, r'asset_id_base'),
        rates: V1ExchangeRatesRate.listFromJson(json[r'rates']),
      );
    }
    return null;
  }

  static List<V1ExchangeRates> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1ExchangeRates>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1ExchangeRates.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1ExchangeRates> mapFromJson(dynamic json) {
    final map = <String, V1ExchangeRates>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1ExchangeRates.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1ExchangeRates-objects as value to a dart map
  static Map<String, List<V1ExchangeRates>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1ExchangeRates>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1ExchangeRates.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

