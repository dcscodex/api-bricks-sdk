//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DTOFilingMetadataDto {
  /// Returns a new [DTOFilingMetadataDto] instance.
  DTOFilingMetadataDto({
    this.cik,
    this.accessionNumber,
    this.filingDate,
    this.reportDate,
    this.acceptanceDateTime,
    this.act,
    this.form,
    this.fileNumber,
    this.filmNumber,
    this.items,
    this.coreType,
    this.size,
    this.isXbrl,
    this.isInlineXbrl,
    this.primaryDocument,
    this.primaryDocDescription,
    this.sourceFile,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cik;

  String? accessionNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? filingDate;

  DateTime? reportDate;

  DateTime? acceptanceDateTime;

  String? act;

  String? form;

  String? fileNumber;

  String? filmNumber;

  String? items;

  String? coreType;

  int? size;

  bool? isXbrl;

  bool? isInlineXbrl;

  String? primaryDocument;

  String? primaryDocDescription;

  String? sourceFile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DTOFilingMetadataDto &&
    other.cik == cik &&
    other.accessionNumber == accessionNumber &&
    other.filingDate == filingDate &&
    other.reportDate == reportDate &&
    other.acceptanceDateTime == acceptanceDateTime &&
    other.act == act &&
    other.form == form &&
    other.fileNumber == fileNumber &&
    other.filmNumber == filmNumber &&
    other.items == items &&
    other.coreType == coreType &&
    other.size == size &&
    other.isXbrl == isXbrl &&
    other.isInlineXbrl == isInlineXbrl &&
    other.primaryDocument == primaryDocument &&
    other.primaryDocDescription == primaryDocDescription &&
    other.sourceFile == sourceFile;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cik == null ? 0 : cik!.hashCode) +
    (accessionNumber == null ? 0 : accessionNumber!.hashCode) +
    (filingDate == null ? 0 : filingDate!.hashCode) +
    (reportDate == null ? 0 : reportDate!.hashCode) +
    (acceptanceDateTime == null ? 0 : acceptanceDateTime!.hashCode) +
    (act == null ? 0 : act!.hashCode) +
    (form == null ? 0 : form!.hashCode) +
    (fileNumber == null ? 0 : fileNumber!.hashCode) +
    (filmNumber == null ? 0 : filmNumber!.hashCode) +
    (items == null ? 0 : items!.hashCode) +
    (coreType == null ? 0 : coreType!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (isXbrl == null ? 0 : isXbrl!.hashCode) +
    (isInlineXbrl == null ? 0 : isInlineXbrl!.hashCode) +
    (primaryDocument == null ? 0 : primaryDocument!.hashCode) +
    (primaryDocDescription == null ? 0 : primaryDocDescription!.hashCode) +
    (sourceFile == null ? 0 : sourceFile!.hashCode);

  @override
  String toString() => 'DTOFilingMetadataDto[cik=$cik, accessionNumber=$accessionNumber, filingDate=$filingDate, reportDate=$reportDate, acceptanceDateTime=$acceptanceDateTime, act=$act, form=$form, fileNumber=$fileNumber, filmNumber=$filmNumber, items=$items, coreType=$coreType, size=$size, isXbrl=$isXbrl, isInlineXbrl=$isInlineXbrl, primaryDocument=$primaryDocument, primaryDocDescription=$primaryDocDescription, sourceFile=$sourceFile]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cik != null) {
      json[r'cik'] = this.cik;
    } else {
      json[r'cik'] = null;
    }
    if (this.accessionNumber != null) {
      json[r'accession_number'] = this.accessionNumber;
    } else {
      json[r'accession_number'] = null;
    }
    if (this.filingDate != null) {
      json[r'filing_date'] = _dateFormatter.format(this.filingDate!.toUtc());
    } else {
      json[r'filing_date'] = null;
    }
    if (this.reportDate != null) {
      json[r'report_date'] = _dateFormatter.format(this.reportDate!.toUtc());
    } else {
      json[r'report_date'] = null;
    }
    if (this.acceptanceDateTime != null) {
      json[r'acceptance_date_time'] = this.acceptanceDateTime!.toUtc().toIso8601String();
    } else {
      json[r'acceptance_date_time'] = null;
    }
    if (this.act != null) {
      json[r'act'] = this.act;
    } else {
      json[r'act'] = null;
    }
    if (this.form != null) {
      json[r'form'] = this.form;
    } else {
      json[r'form'] = null;
    }
    if (this.fileNumber != null) {
      json[r'file_number'] = this.fileNumber;
    } else {
      json[r'file_number'] = null;
    }
    if (this.filmNumber != null) {
      json[r'film_number'] = this.filmNumber;
    } else {
      json[r'film_number'] = null;
    }
    if (this.items != null) {
      json[r'items'] = this.items;
    } else {
      json[r'items'] = null;
    }
    if (this.coreType != null) {
      json[r'core_type'] = this.coreType;
    } else {
      json[r'core_type'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.isXbrl != null) {
      json[r'is_xbrl'] = this.isXbrl;
    } else {
      json[r'is_xbrl'] = null;
    }
    if (this.isInlineXbrl != null) {
      json[r'is_inline_xbrl'] = this.isInlineXbrl;
    } else {
      json[r'is_inline_xbrl'] = null;
    }
    if (this.primaryDocument != null) {
      json[r'primary_document'] = this.primaryDocument;
    } else {
      json[r'primary_document'] = null;
    }
    if (this.primaryDocDescription != null) {
      json[r'primary_doc_description'] = this.primaryDocDescription;
    } else {
      json[r'primary_doc_description'] = null;
    }
    if (this.sourceFile != null) {
      json[r'source_file'] = this.sourceFile;
    } else {
      json[r'source_file'] = null;
    }
    return json;
  }

  /// Returns a new [DTOFilingMetadataDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DTOFilingMetadataDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DTOFilingMetadataDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DTOFilingMetadataDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DTOFilingMetadataDto(
        cik: mapValueOfType<int>(json, r'cik'),
        accessionNumber: mapValueOfType<String>(json, r'accession_number'),
        filingDate: mapDateTime(json, r'filing_date', r''),
        reportDate: mapDateTime(json, r'report_date', r''),
        acceptanceDateTime: mapDateTime(json, r'acceptance_date_time', r''),
        act: mapValueOfType<String>(json, r'act'),
        form: mapValueOfType<String>(json, r'form'),
        fileNumber: mapValueOfType<String>(json, r'file_number'),
        filmNumber: mapValueOfType<String>(json, r'film_number'),
        items: mapValueOfType<String>(json, r'items'),
        coreType: mapValueOfType<String>(json, r'core_type'),
        size: mapValueOfType<int>(json, r'size'),
        isXbrl: mapValueOfType<bool>(json, r'is_xbrl'),
        isInlineXbrl: mapValueOfType<bool>(json, r'is_inline_xbrl'),
        primaryDocument: mapValueOfType<String>(json, r'primary_document'),
        primaryDocDescription: mapValueOfType<String>(json, r'primary_doc_description'),
        sourceFile: mapValueOfType<String>(json, r'source_file'),
      );
    }
    return null;
  }

  static List<DTOFilingMetadataDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DTOFilingMetadataDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DTOFilingMetadataDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DTOFilingMetadataDto> mapFromJson(dynamic json) {
    final map = <String, DTOFilingMetadataDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DTOFilingMetadataDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DTOFilingMetadataDto-objects as value to a dart map
  static Map<String, List<DTOFilingMetadataDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DTOFilingMetadataDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DTOFilingMetadataDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

