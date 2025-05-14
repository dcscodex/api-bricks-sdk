//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FinFeedAPIExchangeModel {
  /// Returns a new [FinFeedAPIExchangeModel] instance.
  FinFeedAPIExchangeModel({
    this.exchangeId,
    this.lastDatapointDate,
    this.mic,
    this.operatingMic,
    this.oprtSgmt,
    this.marketNameInstitutionDescription,
    this.legalEntityName,
    this.lei,
    this.marketCategoryCode,
    this.acronym,
    this.isoCountryCode,
    this.city,
    this.website,
    this.status,
    this.creationDate,
    this.lastUpdateDate,
    this.lastValidationDate,
    this.expiryDate,
    this.comments,
  });

  String? exchangeId;

  String? lastDatapointDate;

  String? mic;

  String? operatingMic;

  String? oprtSgmt;

  String? marketNameInstitutionDescription;

  String? legalEntityName;

  String? lei;

  String? marketCategoryCode;

  String? acronym;

  String? isoCountryCode;

  String? city;

  String? website;

  String? status;

  DateTime? creationDate;

  DateTime? lastUpdateDate;

  DateTime? lastValidationDate;

  DateTime? expiryDate;

  String? comments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FinFeedAPIExchangeModel &&
    other.exchangeId == exchangeId &&
    other.lastDatapointDate == lastDatapointDate &&
    other.mic == mic &&
    other.operatingMic == operatingMic &&
    other.oprtSgmt == oprtSgmt &&
    other.marketNameInstitutionDescription == marketNameInstitutionDescription &&
    other.legalEntityName == legalEntityName &&
    other.lei == lei &&
    other.marketCategoryCode == marketCategoryCode &&
    other.acronym == acronym &&
    other.isoCountryCode == isoCountryCode &&
    other.city == city &&
    other.website == website &&
    other.status == status &&
    other.creationDate == creationDate &&
    other.lastUpdateDate == lastUpdateDate &&
    other.lastValidationDate == lastValidationDate &&
    other.expiryDate == expiryDate &&
    other.comments == comments;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (exchangeId == null ? 0 : exchangeId!.hashCode) +
    (lastDatapointDate == null ? 0 : lastDatapointDate!.hashCode) +
    (mic == null ? 0 : mic!.hashCode) +
    (operatingMic == null ? 0 : operatingMic!.hashCode) +
    (oprtSgmt == null ? 0 : oprtSgmt!.hashCode) +
    (marketNameInstitutionDescription == null ? 0 : marketNameInstitutionDescription!.hashCode) +
    (legalEntityName == null ? 0 : legalEntityName!.hashCode) +
    (lei == null ? 0 : lei!.hashCode) +
    (marketCategoryCode == null ? 0 : marketCategoryCode!.hashCode) +
    (acronym == null ? 0 : acronym!.hashCode) +
    (isoCountryCode == null ? 0 : isoCountryCode!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (website == null ? 0 : website!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (creationDate == null ? 0 : creationDate!.hashCode) +
    (lastUpdateDate == null ? 0 : lastUpdateDate!.hashCode) +
    (lastValidationDate == null ? 0 : lastValidationDate!.hashCode) +
    (expiryDate == null ? 0 : expiryDate!.hashCode) +
    (comments == null ? 0 : comments!.hashCode);

  @override
  String toString() => 'FinFeedAPIExchangeModel[exchangeId=$exchangeId, lastDatapointDate=$lastDatapointDate, mic=$mic, operatingMic=$operatingMic, oprtSgmt=$oprtSgmt, marketNameInstitutionDescription=$marketNameInstitutionDescription, legalEntityName=$legalEntityName, lei=$lei, marketCategoryCode=$marketCategoryCode, acronym=$acronym, isoCountryCode=$isoCountryCode, city=$city, website=$website, status=$status, creationDate=$creationDate, lastUpdateDate=$lastUpdateDate, lastValidationDate=$lastValidationDate, expiryDate=$expiryDate, comments=$comments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.exchangeId != null) {
      json[r'exchange_id'] = this.exchangeId;
    } else {
      json[r'exchange_id'] = null;
    }
    if (this.lastDatapointDate != null) {
      json[r'last_datapoint_date'] = this.lastDatapointDate;
    } else {
      json[r'last_datapoint_date'] = null;
    }
    if (this.mic != null) {
      json[r'mic'] = this.mic;
    } else {
      json[r'mic'] = null;
    }
    if (this.operatingMic != null) {
      json[r'operating_mic'] = this.operatingMic;
    } else {
      json[r'operating_mic'] = null;
    }
    if (this.oprtSgmt != null) {
      json[r'oprt_sgmt'] = this.oprtSgmt;
    } else {
      json[r'oprt_sgmt'] = null;
    }
    if (this.marketNameInstitutionDescription != null) {
      json[r'market_name_institution_description'] = this.marketNameInstitutionDescription;
    } else {
      json[r'market_name_institution_description'] = null;
    }
    if (this.legalEntityName != null) {
      json[r'legal_entity_name'] = this.legalEntityName;
    } else {
      json[r'legal_entity_name'] = null;
    }
    if (this.lei != null) {
      json[r'lei'] = this.lei;
    } else {
      json[r'lei'] = null;
    }
    if (this.marketCategoryCode != null) {
      json[r'market_category_code'] = this.marketCategoryCode;
    } else {
      json[r'market_category_code'] = null;
    }
    if (this.acronym != null) {
      json[r'acronym'] = this.acronym;
    } else {
      json[r'acronym'] = null;
    }
    if (this.isoCountryCode != null) {
      json[r'iso_country_code'] = this.isoCountryCode;
    } else {
      json[r'iso_country_code'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.website != null) {
      json[r'website'] = this.website;
    } else {
      json[r'website'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.creationDate != null) {
      json[r'creation_date'] = this.creationDate!.toUtc().toIso8601String();
    } else {
      json[r'creation_date'] = null;
    }
    if (this.lastUpdateDate != null) {
      json[r'last_update_date'] = this.lastUpdateDate!.toUtc().toIso8601String();
    } else {
      json[r'last_update_date'] = null;
    }
    if (this.lastValidationDate != null) {
      json[r'last_validation_date'] = this.lastValidationDate!.toUtc().toIso8601String();
    } else {
      json[r'last_validation_date'] = null;
    }
    if (this.expiryDate != null) {
      json[r'expiry_date'] = this.expiryDate!.toUtc().toIso8601String();
    } else {
      json[r'expiry_date'] = null;
    }
    if (this.comments != null) {
      json[r'comments'] = this.comments;
    } else {
      json[r'comments'] = null;
    }
    return json;
  }

  /// Returns a new [FinFeedAPIExchangeModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FinFeedAPIExchangeModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FinFeedAPIExchangeModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FinFeedAPIExchangeModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FinFeedAPIExchangeModel(
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        lastDatapointDate: mapValueOfType<String>(json, r'last_datapoint_date'),
        mic: mapValueOfType<String>(json, r'mic'),
        operatingMic: mapValueOfType<String>(json, r'operating_mic'),
        oprtSgmt: mapValueOfType<String>(json, r'oprt_sgmt'),
        marketNameInstitutionDescription: mapValueOfType<String>(json, r'market_name_institution_description'),
        legalEntityName: mapValueOfType<String>(json, r'legal_entity_name'),
        lei: mapValueOfType<String>(json, r'lei'),
        marketCategoryCode: mapValueOfType<String>(json, r'market_category_code'),
        acronym: mapValueOfType<String>(json, r'acronym'),
        isoCountryCode: mapValueOfType<String>(json, r'iso_country_code'),
        city: mapValueOfType<String>(json, r'city'),
        website: mapValueOfType<String>(json, r'website'),
        status: mapValueOfType<String>(json, r'status'),
        creationDate: mapDateTime(json, r'creation_date', r''),
        lastUpdateDate: mapDateTime(json, r'last_update_date', r''),
        lastValidationDate: mapDateTime(json, r'last_validation_date', r''),
        expiryDate: mapDateTime(json, r'expiry_date', r''),
        comments: mapValueOfType<String>(json, r'comments'),
      );
    }
    return null;
  }

  static List<FinFeedAPIExchangeModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FinFeedAPIExchangeModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FinFeedAPIExchangeModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FinFeedAPIExchangeModel> mapFromJson(dynamic json) {
    final map = <String, FinFeedAPIExchangeModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FinFeedAPIExchangeModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FinFeedAPIExchangeModel-objects as value to a dart map
  static Map<String, List<FinFeedAPIExchangeModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FinFeedAPIExchangeModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FinFeedAPIExchangeModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

