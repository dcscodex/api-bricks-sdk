//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FinFeedAPISymbolModel {
  /// Returns a new [FinFeedAPISymbolModel] instance.
  FinFeedAPISymbolModel({
    this.symbolId,
    this.exchangeId,
    this.securityCategory,
    this.name,
    this.date,
    this.assetClass,
  });

  String? symbolId;

  String? exchangeId;

  String? securityCategory;

  String? name;

  String? date;

  String? assetClass;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FinFeedAPISymbolModel &&
    other.symbolId == symbolId &&
    other.exchangeId == exchangeId &&
    other.securityCategory == securityCategory &&
    other.name == name &&
    other.date == date &&
    other.assetClass == assetClass;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbolId == null ? 0 : symbolId!.hashCode) +
    (exchangeId == null ? 0 : exchangeId!.hashCode) +
    (securityCategory == null ? 0 : securityCategory!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (assetClass == null ? 0 : assetClass!.hashCode);

  @override
  String toString() => 'FinFeedAPISymbolModel[symbolId=$symbolId, exchangeId=$exchangeId, securityCategory=$securityCategory, name=$name, date=$date, assetClass=$assetClass]';

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
    if (this.securityCategory != null) {
      json[r'security_category'] = this.securityCategory;
    } else {
      json[r'security_category'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.assetClass != null) {
      json[r'asset_class'] = this.assetClass;
    } else {
      json[r'asset_class'] = null;
    }
    return json;
  }

  /// Returns a new [FinFeedAPISymbolModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FinFeedAPISymbolModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FinFeedAPISymbolModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FinFeedAPISymbolModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FinFeedAPISymbolModel(
        symbolId: mapValueOfType<String>(json, r'symbol_id'),
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        securityCategory: mapValueOfType<String>(json, r'security_category'),
        name: mapValueOfType<String>(json, r'name'),
        date: mapValueOfType<String>(json, r'date'),
        assetClass: mapValueOfType<String>(json, r'asset_class'),
      );
    }
    return null;
  }

  static List<FinFeedAPISymbolModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FinFeedAPISymbolModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FinFeedAPISymbolModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FinFeedAPISymbolModel> mapFromJson(dynamic json) {
    final map = <String, FinFeedAPISymbolModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FinFeedAPISymbolModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FinFeedAPISymbolModel-objects as value to a dart map
  static Map<String, List<FinFeedAPISymbolModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FinFeedAPISymbolModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FinFeedAPISymbolModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

