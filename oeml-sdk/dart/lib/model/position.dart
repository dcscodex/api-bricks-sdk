//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Position {
  /// Returns a new [Position] instance.
  Position({
    this.exchangeId,
    this.data = const [],
  });

  /// Exchange identifier used to identify the routing destination.
  String exchangeId;

  List<PositionData> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Position &&
     other.exchangeId == exchangeId &&
     other.data == data;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (exchangeId == null ? 0 : exchangeId.hashCode) +
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'Position[exchangeId=$exchangeId, data=$data]';

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

  /// Returns a new [Position] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Position fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Position(
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        data: PositionData.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<Position> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Position.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Position>[];

  static Map<String, Position> mapFromJson(dynamic json) {
    final map = <String, Position>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Position.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Position-objects as value to a dart map
  static Map<String, List<Position>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Position>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Position.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

