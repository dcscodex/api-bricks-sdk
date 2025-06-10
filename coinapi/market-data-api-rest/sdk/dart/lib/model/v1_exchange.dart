//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1Exchange {
  /// Returns a new [V1Exchange] instance.
  V1Exchange({
    this.exchangeId,
    this.website,
    this.name,
    this.dataStart,
    this.dataEnd,
    this.dataQuoteStart,
    this.dataQuoteEnd,
    this.dataOrderbookStart,
    this.dataOrderbookEnd,
    this.dataTradeStart,
    this.dataTradeEnd,
    this.dataTradeCount,
    this.dataSymbolsCount,
    this.volume1hrsUsd,
    this.volume1dayUsd,
    this.volume1mthUsd,
    this.metricId = const [],
    this.icons = const [],
    this.rank,
    this.integrationStatus,
  });

  /// Gets or sets the exchange ID.
  String? exchangeId;

  /// Gets or sets the website URL of the exchange.
  String? website;

  /// Gets or sets the name of the exchange.
  String? name;

  String? dataStart;

  String? dataEnd;

  /// Gets or sets the start date of quote data.
  DateTime? dataQuoteStart;

  /// Gets or sets the end date of quote data.
  DateTime? dataQuoteEnd;

  /// Gets or sets the start date of order book data.
  DateTime? dataOrderbookStart;

  /// Gets or sets the end date of order book data.
  DateTime? dataOrderbookEnd;

  /// Gets or sets the start date of trade data.
  DateTime? dataTradeStart;

  /// Gets or sets the end date of trade data.
  DateTime? dataTradeEnd;

  /// Gets or sets the number of trades.
  int? dataTradeCount;

  /// Gets or sets the number of symbols.
  int? dataSymbolsCount;

  /// Gets or sets the USD volume in the last 1 hour.
  double? volume1hrsUsd;

  /// Gets or sets the USD volume in the last 1 day.
  double? volume1dayUsd;

  /// Gets or sets the USD volume in the last 1 month.
  double? volume1mthUsd;

  /// Gets or sets the list of metric IDs.
  List<String>? metricId;

  /// Gets or sets the list of icons for the exchange.
  List<V1Icon>? icons;

  /// Rank of the exchange.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? rank;

  /// Status of the integration
  String? integrationStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Exchange &&
    other.exchangeId == exchangeId &&
    other.website == website &&
    other.name == name &&
    other.dataStart == dataStart &&
    other.dataEnd == dataEnd &&
    other.dataQuoteStart == dataQuoteStart &&
    other.dataQuoteEnd == dataQuoteEnd &&
    other.dataOrderbookStart == dataOrderbookStart &&
    other.dataOrderbookEnd == dataOrderbookEnd &&
    other.dataTradeStart == dataTradeStart &&
    other.dataTradeEnd == dataTradeEnd &&
    other.dataTradeCount == dataTradeCount &&
    other.dataSymbolsCount == dataSymbolsCount &&
    other.volume1hrsUsd == volume1hrsUsd &&
    other.volume1dayUsd == volume1dayUsd &&
    other.volume1mthUsd == volume1mthUsd &&
    _deepEquality.equals(other.metricId, metricId) &&
    _deepEquality.equals(other.icons, icons) &&
    other.rank == rank &&
    other.integrationStatus == integrationStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (exchangeId == null ? 0 : exchangeId!.hashCode) +
    (website == null ? 0 : website!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (dataStart == null ? 0 : dataStart!.hashCode) +
    (dataEnd == null ? 0 : dataEnd!.hashCode) +
    (dataQuoteStart == null ? 0 : dataQuoteStart!.hashCode) +
    (dataQuoteEnd == null ? 0 : dataQuoteEnd!.hashCode) +
    (dataOrderbookStart == null ? 0 : dataOrderbookStart!.hashCode) +
    (dataOrderbookEnd == null ? 0 : dataOrderbookEnd!.hashCode) +
    (dataTradeStart == null ? 0 : dataTradeStart!.hashCode) +
    (dataTradeEnd == null ? 0 : dataTradeEnd!.hashCode) +
    (dataTradeCount == null ? 0 : dataTradeCount!.hashCode) +
    (dataSymbolsCount == null ? 0 : dataSymbolsCount!.hashCode) +
    (volume1hrsUsd == null ? 0 : volume1hrsUsd!.hashCode) +
    (volume1dayUsd == null ? 0 : volume1dayUsd!.hashCode) +
    (volume1mthUsd == null ? 0 : volume1mthUsd!.hashCode) +
    (metricId == null ? 0 : metricId!.hashCode) +
    (icons == null ? 0 : icons!.hashCode) +
    (rank == null ? 0 : rank!.hashCode) +
    (integrationStatus == null ? 0 : integrationStatus!.hashCode);

  @override
  String toString() => 'V1Exchange[exchangeId=$exchangeId, website=$website, name=$name, dataStart=$dataStart, dataEnd=$dataEnd, dataQuoteStart=$dataQuoteStart, dataQuoteEnd=$dataQuoteEnd, dataOrderbookStart=$dataOrderbookStart, dataOrderbookEnd=$dataOrderbookEnd, dataTradeStart=$dataTradeStart, dataTradeEnd=$dataTradeEnd, dataTradeCount=$dataTradeCount, dataSymbolsCount=$dataSymbolsCount, volume1hrsUsd=$volume1hrsUsd, volume1dayUsd=$volume1dayUsd, volume1mthUsd=$volume1mthUsd, metricId=$metricId, icons=$icons, rank=$rank, integrationStatus=$integrationStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.exchangeId != null) {
      json[r'exchange_id'] = this.exchangeId;
    } else {
      json[r'exchange_id'] = null;
    }
    if (this.website != null) {
      json[r'website'] = this.website;
    } else {
      json[r'website'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.dataStart != null) {
      json[r'data_start'] = this.dataStart;
    } else {
      json[r'data_start'] = null;
    }
    if (this.dataEnd != null) {
      json[r'data_end'] = this.dataEnd;
    } else {
      json[r'data_end'] = null;
    }
    if (this.dataQuoteStart != null) {
      json[r'data_quote_start'] = this.dataQuoteStart!.toUtc().toIso8601String();
    } else {
      json[r'data_quote_start'] = null;
    }
    if (this.dataQuoteEnd != null) {
      json[r'data_quote_end'] = this.dataQuoteEnd!.toUtc().toIso8601String();
    } else {
      json[r'data_quote_end'] = null;
    }
    if (this.dataOrderbookStart != null) {
      json[r'data_orderbook_start'] = this.dataOrderbookStart!.toUtc().toIso8601String();
    } else {
      json[r'data_orderbook_start'] = null;
    }
    if (this.dataOrderbookEnd != null) {
      json[r'data_orderbook_end'] = this.dataOrderbookEnd!.toUtc().toIso8601String();
    } else {
      json[r'data_orderbook_end'] = null;
    }
    if (this.dataTradeStart != null) {
      json[r'data_trade_start'] = this.dataTradeStart!.toUtc().toIso8601String();
    } else {
      json[r'data_trade_start'] = null;
    }
    if (this.dataTradeEnd != null) {
      json[r'data_trade_end'] = this.dataTradeEnd!.toUtc().toIso8601String();
    } else {
      json[r'data_trade_end'] = null;
    }
    if (this.dataTradeCount != null) {
      json[r'data_trade_count'] = this.dataTradeCount;
    } else {
      json[r'data_trade_count'] = null;
    }
    if (this.dataSymbolsCount != null) {
      json[r'data_symbols_count'] = this.dataSymbolsCount;
    } else {
      json[r'data_symbols_count'] = null;
    }
    if (this.volume1hrsUsd != null) {
      json[r'volume_1hrs_usd'] = this.volume1hrsUsd;
    } else {
      json[r'volume_1hrs_usd'] = null;
    }
    if (this.volume1dayUsd != null) {
      json[r'volume_1day_usd'] = this.volume1dayUsd;
    } else {
      json[r'volume_1day_usd'] = null;
    }
    if (this.volume1mthUsd != null) {
      json[r'volume_1mth_usd'] = this.volume1mthUsd;
    } else {
      json[r'volume_1mth_usd'] = null;
    }
    if (this.metricId != null) {
      json[r'metric_id'] = this.metricId;
    } else {
      json[r'metric_id'] = null;
    }
    if (this.icons != null) {
      json[r'icons'] = this.icons;
    } else {
      json[r'icons'] = null;
    }
    if (this.rank != null) {
      json[r'rank'] = this.rank;
    } else {
      json[r'rank'] = null;
    }
    if (this.integrationStatus != null) {
      json[r'integration_status'] = this.integrationStatus;
    } else {
      json[r'integration_status'] = null;
    }
    return json;
  }

  /// Returns a new [V1Exchange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1Exchange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1Exchange[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1Exchange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1Exchange(
        exchangeId: mapValueOfType<String>(json, r'exchange_id'),
        website: mapValueOfType<String>(json, r'website'),
        name: mapValueOfType<String>(json, r'name'),
        dataStart: mapValueOfType<String>(json, r'data_start'),
        dataEnd: mapValueOfType<String>(json, r'data_end'),
        dataQuoteStart: mapDateTime(json, r'data_quote_start', r''),
        dataQuoteEnd: mapDateTime(json, r'data_quote_end', r''),
        dataOrderbookStart: mapDateTime(json, r'data_orderbook_start', r''),
        dataOrderbookEnd: mapDateTime(json, r'data_orderbook_end', r''),
        dataTradeStart: mapDateTime(json, r'data_trade_start', r''),
        dataTradeEnd: mapDateTime(json, r'data_trade_end', r''),
        dataTradeCount: mapValueOfType<int>(json, r'data_trade_count'),
        dataSymbolsCount: mapValueOfType<int>(json, r'data_symbols_count'),
        volume1hrsUsd: mapValueOfType<double>(json, r'volume_1hrs_usd'),
        volume1dayUsd: mapValueOfType<double>(json, r'volume_1day_usd'),
        volume1mthUsd: mapValueOfType<double>(json, r'volume_1mth_usd'),
        metricId: json[r'metric_id'] is Iterable
            ? (json[r'metric_id'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        icons: V1Icon.listFromJson(json[r'icons']),
        rank: mapValueOfType<double>(json, r'rank'),
        integrationStatus: mapValueOfType<String>(json, r'integration_status'),
      );
    }
    return null;
  }

  static List<V1Exchange> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1Exchange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1Exchange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1Exchange> mapFromJson(dynamic json) {
    final map = <String, V1Exchange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1Exchange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1Exchange-objects as value to a dart map
  static Map<String, List<V1Exchange>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1Exchange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1Exchange.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

