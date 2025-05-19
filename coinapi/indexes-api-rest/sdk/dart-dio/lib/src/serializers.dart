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

import 'package:openapi/src/model/indexes_index_definition_input_data.dart';
import 'package:openapi/src/model/indexes_index_definition_snapshot_entry.dart';
import 'package:openapi/src/model/indexes_index_identifier.dart';
import 'package:openapi/src/model/indexes_index_multi_asset_weight.dart';
import 'package:openapi/src/model/indexes_index_timeseries_item.dart';
import 'package:openapi/src/model/indexes_index_value.dart';
import 'package:openapi/src/model/indexes_index_value_component.dart';
import 'package:openapi/src/model/metadata_exchange.dart';
import 'package:openapi/src/model/metadata_timeseries_period.dart';

part 'serializers.g.dart';

@SerializersFor([
  IndexesIndexDefinitionInputData,
  IndexesIndexDefinitionSnapshotEntry,
  IndexesIndexIdentifier,
  IndexesIndexMultiAssetWeight,
  IndexesIndexTimeseriesItem,
  IndexesIndexValue,
  IndexesIndexValueComponent,
  MetadataExchange,
  MetadataTimeseriesPeriod,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IndexesIndexDefinitionSnapshotEntry)]),
        () => ListBuilder<IndexesIndexDefinitionSnapshotEntry>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IndexesIndexIdentifier)]),
        () => ListBuilder<IndexesIndexIdentifier>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IndexesIndexDefinitionInputData)]),
        () => ListBuilder<IndexesIndexDefinitionInputData>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IndexesIndexTimeseriesItem)]),
        () => ListBuilder<IndexesIndexTimeseriesItem>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IndexesIndexValue)]),
        () => ListBuilder<IndexesIndexValue>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MetadataTimeseriesPeriod)]),
        () => ListBuilder<MetadataTimeseriesPeriod>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MetadataExchange)]),
        () => ListBuilder<MetadataExchange>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IndexesIndexMultiAssetWeight)]),
        () => ListBuilder<IndexesIndexMultiAssetWeight>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
