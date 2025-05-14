//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Level3AddOrderModel {
  /// Returns a new [Level3AddOrderModel] instance.
  Level3AddOrderModel({
    this.symbol,
    this.timestampNanos,
    this.timestamp,
    this.isSideBuy,
    this.size,
    this.price,
    this.orderId,
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

  /// Time when the order was added as DateTime (UTC)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// Indicates if this is a Buy order ('8'/0x38).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSideBuy;

  /// Quoted size in number of shares
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

  /// Order identifier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Level3AddOrderModel &&
    other.symbol == symbol &&
    other.timestampNanos == timestampNanos &&
    other.timestamp == timestamp &&
    other.isSideBuy == isSideBuy &&
    other.size == size &&
    other.price == price &&
    other.orderId == orderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbol == null ? 0 : symbol!.hashCode) +
    (timestampNanos == null ? 0 : timestampNanos!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (isSideBuy == null ? 0 : isSideBuy!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (orderId == null ? 0 : orderId!.hashCode);

  @override
  String toString() => 'Level3AddOrderModel[symbol=$symbol, timestampNanos=$timestampNanos, timestamp=$timestamp, isSideBuy=$isSideBuy, size=$size, price=$price, orderId=$orderId]';

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
    if (this.isSideBuy != null) {
      json[r'is_side_buy'] = this.isSideBuy;
    } else {
      json[r'is_side_buy'] = null;
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
    if (this.orderId != null) {
      json[r'order_id'] = this.orderId;
    } else {
      json[r'order_id'] = null;
    }
    return json;
  }

  /// Returns a new [Level3AddOrderModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Level3AddOrderModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Level3AddOrderModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Level3AddOrderModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Level3AddOrderModel(
        symbol: mapValueOfType<String>(json, r'symbol'),
        timestampNanos: mapValueOfType<int>(json, r'timestamp_nanos'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        isSideBuy: mapValueOfType<bool>(json, r'is_side_buy'),
        size: mapValueOfType<int>(json, r'size'),
        price: mapValueOfType<double>(json, r'price'),
        orderId: mapValueOfType<int>(json, r'order_id'),
      );
    }
    return null;
  }

  static List<Level3AddOrderModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Level3AddOrderModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Level3AddOrderModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Level3AddOrderModel> mapFromJson(dynamic json) {
    final map = <String, Level3AddOrderModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Level3AddOrderModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Level3AddOrderModel-objects as value to a dart map
  static Map<String, List<Level3AddOrderModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Level3AddOrderModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Level3AddOrderModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

