#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/indexes_index_definition_input_data.h"
#include "../model/indexes_index_definition_snapshot_entry.h"
#include "../model/indexes_index_identifier.h"
#include "../model/indexes_index_multi_asset_weight.h"
#include "../model/indexes_index_timeseries_item.h"
#include "../model/indexes_index_value.h"


// Returns all data inputs for a specific index definition
//
list_t*
IndexesAPI_v1IndexdefInputDataIndexDefinitionIdAllGet(apiClient_t *apiClient, char *index_definition_id);


// Returns data inputs for certain index definition and time
//
list_t*
IndexesAPI_v1IndexdefInputDataIndexDefinitionIdGet(apiClient_t *apiClient, char *index_definition_id, char time, int *enabled_only, int *pending_only, char *filter_asset_id, int *with_status_info);


// Get all multi-asset weights
//
list_t*
IndexesAPI_v1IndexdefMultiassetGet(apiClient_t *apiClient);


// Get multi-asset weights for specific index
//
list_t*
IndexesAPI_v1IndexdefMultiassetIndexIdGet(apiClient_t *apiClient, char *index_id);


// List indexes
//
list_t*
IndexesAPI_v1IndexesGet(apiClient_t *apiClient);


// Current Index Values for index definition
//
list_t*
IndexesAPI_v1IndexesIndexDefinitionIdCurrentSnapshotGet(apiClient_t *apiClient, char *index_definition_id);


// Historical Index Values for index definition
//
list_t*
IndexesAPI_v1IndexesIndexDefinitionIdHistorySnapshotGet(apiClient_t *apiClient, char *index_definition_id, char time);


// Current Index Value
//
indexes_index_value_t*
IndexesAPI_v1IndexesIndexIdCurrentGet(apiClient_t *apiClient, char *index_id);


// Historical Index Value w/Composition
//
list_t*
IndexesAPI_v1IndexesIndexIdHistoryGet(apiClient_t *apiClient, char *index_id, char time_start, char time_end, int *limit);


// Timeseries Index Value
//
list_t*
IndexesAPI_v1IndexesIndexIdTimeseriesGet(apiClient_t *apiClient, char *index_id, char *period_id, char *time_start, char *time_end, int *limit);


