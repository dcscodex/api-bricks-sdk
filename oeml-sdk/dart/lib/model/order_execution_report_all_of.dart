//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderExecutionReportAllOf {
  /// Returns a new [OrderExecutionReportAllOf] instance.
  OrderExecutionReportAllOf({
    @required this.clientOrderIdFormatExchange,
    this.exchangeOrderId,
    @required this.amountOpen,
    @required this.amountFilled,
    this.avgPx,
    @required this.status,
    this.statusHistory = const [],
    this.errorMessage,
    this.fills = const [],
  });

  /// The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
  String clientOrderIdFormatExchange;

  /// Unique identifier of the order assigned by the exchange or executing system.
  String exchangeOrderId;

  /// Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
  num amountOpen;

  /// Total quantity filled.
  num amountFilled;

  /// Calculated average price of all fills on this order.
  num avgPx;

  OrdStatus status;

  /// Timestamped history of order status changes.
  List<List<String>> statusHistory;

  /// Error message.
  String errorMessage;

  /// Relay fill information on working orders.
  List<Fills> fills;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderExecutionReportAllOf &&
     other.clientOrderIdFormatExchange == clientOrderIdFormatExchange &&
     other.exchangeOrderId == exchangeOrderId &&
     other.amountOpen == amountOpen &&
     other.amountFilled == amountFilled &&
     other.avgPx == avgPx &&
     other.status == status &&
     other.statusHistory == statusHistory &&
     other.errorMessage == errorMessage &&
     other.fills == fills;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (clientOrderIdFormatExchange == null ? 0 : clientOrderIdFormatExchange.hashCode) +
    (exchangeOrderId == null ? 0 : exchangeOrderId.hashCode) +
    (amountOpen == null ? 0 : amountOpen.hashCode) +
    (amountFilled == null ? 0 : amountFilled.hashCode) +
    (avgPx == null ? 0 : avgPx.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (statusHistory == null ? 0 : statusHistory.hashCode) +
    (errorMessage == null ? 0 : errorMessage.hashCode) +
    (fills == null ? 0 : fills.hashCode);

  @override
  String toString() => 'OrderExecutionReportAllOf[clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, avgPx=$avgPx, status=$status, statusHistory=$statusHistory, errorMessage=$errorMessage, fills=$fills]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'client_order_id_format_exchange'] = clientOrderIdFormatExchange;
    if (exchangeOrderId != null) {
      json[r'exchange_order_id'] = exchangeOrderId;
    }
      json[r'amount_open'] = amountOpen;
      json[r'amount_filled'] = amountFilled;
    if (avgPx != null) {
      json[r'avg_px'] = avgPx;
    }
      json[r'status'] = status;
    if (statusHistory != null) {
      json[r'status_history'] = statusHistory;
    }
    if (errorMessage != null) {
      json[r'error_message'] = errorMessage;
    }
    if (fills != null) {
      json[r'fills'] = fills;
    }
    return json;
  }

  /// Returns a new [OrderExecutionReportAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderExecutionReportAllOf fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderExecutionReportAllOf(
        clientOrderIdFormatExchange: mapValueOfType<String>(json, r'client_order_id_format_exchange'),
        exchangeOrderId: mapValueOfType<String>(json, r'exchange_order_id'),
        amountOpen: json[r'amount_open'] == null
          ? null
          : num.parse(json[r'amount_open'].toString()),
        amountFilled: json[r'amount_filled'] == null
          ? null
          : num.parse(json[r'amount_filled'].toString()),
        avgPx: json[r'avg_px'] == null
          ? null
          : num.parse(json[r'avg_px'].toString()),
        status: OrdStatus.fromJson(json[r'status']),
        statusHistory: json[r'status_history'] is List
          ? (json[r'status_history'] as List).map(
              (e) => e == null ? null : (e as List).cast<String>()
            ).toList(growable: false)
          : null,
        errorMessage: mapValueOfType<String>(json, r'error_message'),
        fills: Fills.listFromJson(json[r'fills']),
      );
    }
    return null;
  }

  static List<OrderExecutionReportAllOf> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderExecutionReportAllOf.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderExecutionReportAllOf>[];

  static Map<String, OrderExecutionReportAllOf> mapFromJson(dynamic json) {
    final map = <String, OrderExecutionReportAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderExecutionReportAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderExecutionReportAllOf-objects as value to a dart map
  static Map<String, List<OrderExecutionReportAllOf>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderExecutionReportAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderExecutionReportAllOf.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

