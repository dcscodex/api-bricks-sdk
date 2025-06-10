import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for MetadataApi
void main() {
  final instance = Openapi().getMetadataApi();

  group(MetadataApi, () {
    // List all assets by asset ID
    //
    //Future<BuiltList<V1Asset>> v1AssetsAssetIdGet(String assetId) async
    test('test v1AssetsAssetIdGet', () async {
      // TODO
    });

    // List all assets
    //
    // Retrieves all assets.              :::info Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency). :::              :::info Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
    //
    //Future<BuiltList<V1Asset>> v1AssetsGet({ String filterAssetId }) async
    test('test v1AssetsGet', () async {
      // TODO
    });

    // List all asset icons
    //
    // Gets the list of icons (of the given size) for all the assets.
    //
    //Future<BuiltList<V1Icon>> v1AssetsIconsSizeGet(int size) async
    test('test v1AssetsIconsSizeGet', () async {
      // TODO
    });

  });
}
