//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IndexesIndexDefinitionSnapshotEntry {
  /// Returns a new [IndexesIndexDefinitionSnapshotEntry] instance.
  IndexesIndexDefinitionSnapshotEntry({
    this.indexId,
    this.timestamp,
    this.value,
  });

  String? indexId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexesIndexDefinitionSnapshotEntry &&
    other.indexId == indexId &&
    other.timestamp == timestamp &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (indexId == null ? 0 : indexId!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'IndexesIndexDefinitionSnapshotEntry[indexId=$indexId, timestamp=$timestamp, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.indexId != null) {
      json[r'index_id'] = this.indexId;
    } else {
      json[r'index_id'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [IndexesIndexDefinitionSnapshotEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexesIndexDefinitionSnapshotEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexesIndexDefinitionSnapshotEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexesIndexDefinitionSnapshotEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexesIndexDefinitionSnapshotEntry(
        indexId: mapValueOfType<String>(json, r'index_id'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        value: mapValueOfType<double>(json, r'value'),
      );
    }
    return null;
  }

  static List<IndexesIndexDefinitionSnapshotEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexesIndexDefinitionSnapshotEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexesIndexDefinitionSnapshotEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexesIndexDefinitionSnapshotEntry> mapFromJson(dynamic json) {
    final map = <String, IndexesIndexDefinitionSnapshotEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexesIndexDefinitionSnapshotEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexesIndexDefinitionSnapshotEntry-objects as value to a dart map
  static Map<String, List<IndexesIndexDefinitionSnapshotEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexesIndexDefinitionSnapshotEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexesIndexDefinitionSnapshotEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

