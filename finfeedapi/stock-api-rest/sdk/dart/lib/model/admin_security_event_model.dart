//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminSecurityEventModel {
  /// Returns a new [AdminSecurityEventModel] instance.
  AdminSecurityEventModel({
    this.symbol,
    this.timestampNanos,
    this.timestamp,
    this.securityEvent,
    this.securityEventCode,
    this.securityEventText,
    this.isOpeningProcessComplete,
    this.isClosingProcessComplete,
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

  /// Time when the security event was recorded as DateTime
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// Security event as byte value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? securityEvent;

  /// Security event as character string ('O' or 'C')
  String? securityEventCode;

  /// Human-readable description of the security event
  String? securityEventText;

  /// Indicates if the security event is 'Opening Process Complete' ('O'/0x4f).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isOpeningProcessComplete;

  /// Indicates if the security event is 'Closing Process Complete' ('C'/0x43).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isClosingProcessComplete;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminSecurityEventModel &&
    other.symbol == symbol &&
    other.timestampNanos == timestampNanos &&
    other.timestamp == timestamp &&
    other.securityEvent == securityEvent &&
    other.securityEventCode == securityEventCode &&
    other.securityEventText == securityEventText &&
    other.isOpeningProcessComplete == isOpeningProcessComplete &&
    other.isClosingProcessComplete == isClosingProcessComplete;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbol == null ? 0 : symbol!.hashCode) +
    (timestampNanos == null ? 0 : timestampNanos!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (securityEvent == null ? 0 : securityEvent!.hashCode) +
    (securityEventCode == null ? 0 : securityEventCode!.hashCode) +
    (securityEventText == null ? 0 : securityEventText!.hashCode) +
    (isOpeningProcessComplete == null ? 0 : isOpeningProcessComplete!.hashCode) +
    (isClosingProcessComplete == null ? 0 : isClosingProcessComplete!.hashCode);

  @override
  String toString() => 'AdminSecurityEventModel[symbol=$symbol, timestampNanos=$timestampNanos, timestamp=$timestamp, securityEvent=$securityEvent, securityEventCode=$securityEventCode, securityEventText=$securityEventText, isOpeningProcessComplete=$isOpeningProcessComplete, isClosingProcessComplete=$isClosingProcessComplete]';

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
    if (this.securityEvent != null) {
      json[r'security_event'] = this.securityEvent;
    } else {
      json[r'security_event'] = null;
    }
    if (this.securityEventCode != null) {
      json[r'security_event_code'] = this.securityEventCode;
    } else {
      json[r'security_event_code'] = null;
    }
    if (this.securityEventText != null) {
      json[r'security_event_text'] = this.securityEventText;
    } else {
      json[r'security_event_text'] = null;
    }
    if (this.isOpeningProcessComplete != null) {
      json[r'is_opening_process_complete'] = this.isOpeningProcessComplete;
    } else {
      json[r'is_opening_process_complete'] = null;
    }
    if (this.isClosingProcessComplete != null) {
      json[r'is_closing_process_complete'] = this.isClosingProcessComplete;
    } else {
      json[r'is_closing_process_complete'] = null;
    }
    return json;
  }

  /// Returns a new [AdminSecurityEventModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminSecurityEventModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminSecurityEventModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminSecurityEventModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminSecurityEventModel(
        symbol: mapValueOfType<String>(json, r'symbol'),
        timestampNanos: mapValueOfType<int>(json, r'timestamp_nanos'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        securityEvent: mapValueOfType<int>(json, r'security_event'),
        securityEventCode: mapValueOfType<String>(json, r'security_event_code'),
        securityEventText: mapValueOfType<String>(json, r'security_event_text'),
        isOpeningProcessComplete: mapValueOfType<bool>(json, r'is_opening_process_complete'),
        isClosingProcessComplete: mapValueOfType<bool>(json, r'is_closing_process_complete'),
      );
    }
    return null;
  }

  static List<AdminSecurityEventModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminSecurityEventModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminSecurityEventModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminSecurityEventModel> mapFromJson(dynamic json) {
    final map = <String, AdminSecurityEventModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminSecurityEventModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminSecurityEventModel-objects as value to a dart map
  static Map<String, List<AdminSecurityEventModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminSecurityEventModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminSecurityEventModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

