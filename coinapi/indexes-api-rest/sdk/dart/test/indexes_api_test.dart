//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for IndexesApi
void main() {
  // final instance = IndexesApi();

  group('tests for IndexesApi', () {
    // Returns all data inputs for a specific index definition
    //
    //Future<List<IndexesIndexDefinitionInputData>> v1IndexdefInputDataIndexDefinitionIdAllGet(String indexDefinitionId) async
    test('test v1IndexdefInputDataIndexDefinitionIdAllGet', () async {
      // TODO
    });

    // Returns data inputs for certain index definition and time
    //
    //Future<List<IndexesIndexDefinitionSnapshotEntry>> v1IndexdefInputDataIndexDefinitionIdGet(String indexDefinitionId, { DateTime time, bool enabledOnly, bool pendingOnly, String filterAssetId, bool withStatusInfo }) async
    test('test v1IndexdefInputDataIndexDefinitionIdGet', () async {
      // TODO
    });

    // Get all multi-asset weights
    //
    //Future<List<IndexesIndexMultiAssetWeight>> v1IndexdefMultiassetGet() async
    test('test v1IndexdefMultiassetGet', () async {
      // TODO
    });

    // Get multi-asset weights for specific index
    //
    //Future<List<IndexesIndexMultiAssetWeight>> v1IndexdefMultiassetIndexIdGet(String indexId) async
    test('test v1IndexdefMultiassetIndexIdGet', () async {
      // TODO
    });

    // List indexes
    //
    //Future<List<IndexesIndexIdentifier>> v1IndexesGet() async
    test('test v1IndexesGet', () async {
      // TODO
    });

    // Current Index Values for index definition
    //
    //Future<List<IndexesIndexDefinitionSnapshotEntry>> v1IndexesIndexDefinitionIdCurrentSnapshotGet(String indexDefinitionId) async
    test('test v1IndexesIndexDefinitionIdCurrentSnapshotGet', () async {
      // TODO
    });

    // Historical Index Values for index definition
    //
    //Future<List<IndexesIndexDefinitionSnapshotEntry>> v1IndexesIndexDefinitionIdHistorySnapshotGet(String indexDefinitionId, { DateTime time }) async
    test('test v1IndexesIndexDefinitionIdHistorySnapshotGet', () async {
      // TODO
    });

    // Current Index Value
    //
    //Future<IndexesIndexValue> v1IndexesIndexIdCurrentGet(String indexId) async
    test('test v1IndexesIndexIdCurrentGet', () async {
      // TODO
    });

    // Historical Index Value w/Composition
    //
    //Future<List<IndexesIndexValue>> v1IndexesIndexIdHistoryGet(String indexId, { DateTime timeStart, DateTime timeEnd, int limit }) async
    test('test v1IndexesIndexIdHistoryGet', () async {
      // TODO
    });

    // Timeseries Index Value
    //
    //Future<List<IndexesIndexTimeseriesItem>> v1IndexesIndexIdTimeseriesGet(String indexId, String periodId, String timeStart, String timeEnd, { int limit }) async
    test('test v1IndexesIndexIdTimeseriesGet', () async {
      // TODO
    });

  });
}
