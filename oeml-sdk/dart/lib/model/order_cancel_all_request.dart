//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderCancelAllRequest {
  /// Returns a new [OrderCancelAllRequest] instance.
  OrderCancelAllRequest({
    @required this.exchangeId,
  });

  /// Identifier of the exchange from which active orders should be canceled.
  String exchangeId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderCancelAllRequest &&
     other.exchangeId == exchangeId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (exchangeId == null ? 0 : exchangeId.hashCode);

  @override
  String toString() => 'OrderCancelAllRequest[exchangeId=$exchangeId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'exchange_id'] = exchangeId;
    return json;
  }

  /// Returns a new [OrderCancelAllRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderCancelAllRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderCancelAllRequest(
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
      );
    }
    return null;
  }

  static List<OrderCancelAllRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderCancelAllRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderCancelAllRequest>[];

  static Map<String, OrderCancelAllRequest> mapFromJson(dynamic json) {
    final map = <String, OrderCancelAllRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderCancelAllRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderCancelAllRequest-objects as value to a dart map
  static Map<String, List<OrderCancelAllRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderCancelAllRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderCancelAllRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

