//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OptionsOptionExchangeGroup {
  /// Returns a new [OptionsOptionExchangeGroup] instance.
  OptionsOptionExchangeGroup({
    this.assetIdBase,
    this.assetIdQuote,
    this.underlyingPrice,
    this.timeExpiration,
    this.strikes = const [],
  });

  /// The base asset identifier.
  String? assetIdBase;

  /// The quote asset identifier.
  String? assetIdQuote;

  /// The underlying price of the option.
  double? underlyingPrice;

  /// The expiration time of the option.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timeExpiration;

  /// The list of strikes available.
  List<OptionsStrike>? strikes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OptionsOptionExchangeGroup &&
    other.assetIdBase == assetIdBase &&
    other.assetIdQuote == assetIdQuote &&
    other.underlyingPrice == underlyingPrice &&
    other.timeExpiration == timeExpiration &&
    _deepEquality.equals(other.strikes, strikes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetIdBase == null ? 0 : assetIdBase!.hashCode) +
    (assetIdQuote == null ? 0 : assetIdQuote!.hashCode) +
    (underlyingPrice == null ? 0 : underlyingPrice!.hashCode) +
    (timeExpiration == null ? 0 : timeExpiration!.hashCode) +
    (strikes == null ? 0 : strikes!.hashCode);

  @override
  String toString() => 'OptionsOptionExchangeGroup[assetIdBase=$assetIdBase, assetIdQuote=$assetIdQuote, underlyingPrice=$underlyingPrice, timeExpiration=$timeExpiration, strikes=$strikes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.underlyingPrice != null) {
      json[r'underlying_price'] = this.underlyingPrice;
    } else {
      json[r'underlying_price'] = null;
    }
    if (this.timeExpiration != null) {
      json[r'time_expiration'] = this.timeExpiration!.toUtc().toIso8601String();
    } else {
      json[r'time_expiration'] = null;
    }
    if (this.strikes != null) {
      json[r'strikes'] = this.strikes;
    } else {
      json[r'strikes'] = null;
    }
    return json;
  }

  /// Returns a new [OptionsOptionExchangeGroup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OptionsOptionExchangeGroup? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OptionsOptionExchangeGroup[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OptionsOptionExchangeGroup[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OptionsOptionExchangeGroup(
        assetIdBase: mapValueOfType<String>(json, r'asset_id_base'),
        assetIdQuote: mapValueOfType<String>(json, r'asset_id_quote'),
        underlyingPrice: mapValueOfType<double>(json, r'underlying_price'),
        timeExpiration: mapDateTime(json, r'time_expiration', r''),
        strikes: OptionsStrike.listFromJson(json[r'strikes']),
      );
    }
    return null;
  }

  static List<OptionsOptionExchangeGroup> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OptionsOptionExchangeGroup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OptionsOptionExchangeGroup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OptionsOptionExchangeGroup> mapFromJson(dynamic json) {
    final map = <String, OptionsOptionExchangeGroup>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OptionsOptionExchangeGroup.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OptionsOptionExchangeGroup-objects as value to a dart map
  static Map<String, List<OptionsOptionExchangeGroup>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OptionsOptionExchangeGroup>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OptionsOptionExchangeGroup.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

