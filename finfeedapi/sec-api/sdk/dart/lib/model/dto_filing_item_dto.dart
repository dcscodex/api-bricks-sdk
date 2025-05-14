//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DTOFilingItemDto {
  /// Returns a new [DTOFilingItemDto] instance.
  DTOFilingItemDto({
    this.itemNumber,
    this.itemTitle,
    this.content,
  });

  String? itemNumber;

  String? itemTitle;

  String? content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DTOFilingItemDto &&
    other.itemNumber == itemNumber &&
    other.itemTitle == itemTitle &&
    other.content == content;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (itemNumber == null ? 0 : itemNumber!.hashCode) +
    (itemTitle == null ? 0 : itemTitle!.hashCode) +
    (content == null ? 0 : content!.hashCode);

  @override
  String toString() => 'DTOFilingItemDto[itemNumber=$itemNumber, itemTitle=$itemTitle, content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.itemNumber != null) {
      json[r'item_number'] = this.itemNumber;
    } else {
      json[r'item_number'] = null;
    }
    if (this.itemTitle != null) {
      json[r'item_title'] = this.itemTitle;
    } else {
      json[r'item_title'] = null;
    }
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    return json;
  }

  /// Returns a new [DTOFilingItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DTOFilingItemDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DTOFilingItemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DTOFilingItemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DTOFilingItemDto(
        itemNumber: mapValueOfType<String>(json, r'item_number'),
        itemTitle: mapValueOfType<String>(json, r'item_title'),
        content: mapValueOfType<String>(json, r'content'),
      );
    }
    return null;
  }

  static List<DTOFilingItemDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DTOFilingItemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DTOFilingItemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DTOFilingItemDto> mapFromJson(dynamic json) {
    final map = <String, DTOFilingItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DTOFilingItemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DTOFilingItemDto-objects as value to a dart map
  static Map<String, List<DTOFilingItemDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DTOFilingItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DTOFilingItemDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

