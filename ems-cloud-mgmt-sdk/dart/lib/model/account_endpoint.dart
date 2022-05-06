//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountEndpoint {
  /// Returns a new [AccountEndpoint] instance.
  AccountEndpoint({
    this.exchangeId,
    this.locationId,
    this.endpointSchema,
    this.endpointHost,
    this.endpointUrl,
  });

  /// Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code> 
  String exchangeId;

  /// Location identifier
  String locationId;

  /// Endpoint schema
  String endpointSchema;

  /// Endpoint host
  String endpointHost;

  /// Endpoint URL
  String endpointUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountEndpoint &&
     other.exchangeId == exchangeId &&
     other.locationId == locationId &&
     other.endpointSchema == endpointSchema &&
     other.endpointHost == endpointHost &&
     other.endpointUrl == endpointUrl;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (exchangeId == null ? 0 : exchangeId.hashCode) +
    (locationId == null ? 0 : locationId.hashCode) +
    (endpointSchema == null ? 0 : endpointSchema.hashCode) +
    (endpointHost == null ? 0 : endpointHost.hashCode) +
    (endpointUrl == null ? 0 : endpointUrl.hashCode);

  @override
  String toString() => 'AccountEndpoint[exchangeId=$exchangeId, locationId=$locationId, endpointSchema=$endpointSchema, endpointHost=$endpointHost, endpointUrl=$endpointUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (exchangeId != null) {
      json[r'exchange_id'] = exchangeId;
    }
    if (locationId != null) {
      json[r'location_id'] = locationId;
    }
    if (endpointSchema != null) {
      json[r'endpoint_schema'] = endpointSchema;
    }
    if (endpointHost != null) {
      json[r'endpoint_host'] = endpointHost;
    }
    if (endpointUrl != null) {
      json[r'endpoint_url'] = endpointUrl;
    }
    return json;
  }

  /// Returns a new [AccountEndpoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountEndpoint fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AccountEndpoint(
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        locationId: mapValueOfType<String>(json, r'location_id'),
        endpointSchema: mapValueOfType<String>(json, r'endpoint_schema'),
        endpointHost: mapValueOfType<String>(json, r'endpoint_host'),
        endpointUrl: mapValueOfType<String>(json, r'endpoint_url'),
      );
    }
    return null;
  }

  static List<AccountEndpoint> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountEndpoint.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountEndpoint>[];

  static Map<String, AccountEndpoint> mapFromJson(dynamic json) {
    final map = <String, AccountEndpoint>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AccountEndpoint.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccountEndpoint-objects as value to a dart map
  static Map<String, List<AccountEndpoint>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AccountEndpoint>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AccountEndpoint.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

