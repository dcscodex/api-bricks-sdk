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


/// tests for MetadataApi
void main() {
  // final instance = MetadataApi();

  group('tests for MetadataApi', () {
    // List all assets by asset ID
    //
    //Future<List<V1Asset>> v1AssetsAssetIdGet(String assetId) async
    test('test v1AssetsAssetIdGet', () async {
      // TODO
    });

    // List all assets
    //
    // Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::
    //
    //Future<List<V1Asset>> v1AssetsGet({ String filterAssetId }) async
    test('test v1AssetsGet', () async {
      // TODO
    });

    // List all asset icons
    //
    // Gets the list of icons (of the given size) for all the assets.
    //
    //Future<List<V1Icon>> v1AssetsIconsSizeGet(int size) async
    test('test v1AssetsIconsSizeGet', () async {
      // TODO
    });

  });
}
