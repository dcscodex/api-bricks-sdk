//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/v1_asset.dart';
import 'package:openapi/src/model/v1_chain_network_address.dart';
import 'package:openapi/src/model/v1_exchange_rate.dart';
import 'package:openapi/src/model/v1_exchange_rates.dart';
import 'package:openapi/src/model/v1_exchange_rates_rate.dart';
import 'package:openapi/src/model/v1_exchange_rates_timeseries_item.dart';
import 'package:openapi/src/model/v1_icon.dart';
import 'package:openapi/src/model/v1_timeseries_period.dart';

part 'serializers.g.dart';

@SerializersFor([
  V1Asset,
  V1ChainNetworkAddress,
  V1ExchangeRate,
  V1ExchangeRates,
  V1ExchangeRatesRate,
  V1ExchangeRatesTimeseriesItem,
  V1Icon,
  V1TimeseriesPeriod,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(V1Asset)]),
        () => ListBuilder<V1Asset>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(V1ExchangeRatesTimeseriesItem)]),
        () => ListBuilder<V1ExchangeRatesTimeseriesItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(V1TimeseriesPeriod)]),
        () => ListBuilder<V1TimeseriesPeriod>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(V1Icon)]),
        () => ListBuilder<V1Icon>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
