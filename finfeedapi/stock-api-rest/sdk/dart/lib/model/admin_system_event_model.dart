//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminSystemEventModel {
  /// Returns a new [AdminSystemEventModel] instance.
  AdminSystemEventModel({
    this.timestampNanos,
    this.timestamp,
    this.systemEvent,
    this.systemEventCode,
    this.systemEventText,
    this.isSystemEventStartOfMessages,
    this.isSystemEventStartOfSystemHours,
    this.isSystemEventStartOfRegularMarketHours,
    this.isSystemEventEndOfRegularMarketHours,
    this.isSystemEventEndOfSystemHours,
    this.isSystemEventEndOfMessages,
  });

  /// Original timestamp in nanoseconds since epoch
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timestampNanos;

  /// Time when the system event was recorded as DateTime
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// System event as byte value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? systemEvent;

  /// System event as string
  String? systemEventCode;

  /// Human-readable description of the system event
  String? systemEventText;

  /// Indicates if the system event is 'Start of Messages' (O).  Outside of heartbeat messages on the lower level protocol,   the start of day message is the first message sent in any trading session.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSystemEventStartOfMessages;

  /// Indicates if the system event is 'Start of System Hours' (S).  This message indicates that IEX is open and ready to start accepting orders.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSystemEventStartOfSystemHours;

  /// Indicates if the system event is 'Start of Regular Market Hours' (R).  This message indicates that DAY and GTX orders, as well as market orders and pegged orders,   are available for execution on IEX.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSystemEventStartOfRegularMarketHours;

  /// Indicates if the system event is 'End of Regular Market Hours' (M).  This message indicates that DAY orders, market orders, and pegged orders   are no longer accepted by IEX.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSystemEventEndOfRegularMarketHours;

  /// Indicates if the system event is 'End of System Hours' (E).  This message indicates that IEX is now closed and will not accept   any new orders during this trading session. It is still possible   to receive messages after the end of day.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSystemEventEndOfSystemHours;

  /// Indicates if the system event is 'End of Messages' (C).  This is always the last message sent in any trading session.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSystemEventEndOfMessages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminSystemEventModel &&
    other.timestampNanos == timestampNanos &&
    other.timestamp == timestamp &&
    other.systemEvent == systemEvent &&
    other.systemEventCode == systemEventCode &&
    other.systemEventText == systemEventText &&
    other.isSystemEventStartOfMessages == isSystemEventStartOfMessages &&
    other.isSystemEventStartOfSystemHours == isSystemEventStartOfSystemHours &&
    other.isSystemEventStartOfRegularMarketHours == isSystemEventStartOfRegularMarketHours &&
    other.isSystemEventEndOfRegularMarketHours == isSystemEventEndOfRegularMarketHours &&
    other.isSystemEventEndOfSystemHours == isSystemEventEndOfSystemHours &&
    other.isSystemEventEndOfMessages == isSystemEventEndOfMessages;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timestampNanos == null ? 0 : timestampNanos!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (systemEvent == null ? 0 : systemEvent!.hashCode) +
    (systemEventCode == null ? 0 : systemEventCode!.hashCode) +
    (systemEventText == null ? 0 : systemEventText!.hashCode) +
    (isSystemEventStartOfMessages == null ? 0 : isSystemEventStartOfMessages!.hashCode) +
    (isSystemEventStartOfSystemHours == null ? 0 : isSystemEventStartOfSystemHours!.hashCode) +
    (isSystemEventStartOfRegularMarketHours == null ? 0 : isSystemEventStartOfRegularMarketHours!.hashCode) +
    (isSystemEventEndOfRegularMarketHours == null ? 0 : isSystemEventEndOfRegularMarketHours!.hashCode) +
    (isSystemEventEndOfSystemHours == null ? 0 : isSystemEventEndOfSystemHours!.hashCode) +
    (isSystemEventEndOfMessages == null ? 0 : isSystemEventEndOfMessages!.hashCode);

  @override
  String toString() => 'AdminSystemEventModel[timestampNanos=$timestampNanos, timestamp=$timestamp, systemEvent=$systemEvent, systemEventCode=$systemEventCode, systemEventText=$systemEventText, isSystemEventStartOfMessages=$isSystemEventStartOfMessages, isSystemEventStartOfSystemHours=$isSystemEventStartOfSystemHours, isSystemEventStartOfRegularMarketHours=$isSystemEventStartOfRegularMarketHours, isSystemEventEndOfRegularMarketHours=$isSystemEventEndOfRegularMarketHours, isSystemEventEndOfSystemHours=$isSystemEventEndOfSystemHours, isSystemEventEndOfMessages=$isSystemEventEndOfMessages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.systemEvent != null) {
      json[r'system_event'] = this.systemEvent;
    } else {
      json[r'system_event'] = null;
    }
    if (this.systemEventCode != null) {
      json[r'system_event_code'] = this.systemEventCode;
    } else {
      json[r'system_event_code'] = null;
    }
    if (this.systemEventText != null) {
      json[r'system_event_text'] = this.systemEventText;
    } else {
      json[r'system_event_text'] = null;
    }
    if (this.isSystemEventStartOfMessages != null) {
      json[r'is_system_event_start_of_messages'] = this.isSystemEventStartOfMessages;
    } else {
      json[r'is_system_event_start_of_messages'] = null;
    }
    if (this.isSystemEventStartOfSystemHours != null) {
      json[r'is_system_event_start_of_system_hours'] = this.isSystemEventStartOfSystemHours;
    } else {
      json[r'is_system_event_start_of_system_hours'] = null;
    }
    if (this.isSystemEventStartOfRegularMarketHours != null) {
      json[r'is_system_event_start_of_regular_market_hours'] = this.isSystemEventStartOfRegularMarketHours;
    } else {
      json[r'is_system_event_start_of_regular_market_hours'] = null;
    }
    if (this.isSystemEventEndOfRegularMarketHours != null) {
      json[r'is_system_event_end_of_regular_market_hours'] = this.isSystemEventEndOfRegularMarketHours;
    } else {
      json[r'is_system_event_end_of_regular_market_hours'] = null;
    }
    if (this.isSystemEventEndOfSystemHours != null) {
      json[r'is_system_event_end_of_system_hours'] = this.isSystemEventEndOfSystemHours;
    } else {
      json[r'is_system_event_end_of_system_hours'] = null;
    }
    if (this.isSystemEventEndOfMessages != null) {
      json[r'is_system_event_end_of_messages'] = this.isSystemEventEndOfMessages;
    } else {
      json[r'is_system_event_end_of_messages'] = null;
    }
    return json;
  }

  /// Returns a new [AdminSystemEventModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminSystemEventModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminSystemEventModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminSystemEventModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminSystemEventModel(
        timestampNanos: mapValueOfType<int>(json, r'timestamp_nanos'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        systemEvent: mapValueOfType<int>(json, r'system_event'),
        systemEventCode: mapValueOfType<String>(json, r'system_event_code'),
        systemEventText: mapValueOfType<String>(json, r'system_event_text'),
        isSystemEventStartOfMessages: mapValueOfType<bool>(json, r'is_system_event_start_of_messages'),
        isSystemEventStartOfSystemHours: mapValueOfType<bool>(json, r'is_system_event_start_of_system_hours'),
        isSystemEventStartOfRegularMarketHours: mapValueOfType<bool>(json, r'is_system_event_start_of_regular_market_hours'),
        isSystemEventEndOfRegularMarketHours: mapValueOfType<bool>(json, r'is_system_event_end_of_regular_market_hours'),
        isSystemEventEndOfSystemHours: mapValueOfType<bool>(json, r'is_system_event_end_of_system_hours'),
        isSystemEventEndOfMessages: mapValueOfType<bool>(json, r'is_system_event_end_of_messages'),
      );
    }
    return null;
  }

  static List<AdminSystemEventModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminSystemEventModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminSystemEventModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminSystemEventModel> mapFromJson(dynamic json) {
    final map = <String, AdminSystemEventModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminSystemEventModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminSystemEventModel-objects as value to a dart map
  static Map<String, List<AdminSystemEventModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminSystemEventModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminSystemEventModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

