//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Level3ModifyOrderModel {
  /// Returns a new [Level3ModifyOrderModel] instance.
  Level3ModifyOrderModel({
    this.symbol,
    this.timestampNanos,
    this.timestamp,
    this.orderIdReference,
    this.isPriorityReset,
    this.size,
    this.price,
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

  /// Time when the order was modified as DateTime (UTC)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// Order identifier reference
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orderIdReference;

  /// Indicates if priority is reseted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPriorityReset;

  /// New total quoted size in number of shares
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  /// Price as decimal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? price;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Level3ModifyOrderModel &&
    other.symbol == symbol &&
    other.timestampNanos == timestampNanos &&
    other.timestamp == timestamp &&
    other.orderIdReference == orderIdReference &&
    other.isPriorityReset == isPriorityReset &&
    other.size == size &&
    other.price == price;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbol == null ? 0 : symbol!.hashCode) +
    (timestampNanos == null ? 0 : timestampNanos!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (orderIdReference == null ? 0 : orderIdReference!.hashCode) +
    (isPriorityReset == null ? 0 : isPriorityReset!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (price == null ? 0 : price!.hashCode);

  @override
  String toString() => 'Level3ModifyOrderModel[symbol=$symbol, timestampNanos=$timestampNanos, timestamp=$timestamp, orderIdReference=$orderIdReference, isPriorityReset=$isPriorityReset, size=$size, price=$price]';

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
    if (this.orderIdReference != null) {
      json[r'order_id_reference'] = this.orderIdReference;
    } else {
      json[r'order_id_reference'] = null;
    }
    if (this.isPriorityReset != null) {
      json[r'is_priority_reset'] = this.isPriorityReset;
    } else {
      json[r'is_priority_reset'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    return json;
  }

  /// Returns a new [Level3ModifyOrderModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Level3ModifyOrderModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Level3ModifyOrderModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Level3ModifyOrderModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Level3ModifyOrderModel(
        symbol: mapValueOfType<String>(json, r'symbol'),
        timestampNanos: mapValueOfType<int>(json, r'timestamp_nanos'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        orderIdReference: mapValueOfType<int>(json, r'order_id_reference'),
        isPriorityReset: mapValueOfType<bool>(json, r'is_priority_reset'),
        size: mapValueOfType<int>(json, r'size'),
        price: mapValueOfType<double>(json, r'price'),
      );
    }
    return null;
  }

  static List<Level3ModifyOrderModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Level3ModifyOrderModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Level3ModifyOrderModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Level3ModifyOrderModel> mapFromJson(dynamic json) {
    final map = <String, Level3ModifyOrderModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Level3ModifyOrderModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Level3ModifyOrderModel-objects as value to a dart map
  static Map<String, List<Level3ModifyOrderModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Level3ModifyOrderModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Level3ModifyOrderModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

