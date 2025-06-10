//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OptionsStrike {
  /// Returns a new [OptionsStrike] instance.
  OptionsStrike({
    this.strikePrice,
    this.call,
    this.put,
  });

  /// The strike price.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? strikePrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  V1QuoteTrade? call;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  V1QuoteTrade? put;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OptionsStrike &&
    other.strikePrice == strikePrice &&
    other.call == call &&
    other.put == put;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (strikePrice == null ? 0 : strikePrice!.hashCode) +
    (call == null ? 0 : call!.hashCode) +
    (put == null ? 0 : put!.hashCode);

  @override
  String toString() => 'OptionsStrike[strikePrice=$strikePrice, call=$call, put=$put]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.strikePrice != null) {
      json[r'strike_price'] = this.strikePrice;
    } else {
      json[r'strike_price'] = null;
    }
    if (this.call != null) {
      json[r'call'] = this.call;
    } else {
      json[r'call'] = null;
    }
    if (this.put != null) {
      json[r'put'] = this.put;
    } else {
      json[r'put'] = null;
    }
    return json;
  }

  /// Returns a new [OptionsStrike] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OptionsStrike? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OptionsStrike[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OptionsStrike[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OptionsStrike(
        strikePrice: mapValueOfType<double>(json, r'strike_price'),
        call: V1QuoteTrade.fromJson(json[r'call']),
        put: V1QuoteTrade.fromJson(json[r'put']),
      );
    }
    return null;
  }

  static List<OptionsStrike> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OptionsStrike>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OptionsStrike.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OptionsStrike> mapFromJson(dynamic json) {
    final map = <String, OptionsStrike>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OptionsStrike.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OptionsStrike-objects as value to a dart map
  static Map<String, List<OptionsStrike>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OptionsStrike>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OptionsStrike.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

