//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DTOSecFilingResultDto {
  /// Returns a new [DTOSecFilingResultDto] instance.
  DTOSecFilingResultDto({
    this.accessionNumber,
    this.formType,
    this.filingDate,
    this.companyName,
    this.cik,
    this.documentFilename,
    this.documentDescription,
    this.sourceFile,
  });

  String? accessionNumber;

  String? formType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? filingDate;

  String? companyName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cik;

  String? documentFilename;

  String? documentDescription;

  String? sourceFile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DTOSecFilingResultDto &&
    other.accessionNumber == accessionNumber &&
    other.formType == formType &&
    other.filingDate == filingDate &&
    other.companyName == companyName &&
    other.cik == cik &&
    other.documentFilename == documentFilename &&
    other.documentDescription == documentDescription &&
    other.sourceFile == sourceFile;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessionNumber == null ? 0 : accessionNumber!.hashCode) +
    (formType == null ? 0 : formType!.hashCode) +
    (filingDate == null ? 0 : filingDate!.hashCode) +
    (companyName == null ? 0 : companyName!.hashCode) +
    (cik == null ? 0 : cik!.hashCode) +
    (documentFilename == null ? 0 : documentFilename!.hashCode) +
    (documentDescription == null ? 0 : documentDescription!.hashCode) +
    (sourceFile == null ? 0 : sourceFile!.hashCode);

  @override
  String toString() => 'DTOSecFilingResultDto[accessionNumber=$accessionNumber, formType=$formType, filingDate=$filingDate, companyName=$companyName, cik=$cik, documentFilename=$documentFilename, documentDescription=$documentDescription, sourceFile=$sourceFile]';

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
    if (this.filingDate != null) {
      json[r'filing_date'] = _dateFormatter.format(this.filingDate!.toUtc());
    } else {
      json[r'filing_date'] = null;
    }
    if (this.companyName != null) {
      json[r'company_name'] = this.companyName;
    } else {
      json[r'company_name'] = null;
    }
    if (this.cik != null) {
      json[r'cik'] = this.cik;
    } else {
      json[r'cik'] = null;
    }
    if (this.documentFilename != null) {
      json[r'document_filename'] = this.documentFilename;
    } else {
      json[r'document_filename'] = null;
    }
    if (this.documentDescription != null) {
      json[r'document_description'] = this.documentDescription;
    } else {
      json[r'document_description'] = null;
    }
    if (this.sourceFile != null) {
      json[r'source_file'] = this.sourceFile;
    } else {
      json[r'source_file'] = null;
    }
    return json;
  }

  /// Returns a new [DTOSecFilingResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DTOSecFilingResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DTOSecFilingResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DTOSecFilingResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DTOSecFilingResultDto(
        accessionNumber: mapValueOfType<String>(json, r'accession_number'),
        formType: mapValueOfType<String>(json, r'form_type'),
        filingDate: mapDateTime(json, r'filing_date', r''),
        companyName: mapValueOfType<String>(json, r'company_name'),
        cik: mapValueOfType<int>(json, r'cik'),
        documentFilename: mapValueOfType<String>(json, r'document_filename'),
        documentDescription: mapValueOfType<String>(json, r'document_description'),
        sourceFile: mapValueOfType<String>(json, r'source_file'),
      );
    }
    return null;
  }

  static List<DTOSecFilingResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DTOSecFilingResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DTOSecFilingResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DTOSecFilingResultDto> mapFromJson(dynamic json) {
    final map = <String, DTOSecFilingResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DTOSecFilingResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DTOSecFilingResultDto-objects as value to a dart map
  static Map<String, List<DTOSecFilingResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DTOSecFilingResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DTOSecFilingResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

