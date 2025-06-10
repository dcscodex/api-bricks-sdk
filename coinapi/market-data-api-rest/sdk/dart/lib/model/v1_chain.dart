//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1Chain {
  /// Returns a new [V1Chain] instance.
  V1Chain({
    this.chainId,
    this.name,
  });

  /// Gets or sets the chain identifier.
  String? chainId;

  /// Gets or sets the name of the chain.
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Chain &&
    other.chainId == chainId &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chainId == null ? 0 : chainId!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'V1Chain[chainId=$chainId, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chainId != null) {
      json[r'chain_id'] = this.chainId;
    } else {
      json[r'chain_id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [V1Chain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1Chain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1Chain[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1Chain[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1Chain(
        chainId: mapValueOfType<String>(json, r'chain_id'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<V1Chain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1Chain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1Chain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1Chain> mapFromJson(dynamic json) {
    final map = <String, V1Chain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1Chain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1Chain-objects as value to a dart map
  static Map<String, List<V1Chain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1Chain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1Chain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

