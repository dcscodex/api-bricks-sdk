//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetAccount {
  /// Returns a new [GetAccount] instance.
  GetAccount({
    this.exchangeId,
    this.parameters = const [],
  });

  /// Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code> 
  String exchangeId;

  /// Exchange specific configuration parameters
  List<KeyValue> parameters;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetAccount &&
     other.exchangeId == exchangeId &&
     other.parameters == parameters;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (exchangeId == null ? 0 : exchangeId.hashCode) +
    (parameters == null ? 0 : parameters.hashCode);

  @override
  String toString() => 'GetAccount[exchangeId=$exchangeId, parameters=$parameters]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (exchangeId != null) {
      json[r'exchange_id'] = exchangeId;
    }
    if (parameters != null) {
      json[r'parameters'] = parameters;
    }
    return json;
  }

  /// Returns a new [GetAccount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAccount fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GetAccount(
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        parameters: KeyValue.listFromJson(json[r'parameters']),
      );
    }
    return null;
  }

  static List<GetAccount> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GetAccount.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GetAccount>[];

  static Map<String, GetAccount> mapFromJson(dynamic json) {
    final map = <String, GetAccount>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GetAccount.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GetAccount-objects as value to a dart map
  static Map<String, List<GetAccount>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GetAccount>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GetAccount.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

