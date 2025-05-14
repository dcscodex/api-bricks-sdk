//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MetadataExchange {
  /// Returns a new [MetadataExchange] instance.
  MetadataExchange({
    this.exchangeId,
    this.website,
    this.name,
  });

  /// Gets or sets the exchange ID.
  String? exchangeId;

  /// Gets or sets the website URL of the exchange.
  String? website;

  /// Gets or sets the name of the exchange.
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MetadataExchange &&
    other.exchangeId == exchangeId &&
    other.website == website &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (exchangeId == null ? 0 : exchangeId!.hashCode) +
    (website == null ? 0 : website!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'MetadataExchange[exchangeId=$exchangeId, website=$website, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.exchangeId != null) {
      json[r'exchange_id'] = this.exchangeId;
    } else {
      json[r'exchange_id'] = null;
    }
    if (this.website != null) {
      json[r'website'] = this.website;
    } else {
      json[r'website'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [MetadataExchange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MetadataExchange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MetadataExchange[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MetadataExchange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MetadataExchange(
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        website: mapValueOfType<String>(json, r'website'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<MetadataExchange> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MetadataExchange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MetadataExchange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MetadataExchange> mapFromJson(dynamic json) {
    final map = <String, MetadataExchange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MetadataExchange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MetadataExchange-objects as value to a dart map
  static Map<String, List<MetadataExchange>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MetadataExchange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MetadataExchange.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

