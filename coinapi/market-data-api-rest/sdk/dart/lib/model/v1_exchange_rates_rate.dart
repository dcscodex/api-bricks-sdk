//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1ExchangeRatesRate {
  /// Returns a new [V1ExchangeRatesRate] instance.
  V1ExchangeRatesRate({
    this.time,
    this.assetIdQuote,
    this.rate,
  });

  /// Gets or sets the time of the exchange rate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? time;

  /// Gets or sets the quote asset ID of the exchange rate.
  String? assetIdQuote;

  /// Gets or sets the exchange rate value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? rate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ExchangeRatesRate &&
    other.time == time &&
    other.assetIdQuote == assetIdQuote &&
    other.rate == rate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (time == null ? 0 : time!.hashCode) +
    (assetIdQuote == null ? 0 : assetIdQuote!.hashCode) +
    (rate == null ? 0 : rate!.hashCode);

  @override
  String toString() => 'V1ExchangeRatesRate[time=$time, assetIdQuote=$assetIdQuote, rate=$rate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.time != null) {
      json[r'time'] = this.time!.toUtc().toIso8601String();
    } else {
      json[r'time'] = null;
    }
    if (this.assetIdQuote != null) {
      json[r'asset_id_quote'] = this.assetIdQuote;
    } else {
      json[r'asset_id_quote'] = null;
    }
    if (this.rate != null) {
      json[r'rate'] = this.rate;
    } else {
      json[r'rate'] = null;
    }
    return json;
  }

  /// Returns a new [V1ExchangeRatesRate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1ExchangeRatesRate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1ExchangeRatesRate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1ExchangeRatesRate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1ExchangeRatesRate(
        time: mapDateTime(json, r'time', r''),
        assetIdQuote: mapValueOfType<String>(json, r'asset_id_quote'),
        rate: mapValueOfType<double>(json, r'rate'),
      );
    }
    return null;
  }

  static List<V1ExchangeRatesRate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1ExchangeRatesRate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1ExchangeRatesRate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1ExchangeRatesRate> mapFromJson(dynamic json) {
    final map = <String, V1ExchangeRatesRate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1ExchangeRatesRate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1ExchangeRatesRate-objects as value to a dart map
  static Map<String, List<V1ExchangeRatesRate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1ExchangeRatesRate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1ExchangeRatesRate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

