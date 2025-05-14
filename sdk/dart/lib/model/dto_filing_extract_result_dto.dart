//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DTOFilingExtractResultDto {
  /// Returns a new [DTOFilingExtractResultDto] instance.
  DTOFilingExtractResultDto({
    this.accessionNumber,
    this.formType,
    this.items = const [],
  });

  String? accessionNumber;

  String? formType;

  List<DTOFilingItemDto>? items;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DTOFilingExtractResultDto &&
    other.accessionNumber == accessionNumber &&
    other.formType == formType &&
    _deepEquality.equals(other.items, items);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessionNumber == null ? 0 : accessionNumber!.hashCode) +
    (formType == null ? 0 : formType!.hashCode) +
    (items == null ? 0 : items!.hashCode);

  @override
  String toString() => 'DTOFilingExtractResultDto[accessionNumber=$accessionNumber, formType=$formType, items=$items]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accessionNumber != null) {
      json[r'accession_number'] = this.accessionNumber;
    } else {
      json[r'accession_number'] = null;
    }
    if (this.formType != null) {
      json[r'form_type'] = this.formType;
    } else {
      json[r'form_type'] = null;
    }
    if (this.items != null) {
      json[r'items'] = this.items;
    } else {
      json[r'items'] = null;
    }
    return json;
  }

  /// Returns a new [DTOFilingExtractResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DTOFilingExtractResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DTOFilingExtractResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DTOFilingExtractResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DTOFilingExtractResultDto(
        accessionNumber: mapValueOfType<String>(json, r'accession_number'),
        formType: mapValueOfType<String>(json, r'form_type'),
        items: DTOFilingItemDto.listFromJson(json[r'items']),
      );
    }
    return null;
  }

  static List<DTOFilingExtractResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DTOFilingExtractResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DTOFilingExtractResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DTOFilingExtractResultDto> mapFromJson(dynamic json) {
    final map = <String, DTOFilingExtractResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DTOFilingExtractResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DTOFilingExtractResultDto-objects as value to a dart map
  static Map<String, List<DTOFilingExtractResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DTOFilingExtractResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DTOFilingExtractResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

