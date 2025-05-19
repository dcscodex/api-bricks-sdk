//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IndexesIndexDefinitionInputData {
  /// Returns a new [IndexesIndexDefinitionInputData] instance.
  IndexesIndexDefinitionInputData({
    this.exchangeId,
    this.exchangeSymbolId,
    this.baseAssetId,
    this.quoteAssetId,
    this.beginDate,
    this.endDate,
    this.status,
    this.statusInfo,
    this.lastModificationTime,
  });

  String? exchangeId;

  String? exchangeSymbolId;

  String? baseAssetId;

  String? quoteAssetId;

  DateTime? beginDate;

  DateTime? endDate;

  String? status;

  String? statusInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastModificationTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexesIndexDefinitionInputData &&
    other.exchangeId == exchangeId &&
    other.exchangeSymbolId == exchangeSymbolId &&
    other.baseAssetId == baseAssetId &&
    other.quoteAssetId == quoteAssetId &&
    other.beginDate == beginDate &&
    other.endDate == endDate &&
    other.status == status &&
    other.statusInfo == statusInfo &&
    other.lastModificationTime == lastModificationTime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (exchangeId == null ? 0 : exchangeId!.hashCode) +
    (exchangeSymbolId == null ? 0 : exchangeSymbolId!.hashCode) +
    (baseAssetId == null ? 0 : baseAssetId!.hashCode) +
    (quoteAssetId == null ? 0 : quoteAssetId!.hashCode) +
    (beginDate == null ? 0 : beginDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (statusInfo == null ? 0 : statusInfo!.hashCode) +
    (lastModificationTime == null ? 0 : lastModificationTime!.hashCode);

  @override
  String toString() => 'IndexesIndexDefinitionInputData[exchangeId=$exchangeId, exchangeSymbolId=$exchangeSymbolId, baseAssetId=$baseAssetId, quoteAssetId=$quoteAssetId, beginDate=$beginDate, endDate=$endDate, status=$status, statusInfo=$statusInfo, lastModificationTime=$lastModificationTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.exchangeId != null) {
      json[r'exchangeId'] = this.exchangeId;
    } else {
      json[r'exchangeId'] = null;
    }
    if (this.exchangeSymbolId != null) {
      json[r'exchangeSymbolId'] = this.exchangeSymbolId;
    } else {
      json[r'exchangeSymbolId'] = null;
    }
    if (this.baseAssetId != null) {
      json[r'baseAssetId'] = this.baseAssetId;
    } else {
      json[r'baseAssetId'] = null;
    }
    if (this.quoteAssetId != null) {
      json[r'quoteAssetId'] = this.quoteAssetId;
    } else {
      json[r'quoteAssetId'] = null;
    }
    if (this.beginDate != null) {
      json[r'beginDate'] = this.beginDate!.toUtc().toIso8601String();
    } else {
      json[r'beginDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate!.toUtc().toIso8601String();
    } else {
      json[r'endDate'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.statusInfo != null) {
      json[r'statusInfo'] = this.statusInfo;
    } else {
      json[r'statusInfo'] = null;
    }
    if (this.lastModificationTime != null) {
      json[r'lastModificationTime'] = this.lastModificationTime!.toUtc().toIso8601String();
    } else {
      json[r'lastModificationTime'] = null;
    }
    return json;
  }

  /// Returns a new [IndexesIndexDefinitionInputData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexesIndexDefinitionInputData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexesIndexDefinitionInputData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexesIndexDefinitionInputData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexesIndexDefinitionInputData(
        exchangeId: mapValueOfType<String>(json, r'exchangeId'),
        exchangeSymbolId: mapValueOfType<String>(json, r'exchangeSymbolId'),
        baseAssetId: mapValueOfType<String>(json, r'baseAssetId'),
        quoteAssetId: mapValueOfType<String>(json, r'quoteAssetId'),
        beginDate: mapDateTime(json, r'beginDate', r''),
        endDate: mapDateTime(json, r'endDate', r''),
        status: mapValueOfType<String>(json, r'status'),
        statusInfo: mapValueOfType<String>(json, r'statusInfo'),
        lastModificationTime: mapDateTime(json, r'lastModificationTime', r''),
      );
    }
    return null;
  }

  static List<IndexesIndexDefinitionInputData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexesIndexDefinitionInputData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexesIndexDefinitionInputData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexesIndexDefinitionInputData> mapFromJson(dynamic json) {
    final map = <String, IndexesIndexDefinitionInputData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexesIndexDefinitionInputData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexesIndexDefinitionInputData-objects as value to a dart map
  static Map<String, List<IndexesIndexDefinitionInputData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexesIndexDefinitionInputData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexesIndexDefinitionInputData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

