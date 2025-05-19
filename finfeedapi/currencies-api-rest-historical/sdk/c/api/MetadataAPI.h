#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/v1_asset.h"
#include "../model/v1_icon.h"


// List all assets by asset ID
//
list_t*
MetadataAPI_v1AssetsAssetIdGet(apiClient_t *apiClient, char *asset_id);


// List all assets
//
// Retrieves all assets.                :::info  Our asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).  :::                :::info  Properties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.  :::
//
list_t*
MetadataAPI_v1AssetsGet(apiClient_t *apiClient, char *filter_asset_id);


// List all asset icons
//
// Gets the list of icons (of the given size) for all the assets.
//
list_t*
MetadataAPI_v1AssetsIconsSizeGet(apiClient_t *apiClient, int *size);


