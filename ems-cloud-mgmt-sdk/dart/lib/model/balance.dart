//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Balance {
  /// Returns a new [Balance] instance.
  Balance({
    this.exchangeId,
    this.data = const [],
  });

  /// Exchange identifier used to identify the routing destination.
  String exchangeId;

  List<BalanceData> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Balance &&
     other.exchangeId == exchangeId &&
     other.data == data;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (exchangeId == null ? 0 : exchangeId.hashCode) +
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'Balance[exchangeId=$exchangeId, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (exchangeId != null) {
      json[r'exchange_id'] = exchangeId;
    }
    if (data != null) {
      json[r'data'] = data;
    }
    return json;
  }

  /// Returns a new [Balance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Balance fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Balance(
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        data: BalanceData.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<Balance> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Balance.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Balance>[];

  static Map<String, Balance> mapFromJson(dynamic json) {
    final map = <String, Balance>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Balance.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Balance-objects as value to a dart map
  static Map<String, List<Balance>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Balance>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Balance.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

