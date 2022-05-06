//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountData {
  /// Returns a new [AccountData] instance.
  AccountData({
    this.exchangeId,
    this.parameters = const [],
  });

  /// Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code> 
  String exchangeId;

  /// Parameters required to log into the exchange
  List<KeyValue> parameters;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountData &&
     other.exchangeId == exchangeId &&
     other.parameters == parameters;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (exchangeId == null ? 0 : exchangeId.hashCode) +
    (parameters == null ? 0 : parameters.hashCode);

  @override
  String toString() => 'AccountData[exchangeId=$exchangeId, parameters=$parameters]';

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

  /// Returns a new [AccountData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountData fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AccountData(
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        parameters: KeyValue.listFromJson(json[r'parameters']),
      );
    }
    return null;
  }

  static List<AccountData> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountData.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountData>[];

  static Map<String, AccountData> mapFromJson(dynamic json) {
    final map = <String, AccountData>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AccountData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccountData-objects as value to a dart map
  static Map<String, List<AccountData>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AccountData>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AccountData.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

