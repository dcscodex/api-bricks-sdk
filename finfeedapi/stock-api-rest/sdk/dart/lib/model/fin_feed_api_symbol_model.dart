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
    this.cfiCode,
    this.cfiCategory,
    this.cfiGroup,
    this.cfiAttribute1,
    this.cfiAttribute2,
    this.cfiAttribute3,
    this.cfiAttribute4,
    this.cfiCategoryDesc,
    this.cfiGroupDesc,
    this.cfiAttribute1Desc,
    this.cfiAttribute2Desc,
    this.cfiAttribute3Desc,
    this.cfiAttribute4Desc,
  });

  String? symbolId;

  String? exchangeId;

  String? securityCategory;

  String? name;

  String? date;

  String? assetClass;

  String? cfiCode;

  String? cfiCategory;

  String? cfiGroup;

  String? cfiAttribute1;

  String? cfiAttribute2;

  String? cfiAttribute3;

  String? cfiAttribute4;

  String? cfiCategoryDesc;

  String? cfiGroupDesc;

  String? cfiAttribute1Desc;

  String? cfiAttribute2Desc;

  String? cfiAttribute3Desc;

  String? cfiAttribute4Desc;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FinFeedAPISymbolModel &&
    other.symbolId == symbolId &&
    other.exchangeId == exchangeId &&
    other.securityCategory == securityCategory &&
    other.name == name &&
    other.date == date &&
    other.assetClass == assetClass &&
    other.cfiCode == cfiCode &&
    other.cfiCategory == cfiCategory &&
    other.cfiGroup == cfiGroup &&
    other.cfiAttribute1 == cfiAttribute1 &&
    other.cfiAttribute2 == cfiAttribute2 &&
    other.cfiAttribute3 == cfiAttribute3 &&
    other.cfiAttribute4 == cfiAttribute4 &&
    other.cfiCategoryDesc == cfiCategoryDesc &&
    other.cfiGroupDesc == cfiGroupDesc &&
    other.cfiAttribute1Desc == cfiAttribute1Desc &&
    other.cfiAttribute2Desc == cfiAttribute2Desc &&
    other.cfiAttribute3Desc == cfiAttribute3Desc &&
    other.cfiAttribute4Desc == cfiAttribute4Desc;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbolId == null ? 0 : symbolId!.hashCode) +
    (exchangeId == null ? 0 : exchangeId!.hashCode) +
    (securityCategory == null ? 0 : securityCategory!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (assetClass == null ? 0 : assetClass!.hashCode) +
    (cfiCode == null ? 0 : cfiCode!.hashCode) +
    (cfiCategory == null ? 0 : cfiCategory!.hashCode) +
    (cfiGroup == null ? 0 : cfiGroup!.hashCode) +
    (cfiAttribute1 == null ? 0 : cfiAttribute1!.hashCode) +
    (cfiAttribute2 == null ? 0 : cfiAttribute2!.hashCode) +
    (cfiAttribute3 == null ? 0 : cfiAttribute3!.hashCode) +
    (cfiAttribute4 == null ? 0 : cfiAttribute4!.hashCode) +
    (cfiCategoryDesc == null ? 0 : cfiCategoryDesc!.hashCode) +
    (cfiGroupDesc == null ? 0 : cfiGroupDesc!.hashCode) +
    (cfiAttribute1Desc == null ? 0 : cfiAttribute1Desc!.hashCode) +
    (cfiAttribute2Desc == null ? 0 : cfiAttribute2Desc!.hashCode) +
    (cfiAttribute3Desc == null ? 0 : cfiAttribute3Desc!.hashCode) +
    (cfiAttribute4Desc == null ? 0 : cfiAttribute4Desc!.hashCode);

  @override
  String toString() => 'FinFeedAPISymbolModel[symbolId=$symbolId, exchangeId=$exchangeId, securityCategory=$securityCategory, name=$name, date=$date, assetClass=$assetClass, cfiCode=$cfiCode, cfiCategory=$cfiCategory, cfiGroup=$cfiGroup, cfiAttribute1=$cfiAttribute1, cfiAttribute2=$cfiAttribute2, cfiAttribute3=$cfiAttribute3, cfiAttribute4=$cfiAttribute4, cfiCategoryDesc=$cfiCategoryDesc, cfiGroupDesc=$cfiGroupDesc, cfiAttribute1Desc=$cfiAttribute1Desc, cfiAttribute2Desc=$cfiAttribute2Desc, cfiAttribute3Desc=$cfiAttribute3Desc, cfiAttribute4Desc=$cfiAttribute4Desc]';

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
    if (this.cfiCode != null) {
      json[r'cfi_code'] = this.cfiCode;
    } else {
      json[r'cfi_code'] = null;
    }
    if (this.cfiCategory != null) {
      json[r'cfi_category'] = this.cfiCategory;
    } else {
      json[r'cfi_category'] = null;
    }
    if (this.cfiGroup != null) {
      json[r'cfi_group'] = this.cfiGroup;
    } else {
      json[r'cfi_group'] = null;
    }
    if (this.cfiAttribute1 != null) {
      json[r'cfi_attribute1'] = this.cfiAttribute1;
    } else {
      json[r'cfi_attribute1'] = null;
    }
    if (this.cfiAttribute2 != null) {
      json[r'cfi_attribute2'] = this.cfiAttribute2;
    } else {
      json[r'cfi_attribute2'] = null;
    }
    if (this.cfiAttribute3 != null) {
      json[r'cfi_attribute3'] = this.cfiAttribute3;
    } else {
      json[r'cfi_attribute3'] = null;
    }
    if (this.cfiAttribute4 != null) {
      json[r'cfi_attribute4'] = this.cfiAttribute4;
    } else {
      json[r'cfi_attribute4'] = null;
    }
    if (this.cfiCategoryDesc != null) {
      json[r'cfi_category_desc'] = this.cfiCategoryDesc;
    } else {
      json[r'cfi_category_desc'] = null;
    }
    if (this.cfiGroupDesc != null) {
      json[r'cfi_group_desc'] = this.cfiGroupDesc;
    } else {
      json[r'cfi_group_desc'] = null;
    }
    if (this.cfiAttribute1Desc != null) {
      json[r'cfi_attribute1_desc'] = this.cfiAttribute1Desc;
    } else {
      json[r'cfi_attribute1_desc'] = null;
    }
    if (this.cfiAttribute2Desc != null) {
      json[r'cfi_attribute2_desc'] = this.cfiAttribute2Desc;
    } else {
      json[r'cfi_attribute2_desc'] = null;
    }
    if (this.cfiAttribute3Desc != null) {
      json[r'cfi_attribute3_desc'] = this.cfiAttribute3Desc;
    } else {
      json[r'cfi_attribute3_desc'] = null;
    }
    if (this.cfiAttribute4Desc != null) {
      json[r'cfi_attribute4_desc'] = this.cfiAttribute4Desc;
    } else {
      json[r'cfi_attribute4_desc'] = null;
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
        cfiCode: mapValueOfType<String>(json, r'cfi_code'),
        cfiCategory: mapValueOfType<String>(json, r'cfi_category'),
        cfiGroup: mapValueOfType<String>(json, r'cfi_group'),
        cfiAttribute1: mapValueOfType<String>(json, r'cfi_attribute1'),
        cfiAttribute2: mapValueOfType<String>(json, r'cfi_attribute2'),
        cfiAttribute3: mapValueOfType<String>(json, r'cfi_attribute3'),
        cfiAttribute4: mapValueOfType<String>(json, r'cfi_attribute4'),
        cfiCategoryDesc: mapValueOfType<String>(json, r'cfi_category_desc'),
        cfiGroupDesc: mapValueOfType<String>(json, r'cfi_group_desc'),
        cfiAttribute1Desc: mapValueOfType<String>(json, r'cfi_attribute1_desc'),
        cfiAttribute2Desc: mapValueOfType<String>(json, r'cfi_attribute2_desc'),
        cfiAttribute3Desc: mapValueOfType<String>(json, r'cfi_attribute3_desc'),
        cfiAttribute4Desc: mapValueOfType<String>(json, r'cfi_attribute4_desc'),
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

