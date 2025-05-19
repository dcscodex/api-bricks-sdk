//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IndexesIndexValueComponent {
  /// Returns a new [IndexesIndexValueComponent] instance.
  IndexesIndexValueComponent({
    this.componentId,
    this.componentValue,
  });

  String? componentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? componentValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexesIndexValueComponent &&
    other.componentId == componentId &&
    other.componentValue == componentValue;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (componentId == null ? 0 : componentId!.hashCode) +
    (componentValue == null ? 0 : componentValue!.hashCode);

  @override
  String toString() => 'IndexesIndexValueComponent[componentId=$componentId, componentValue=$componentValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.componentId != null) {
      json[r'component_id'] = this.componentId;
    } else {
      json[r'component_id'] = null;
    }
    if (this.componentValue != null) {
      json[r'component_value'] = this.componentValue;
    } else {
      json[r'component_value'] = null;
    }
    return json;
  }

  /// Returns a new [IndexesIndexValueComponent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexesIndexValueComponent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexesIndexValueComponent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexesIndexValueComponent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexesIndexValueComponent(
        componentId: mapValueOfType<String>(json, r'component_id'),
        componentValue: mapValueOfType<double>(json, r'component_value'),
      );
    }
    return null;
  }

  static List<IndexesIndexValueComponent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexesIndexValueComponent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexesIndexValueComponent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexesIndexValueComponent> mapFromJson(dynamic json) {
    final map = <String, IndexesIndexValueComponent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexesIndexValueComponent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexesIndexValueComponent-objects as value to a dart map
  static Map<String, List<IndexesIndexValueComponent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexesIndexValueComponent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexesIndexValueComponent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

