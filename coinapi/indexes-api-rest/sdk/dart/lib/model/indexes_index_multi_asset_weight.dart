//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IndexesIndexMultiAssetWeight {
  /// Returns a new [IndexesIndexMultiAssetWeight] instance.
  IndexesIndexMultiAssetWeight({
    this.indexId,
    this.assetId,
    this.weight,
  });

  String? indexId;

  String? assetId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? weight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexesIndexMultiAssetWeight &&
    other.indexId == indexId &&
    other.assetId == assetId &&
    other.weight == weight;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (indexId == null ? 0 : indexId!.hashCode) +
    (assetId == null ? 0 : assetId!.hashCode) +
    (weight == null ? 0 : weight!.hashCode);

  @override
  String toString() => 'IndexesIndexMultiAssetWeight[indexId=$indexId, assetId=$assetId, weight=$weight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.indexId != null) {
      json[r'indexId'] = this.indexId;
    } else {
      json[r'indexId'] = null;
    }
    if (this.assetId != null) {
      json[r'assetId'] = this.assetId;
    } else {
      json[r'assetId'] = null;
    }
    if (this.weight != null) {
      json[r'weight'] = this.weight;
    } else {
      json[r'weight'] = null;
    }
    return json;
  }

  /// Returns a new [IndexesIndexMultiAssetWeight] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexesIndexMultiAssetWeight? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexesIndexMultiAssetWeight[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexesIndexMultiAssetWeight[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexesIndexMultiAssetWeight(
        indexId: mapValueOfType<String>(json, r'indexId'),
        assetId: mapValueOfType<String>(json, r'assetId'),
        weight: mapValueOfType<double>(json, r'weight'),
      );
    }
    return null;
  }

  static List<IndexesIndexMultiAssetWeight> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexesIndexMultiAssetWeight>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexesIndexMultiAssetWeight.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexesIndexMultiAssetWeight> mapFromJson(dynamic json) {
    final map = <String, IndexesIndexMultiAssetWeight>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexesIndexMultiAssetWeight.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexesIndexMultiAssetWeight-objects as value to a dart map
  static Map<String, List<IndexesIndexMultiAssetWeight>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexesIndexMultiAssetWeight>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexesIndexMultiAssetWeight.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

