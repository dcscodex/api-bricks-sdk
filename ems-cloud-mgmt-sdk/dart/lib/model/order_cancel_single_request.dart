//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderCancelSingleRequest {
  /// Returns a new [OrderCancelSingleRequest] instance.
  OrderCancelSingleRequest({
    @required this.exchangeId,
    this.exchangeOrderId,
    this.clientOrderId,
  });

  /// Exchange identifier used to identify the routing destination.
  String exchangeId;

  /// Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
  String exchangeOrderId;

  /// The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
  String clientOrderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderCancelSingleRequest &&
     other.exchangeId == exchangeId &&
     other.exchangeOrderId == exchangeOrderId &&
     other.clientOrderId == clientOrderId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (exchangeId == null ? 0 : exchangeId.hashCode) +
    (exchangeOrderId == null ? 0 : exchangeOrderId.hashCode) +
    (clientOrderId == null ? 0 : clientOrderId.hashCode);

  @override
  String toString() => 'OrderCancelSingleRequest[exchangeId=$exchangeId, exchangeOrderId=$exchangeOrderId, clientOrderId=$clientOrderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'exchange_id'] = exchangeId;
    if (exchangeOrderId != null) {
      json[r'exchange_order_id'] = exchangeOrderId;
    }
    if (clientOrderId != null) {
      json[r'client_order_id'] = clientOrderId;
    }
    return json;
  }

  /// Returns a new [OrderCancelSingleRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderCancelSingleRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderCancelSingleRequest(
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        exchangeOrderId: mapValueOfType<String>(json, r'exchange_order_id'),
        clientOrderId: mapValueOfType<String>(json, r'client_order_id'),
      );
    }
    return null;
  }

  static List<OrderCancelSingleRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderCancelSingleRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderCancelSingleRequest>[];

  static Map<String, OrderCancelSingleRequest> mapFromJson(dynamic json) {
    final map = <String, OrderCancelSingleRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderCancelSingleRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderCancelSingleRequest-objects as value to a dart map
  static Map<String, List<OrderCancelSingleRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderCancelSingleRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderCancelSingleRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

