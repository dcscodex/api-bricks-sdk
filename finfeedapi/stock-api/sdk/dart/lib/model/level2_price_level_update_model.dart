//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Level2PriceLevelUpdateModel {
  /// Returns a new [Level2PriceLevelUpdateModel] instance.
  Level2PriceLevelUpdateModel({
    this.symbol,
    this.timestampNanos,
    this.timestamp,
    this.isSideBuy,
    this.isEventProcessingComplete,
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

  /// Time when the price level update was recorded as DateTime
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  /// Indicates if this is a price level update for the Buy Side.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSideBuy;

  /// Indicates if event processing is complete.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isEventProcessingComplete;

  /// Aggregate quoted size at the price level
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  /// Price level as decimal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? price;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Level2PriceLevelUpdateModel &&
    other.symbol == symbol &&
    other.timestampNanos == timestampNanos &&
    other.timestamp == timestamp &&
    other.isSideBuy == isSideBuy &&
    other.isEventProcessingComplete == isEventProcessingComplete &&
    other.size == size &&
    other.price == price;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbol == null ? 0 : symbol!.hashCode) +
    (timestampNanos == null ? 0 : timestampNanos!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (isSideBuy == null ? 0 : isSideBuy!.hashCode) +
    (isEventProcessingComplete == null ? 0 : isEventProcessingComplete!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (price == null ? 0 : price!.hashCode);

  @override
  String toString() => 'Level2PriceLevelUpdateModel[symbol=$symbol, timestampNanos=$timestampNanos, timestamp=$timestamp, isSideBuy=$isSideBuy, isEventProcessingComplete=$isEventProcessingComplete, size=$size, price=$price]';

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
    if (this.isEventProcessingComplete != null) {
      json[r'is_event_processing_complete'] = this.isEventProcessingComplete;
    } else {
      json[r'is_event_processing_complete'] = null;
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

  /// Returns a new [Level2PriceLevelUpdateModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Level2PriceLevelUpdateModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Level2PriceLevelUpdateModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Level2PriceLevelUpdateModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Level2PriceLevelUpdateModel(
        symbol: mapValueOfType<String>(json, r'symbol'),
        timestampNanos: mapValueOfType<int>(json, r'timestamp_nanos'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        isSideBuy: mapValueOfType<bool>(json, r'is_side_buy'),
        isEventProcessingComplete: mapValueOfType<bool>(json, r'is_event_processing_complete'),
        size: mapValueOfType<int>(json, r'size'),
        price: mapValueOfType<double>(json, r'price'),
      );
    }
    return null;
  }

  static List<Level2PriceLevelUpdateModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Level2PriceLevelUpdateModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Level2PriceLevelUpdateModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Level2PriceLevelUpdateModel> mapFromJson(dynamic json) {
    final map = <String, Level2PriceLevelUpdateModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Level2PriceLevelUpdateModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Level2PriceLevelUpdateModel-objects as value to a dart map
  static Map<String, List<Level2PriceLevelUpdateModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Level2PriceLevelUpdateModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Level2PriceLevelUpdateModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

