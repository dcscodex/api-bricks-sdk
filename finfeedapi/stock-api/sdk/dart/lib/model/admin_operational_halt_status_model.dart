//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminOperationalHaltStatusModel {
  /// Returns a new [AdminOperationalHaltStatusModel] instance.
  AdminOperationalHaltStatusModel({
    this.symbol,
    this.timestampNanos,
    this.timestamp,
    this.operationalHaltStatus,
    this.operationalHaltStatusCode,
    this.operationalHaltStatusText,
    this.isOperationallyHalted,
    this.isNotOperationallyHalted,
  });

  /// The stock symbol
  String? symbol;

  /// Original timestamp in nanoseconds since epoch
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timestampNanos;

  /// Time when the operational halt status was recorded as DateTime
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// Operational halt status as byte value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? operationalHaltStatus;

  /// Operational halt status as character string
  String? operationalHaltStatusCode;

  /// Human-readable description of the operational halt status
  String? operationalHaltStatusText;

  /// Indicates if the status is 'IEX specific operational trading halt' ('O'/0x4f).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isOperationallyHalted;

  /// Indicates if the status is 'Not operationally halted on IEX' ('N'/0x4e).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isNotOperationallyHalted;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminOperationalHaltStatusModel &&
    other.symbol == symbol &&
    other.timestampNanos == timestampNanos &&
    other.timestamp == timestamp &&
    other.operationalHaltStatus == operationalHaltStatus &&
    other.operationalHaltStatusCode == operationalHaltStatusCode &&
    other.operationalHaltStatusText == operationalHaltStatusText &&
    other.isOperationallyHalted == isOperationallyHalted &&
    other.isNotOperationallyHalted == isNotOperationallyHalted;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbol == null ? 0 : symbol!.hashCode) +
    (timestampNanos == null ? 0 : timestampNanos!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (operationalHaltStatus == null ? 0 : operationalHaltStatus!.hashCode) +
    (operationalHaltStatusCode == null ? 0 : operationalHaltStatusCode!.hashCode) +
    (operationalHaltStatusText == null ? 0 : operationalHaltStatusText!.hashCode) +
    (isOperationallyHalted == null ? 0 : isOperationallyHalted!.hashCode) +
    (isNotOperationallyHalted == null ? 0 : isNotOperationallyHalted!.hashCode);

  @override
  String toString() => 'AdminOperationalHaltStatusModel[symbol=$symbol, timestampNanos=$timestampNanos, timestamp=$timestamp, operationalHaltStatus=$operationalHaltStatus, operationalHaltStatusCode=$operationalHaltStatusCode, operationalHaltStatusText=$operationalHaltStatusText, isOperationallyHalted=$isOperationallyHalted, isNotOperationallyHalted=$isNotOperationallyHalted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.symbol != null) {
      json[r'symbol'] = this.symbol;
    } else {
      json[r'symbol'] = null;
    }
    if (this.timestampNanos != null) {
      json[r'timestamp_nanos'] = this.timestampNanos;
    } else {
      json[r'timestamp_nanos'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    if (this.operationalHaltStatus != null) {
      json[r'operational_halt_status'] = this.operationalHaltStatus;
    } else {
      json[r'operational_halt_status'] = null;
    }
    if (this.operationalHaltStatusCode != null) {
      json[r'operational_halt_status_code'] = this.operationalHaltStatusCode;
    } else {
      json[r'operational_halt_status_code'] = null;
    }
    if (this.operationalHaltStatusText != null) {
      json[r'operational_halt_status_text'] = this.operationalHaltStatusText;
    } else {
      json[r'operational_halt_status_text'] = null;
    }
    if (this.isOperationallyHalted != null) {
      json[r'is_operationally_halted'] = this.isOperationallyHalted;
    } else {
      json[r'is_operationally_halted'] = null;
    }
    if (this.isNotOperationallyHalted != null) {
      json[r'is_not_operationally_halted'] = this.isNotOperationallyHalted;
    } else {
      json[r'is_not_operationally_halted'] = null;
    }
    return json;
  }

  /// Returns a new [AdminOperationalHaltStatusModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminOperationalHaltStatusModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminOperationalHaltStatusModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminOperationalHaltStatusModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminOperationalHaltStatusModel(
        symbol: mapValueOfType<String>(json, r'symbol'),
        timestampNanos: mapValueOfType<int>(json, r'timestamp_nanos'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        operationalHaltStatus: mapValueOfType<int>(json, r'operational_halt_status'),
        operationalHaltStatusCode: mapValueOfType<String>(json, r'operational_halt_status_code'),
        operationalHaltStatusText: mapValueOfType<String>(json, r'operational_halt_status_text'),
        isOperationallyHalted: mapValueOfType<bool>(json, r'is_operationally_halted'),
        isNotOperationallyHalted: mapValueOfType<bool>(json, r'is_not_operationally_halted'),
      );
    }
    return null;
  }

  static List<AdminOperationalHaltStatusModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminOperationalHaltStatusModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminOperationalHaltStatusModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminOperationalHaltStatusModel> mapFromJson(dynamic json) {
    final map = <String, AdminOperationalHaltStatusModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminOperationalHaltStatusModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminOperationalHaltStatusModel-objects as value to a dart map
  static Map<String, List<AdminOperationalHaltStatusModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminOperationalHaltStatusModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminOperationalHaltStatusModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

