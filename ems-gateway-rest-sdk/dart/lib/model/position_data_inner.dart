//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PositionDataInner {
  /// Returns a new [PositionDataInner] instance.
  PositionDataInner({
    this.symbolIdExchange,
    this.symbolIdCoinapi,
    this.avgEntryPrice,
    this.quantity,
    this.side,
    this.unrealizedPnl,
    this.leverage,
    this.crossMargin,
    this.liquidationPrice,
    this.rawData,
  });

  /// Exchange symbol.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? symbolIdExchange;

  /// CoinAPI symbol.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? symbolIdCoinapi;

  /// Calculated average price of all fills on this position.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? avgEntryPrice;

  /// The current position quantity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? quantity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OrdSide? side;

  /// Unrealised profit or loss (PNL) of this position.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? unrealizedPnl;

  /// Leverage for this position reported by the exchange.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? leverage;

  /// Is cross margin mode enable for this position?
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? crossMargin;

  /// Liquidation price. If mark price will reach this value, the position will be liquidated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? liquidationPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? rawData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PositionDataInner &&
     other.symbolIdExchange == symbolIdExchange &&
     other.symbolIdCoinapi == symbolIdCoinapi &&
     other.avgEntryPrice == avgEntryPrice &&
     other.quantity == quantity &&
     other.side == side &&
     other.unrealizedPnl == unrealizedPnl &&
     other.leverage == leverage &&
     other.crossMargin == crossMargin &&
     other.liquidationPrice == liquidationPrice &&
     other.rawData == rawData;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (symbolIdExchange == null ? 0 : symbolIdExchange!.hashCode) +
    (symbolIdCoinapi == null ? 0 : symbolIdCoinapi!.hashCode) +
    (avgEntryPrice == null ? 0 : avgEntryPrice!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode) +
    (side == null ? 0 : side!.hashCode) +
    (unrealizedPnl == null ? 0 : unrealizedPnl!.hashCode) +
    (leverage == null ? 0 : leverage!.hashCode) +
    (crossMargin == null ? 0 : crossMargin!.hashCode) +
    (liquidationPrice == null ? 0 : liquidationPrice!.hashCode) +
    (rawData == null ? 0 : rawData!.hashCode);

  @override
  String toString() => 'PositionDataInner[symbolIdExchange=$symbolIdExchange, symbolIdCoinapi=$symbolIdCoinapi, avgEntryPrice=$avgEntryPrice, quantity=$quantity, side=$side, unrealizedPnl=$unrealizedPnl, leverage=$leverage, crossMargin=$crossMargin, liquidationPrice=$liquidationPrice, rawData=$rawData]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (symbolIdExchange != null) {
      _json[r'symbol_id_exchange'] = symbolIdExchange;
    }
    if (symbolIdCoinapi != null) {
      _json[r'symbol_id_coinapi'] = symbolIdCoinapi;
    }
    if (avgEntryPrice != null) {
      _json[r'avg_entry_price'] = avgEntryPrice;
    }
    if (quantity != null) {
      _json[r'quantity'] = quantity;
    }
    if (side != null) {
      _json[r'side'] = side;
    }
    if (unrealizedPnl != null) {
      _json[r'unrealized_pnl'] = unrealizedPnl;
    }
    if (leverage != null) {
      _json[r'leverage'] = leverage;
    }
    if (crossMargin != null) {
      _json[r'cross_margin'] = crossMargin;
    }
    if (liquidationPrice != null) {
      _json[r'liquidation_price'] = liquidationPrice;
    }
    if (rawData != null) {
      _json[r'raw_data'] = rawData;
    }
    return _json;
  }

  /// Returns a new [PositionDataInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PositionDataInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PositionDataInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PositionDataInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PositionDataInner(
        symbolIdExchange: mapValueOfType<String>(json, r'symbol_id_exchange'),
        symbolIdCoinapi: mapValueOfType<String>(json, r'symbol_id_coinapi'),
        avgEntryPrice: json[r'avg_entry_price'] == null
            ? null
            : num.parse(json[r'avg_entry_price'].toString()),
        quantity: json[r'quantity'] == null
            ? null
            : num.parse(json[r'quantity'].toString()),
        side: OrdSide.fromJson(json[r'side']),
        unrealizedPnl: json[r'unrealized_pnl'] == null
            ? null
            : num.parse(json[r'unrealized_pnl'].toString()),
        leverage: json[r'leverage'] == null
            ? null
            : num.parse(json[r'leverage'].toString()),
        crossMargin: mapValueOfType<bool>(json, r'cross_margin'),
        liquidationPrice: json[r'liquidation_price'] == null
            ? null
            : num.parse(json[r'liquidation_price'].toString()),
        rawData: mapValueOfType<Object>(json, r'raw_data'),
      );
    }
    return null;
  }

  static List<PositionDataInner>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PositionDataInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PositionDataInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PositionDataInner> mapFromJson(dynamic json) {
    final map = <String, PositionDataInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PositionDataInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PositionDataInner-objects as value to a dart map
  static Map<String, List<PositionDataInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PositionDataInner>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PositionDataInner.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

