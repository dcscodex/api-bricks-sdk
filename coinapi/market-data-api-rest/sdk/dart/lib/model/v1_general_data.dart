//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1GeneralData {
  /// Returns a new [V1GeneralData] instance.
  V1GeneralData({
    this.entryTime,
    this.recvTime,
    this.exchangeId,
    this.assetId,
    this.symbolId,
    this.metricId,
    this.valueDecimal,
    this.valueText,
    this.valueTime,
  });

  /// Gets or sets the entry time for the data point.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? entryTime;

  /// Gets or sets the received time for the data point.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? recvTime;

  /// Gets or sets the identifier for the exchange.
  String? exchangeId;

  /// Gets or sets the identifier for the asset.
  String? assetId;

  /// Gets or sets the identifier for the symbol.
  String? symbolId;

  /// Gets or sets the identifier for the metric.
  String? metricId;

  /// Gets or sets the decimal value for the metric.
  double? valueDecimal;

  /// Gets or sets the textual representation of the value for the metric.
  String? valueText;

  /// Gets or sets the timestamp value for the metric.
  DateTime? valueTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1GeneralData &&
    other.entryTime == entryTime &&
    other.recvTime == recvTime &&
    other.exchangeId == exchangeId &&
    other.assetId == assetId &&
    other.symbolId == symbolId &&
    other.metricId == metricId &&
    other.valueDecimal == valueDecimal &&
    other.valueText == valueText &&
    other.valueTime == valueTime;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryTime == null ? 0 : entryTime!.hashCode) +
    (recvTime == null ? 0 : recvTime!.hashCode) +
    (exchangeId == null ? 0 : exchangeId!.hashCode) +
    (assetId == null ? 0 : assetId!.hashCode) +
    (symbolId == null ? 0 : symbolId!.hashCode) +
    (metricId == null ? 0 : metricId!.hashCode) +
    (valueDecimal == null ? 0 : valueDecimal!.hashCode) +
    (valueText == null ? 0 : valueText!.hashCode) +
    (valueTime == null ? 0 : valueTime!.hashCode);

  @override
  String toString() => 'V1GeneralData[entryTime=$entryTime, recvTime=$recvTime, exchangeId=$exchangeId, assetId=$assetId, symbolId=$symbolId, metricId=$metricId, valueDecimal=$valueDecimal, valueText=$valueText, valueTime=$valueTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.entryTime != null) {
      json[r'entry_time'] = this.entryTime!.toUtc().toIso8601String();
    } else {
      json[r'entry_time'] = null;
    }
    if (this.recvTime != null) {
      json[r'recv_time'] = this.recvTime!.toUtc().toIso8601String();
    } else {
      json[r'recv_time'] = null;
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
    if (this.symbolId != null) {
      json[r'symbol_id'] = this.symbolId;
    } else {
      json[r'symbol_id'] = null;
    }
    if (this.metricId != null) {
      json[r'metric_id'] = this.metricId;
    } else {
      json[r'metric_id'] = null;
    }
    if (this.valueDecimal != null) {
      json[r'value_decimal'] = this.valueDecimal;
    } else {
      json[r'value_decimal'] = null;
    }
    if (this.valueText != null) {
      json[r'value_text'] = this.valueText;
    } else {
      json[r'value_text'] = null;
    }
    if (this.valueTime != null) {
      json[r'value_time'] = this.valueTime!.toUtc().toIso8601String();
    } else {
      json[r'value_time'] = null;
    }
    return json;
  }

  /// Returns a new [V1GeneralData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1GeneralData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1GeneralData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1GeneralData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1GeneralData(
        entryTime: mapDateTime(json, r'entry_time', r''),
        recvTime: mapDateTime(json, r'recv_time', r''),
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        assetId: mapValueOfType<String>(json, r'asset_id'),
        symbolId: mapValueOfType<String>(json, r'symbol_id'),
        metricId: mapValueOfType<String>(json, r'metric_id'),
        valueDecimal: mapValueOfType<double>(json, r'value_decimal'),
        valueText: mapValueOfType<String>(json, r'value_text'),
        valueTime: mapDateTime(json, r'value_time', r''),
      );
    }
    return null;
  }

  static List<V1GeneralData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1GeneralData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1GeneralData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1GeneralData> mapFromJson(dynamic json) {
    final map = <String, V1GeneralData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1GeneralData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1GeneralData-objects as value to a dart map
  static Map<String, List<V1GeneralData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1GeneralData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1GeneralData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

