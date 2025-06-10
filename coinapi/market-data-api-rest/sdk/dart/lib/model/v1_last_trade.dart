//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1LastTrade {
  /// Returns a new [V1LastTrade] instance.
  V1LastTrade({
    this.timeExchange,
    this.timeCoinapi,
    this.uuid,
    this.price,
    this.size,
    this.takerSide,
  });

  /// The exchange time of the last trade.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timeExchange;

  /// The CoinAPI time when the last trade was received.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timeCoinapi;

  /// The UUID of the last trade.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  /// The price of the last trade.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? price;

  /// The size of the last trade.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? size;

  /// The taker side of the last trade.
  String? takerSide;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1LastTrade &&
    other.timeExchange == timeExchange &&
    other.timeCoinapi == timeCoinapi &&
    other.uuid == uuid &&
    other.price == price &&
    other.size == size &&
    other.takerSide == takerSide;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timeExchange == null ? 0 : timeExchange!.hashCode) +
    (timeCoinapi == null ? 0 : timeCoinapi!.hashCode) +
    (uuid == null ? 0 : uuid!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (takerSide == null ? 0 : takerSide!.hashCode);

  @override
  String toString() => 'V1LastTrade[timeExchange=$timeExchange, timeCoinapi=$timeCoinapi, uuid=$uuid, price=$price, size=$size, takerSide=$takerSide]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.timeExchange != null) {
      json[r'time_exchange'] = this.timeExchange!.toUtc().toIso8601String();
    } else {
      json[r'time_exchange'] = null;
    }
    if (this.timeCoinapi != null) {
      json[r'time_coinapi'] = this.timeCoinapi!.toUtc().toIso8601String();
    } else {
      json[r'time_coinapi'] = null;
    }
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.takerSide != null) {
      json[r'taker_side'] = this.takerSide;
    } else {
      json[r'taker_side'] = null;
    }
    return json;
  }

  /// Returns a new [V1LastTrade] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1LastTrade? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1LastTrade[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1LastTrade[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1LastTrade(
        timeExchange: mapDateTime(json, r'time_exchange', r''),
        timeCoinapi: mapDateTime(json, r'time_coinapi', r''),
        uuid: mapValueOfType<String>(json, r'uuid'),
        price: mapValueOfType<double>(json, r'price'),
        size: mapValueOfType<double>(json, r'size'),
        takerSide: mapValueOfType<String>(json, r'taker_side'),
      );
    }
    return null;
  }

  static List<V1LastTrade> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1LastTrade>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1LastTrade.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1LastTrade> mapFromJson(dynamic json) {
    final map = <String, V1LastTrade>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1LastTrade.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1LastTrade-objects as value to a dart map
  static Map<String, List<V1LastTrade>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1LastTrade>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1LastTrade.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

