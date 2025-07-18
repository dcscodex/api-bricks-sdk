#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "MetricsV1API.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Current metrics for given asset
//
// Get current asset metrics.
//
list_t*
MetricsV1API_v1MetricsAssetCurrentGet(apiClient_t *apiClient, char *metric_id, char *asset_id, char *asset_id_external, char *exchange_id)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/metrics/asset/current");





    // query parameters
    char *keyQuery_metric_id = NULL;
    char * valueQuery_metric_id = NULL;
    keyValuePair_t *keyPairQuery_metric_id = 0;
    if (metric_id)
    {
        keyQuery_metric_id = strdup("metric_id");
        valueQuery_metric_id = strdup((metric_id));
        keyPairQuery_metric_id = keyValuePair_create(keyQuery_metric_id, valueQuery_metric_id);
        list_addElement(localVarQueryParameters,keyPairQuery_metric_id);
    }

    // query parameters
    char *keyQuery_asset_id = NULL;
    char * valueQuery_asset_id = NULL;
    keyValuePair_t *keyPairQuery_asset_id = 0;
    if (asset_id)
    {
        keyQuery_asset_id = strdup("asset_id");
        valueQuery_asset_id = strdup((asset_id));
        keyPairQuery_asset_id = keyValuePair_create(keyQuery_asset_id, valueQuery_asset_id);
        list_addElement(localVarQueryParameters,keyPairQuery_asset_id);
    }

    // query parameters
    char *keyQuery_asset_id_external = NULL;
    char * valueQuery_asset_id_external = NULL;
    keyValuePair_t *keyPairQuery_asset_id_external = 0;
    if (asset_id_external)
    {
        keyQuery_asset_id_external = strdup("asset_id_external");
        valueQuery_asset_id_external = strdup((asset_id_external));
        keyPairQuery_asset_id_external = keyValuePair_create(keyQuery_asset_id_external, valueQuery_asset_id_external);
        list_addElement(localVarQueryParameters,keyPairQuery_asset_id_external);
    }

    // query parameters
    char *keyQuery_exchange_id = NULL;
    char * valueQuery_exchange_id = NULL;
    keyValuePair_t *keyPairQuery_exchange_id = 0;
    if (exchange_id)
    {
        keyQuery_exchange_id = strdup("exchange_id");
        valueQuery_exchange_id = strdup((exchange_id));
        keyPairQuery_exchange_id = keyValuePair_create(keyQuery_exchange_id, valueQuery_exchange_id);
        list_addElement(localVarQueryParameters,keyPairQuery_exchange_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    list_addElement(localVarHeaderType,"application/x-msgpack"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MetricsV1APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MetricsV1APIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MetricsV1APIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MetricsV1APIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_metric_id){
        free(keyQuery_metric_id);
        keyQuery_metric_id = NULL;
    }
    if(valueQuery_metric_id){
        free(valueQuery_metric_id);
        valueQuery_metric_id = NULL;
    }
    if(keyPairQuery_metric_id){
        keyValuePair_free(keyPairQuery_metric_id);
        keyPairQuery_metric_id = NULL;
    }
    if(keyQuery_asset_id){
        free(keyQuery_asset_id);
        keyQuery_asset_id = NULL;
    }
    if(valueQuery_asset_id){
        free(valueQuery_asset_id);
        valueQuery_asset_id = NULL;
    }
    if(keyPairQuery_asset_id){
        keyValuePair_free(keyPairQuery_asset_id);
        keyPairQuery_asset_id = NULL;
    }
    if(keyQuery_asset_id_external){
        free(keyQuery_asset_id_external);
        keyQuery_asset_id_external = NULL;
    }
    if(valueQuery_asset_id_external){
        free(valueQuery_asset_id_external);
        valueQuery_asset_id_external = NULL;
    }
    if(keyPairQuery_asset_id_external){
        keyValuePair_free(keyPairQuery_asset_id_external);
        keyPairQuery_asset_id_external = NULL;
    }
    if(keyQuery_exchange_id){
        free(keyQuery_exchange_id);
        keyQuery_exchange_id = NULL;
    }
    if(valueQuery_exchange_id){
        free(valueQuery_exchange_id);
        valueQuery_exchange_id = NULL;
    }
    if(keyPairQuery_exchange_id){
        keyValuePair_free(keyPairQuery_exchange_id);
        keyPairQuery_exchange_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Historical metrics for asset
//
// Get asset metrics history.
//
list_t*
MetricsV1API_v1MetricsAssetHistoryGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char *asset_id, char *asset_id_external, char time_start, char time_end, char *time_format, char *period_id, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/metrics/asset/history");





    // query parameters
    char *keyQuery_metric_id = NULL;
    char * valueQuery_metric_id = NULL;
    keyValuePair_t *keyPairQuery_metric_id = 0;
    if (metric_id)
    {
        keyQuery_metric_id = strdup("metric_id");
        valueQuery_metric_id = strdup((metric_id));
        keyPairQuery_metric_id = keyValuePair_create(keyQuery_metric_id, valueQuery_metric_id);
        list_addElement(localVarQueryParameters,keyPairQuery_metric_id);
    }

    // query parameters
    char *keyQuery_asset_id = NULL;
    char * valueQuery_asset_id = NULL;
    keyValuePair_t *keyPairQuery_asset_id = 0;
    if (asset_id)
    {
        keyQuery_asset_id = strdup("asset_id");
        valueQuery_asset_id = strdup((asset_id));
        keyPairQuery_asset_id = keyValuePair_create(keyQuery_asset_id, valueQuery_asset_id);
        list_addElement(localVarQueryParameters,keyPairQuery_asset_id);
    }

    // query parameters
    char *keyQuery_asset_id_external = NULL;
    char * valueQuery_asset_id_external = NULL;
    keyValuePair_t *keyPairQuery_asset_id_external = 0;
    if (asset_id_external)
    {
        keyQuery_asset_id_external = strdup("asset_id_external");
        valueQuery_asset_id_external = strdup((asset_id_external));
        keyPairQuery_asset_id_external = keyValuePair_create(keyQuery_asset_id_external, valueQuery_asset_id_external);
        list_addElement(localVarQueryParameters,keyPairQuery_asset_id_external);
    }

    // query parameters
    char *keyQuery_exchange_id = NULL;
    char * valueQuery_exchange_id = NULL;
    keyValuePair_t *keyPairQuery_exchange_id = 0;
    if (exchange_id)
    {
        keyQuery_exchange_id = strdup("exchange_id");
        valueQuery_exchange_id = strdup((exchange_id));
        keyPairQuery_exchange_id = keyValuePair_create(keyQuery_exchange_id, valueQuery_exchange_id);
        list_addElement(localVarQueryParameters,keyPairQuery_exchange_id);
    }

    // query parameters
    char *keyQuery_time_start = NULL;
    char valueQuery_time_start ;
    keyValuePair_t *keyPairQuery_time_start = 0;
    if (time_start)
    {
        keyQuery_time_start = strdup("time_start");
        valueQuery_time_start = (time_start);
        keyPairQuery_time_start = keyValuePair_create(keyQuery_time_start, &valueQuery_time_start);
        list_addElement(localVarQueryParameters,keyPairQuery_time_start);
    }

    // query parameters
    char *keyQuery_time_end = NULL;
    char valueQuery_time_end ;
    keyValuePair_t *keyPairQuery_time_end = 0;
    if (time_end)
    {
        keyQuery_time_end = strdup("time_end");
        valueQuery_time_end = (time_end);
        keyPairQuery_time_end = keyValuePair_create(keyQuery_time_end, &valueQuery_time_end);
        list_addElement(localVarQueryParameters,keyPairQuery_time_end);
    }

    // query parameters
    char *keyQuery_time_format = NULL;
    char * valueQuery_time_format = NULL;
    keyValuePair_t *keyPairQuery_time_format = 0;
    if (time_format)
    {
        keyQuery_time_format = strdup("time_format");
        valueQuery_time_format = strdup((time_format));
        keyPairQuery_time_format = keyValuePair_create(keyQuery_time_format, valueQuery_time_format);
        list_addElement(localVarQueryParameters,keyPairQuery_time_format);
    }

    // query parameters
    char *keyQuery_period_id = NULL;
    char * valueQuery_period_id = NULL;
    keyValuePair_t *keyPairQuery_period_id = 0;
    if (period_id)
    {
        keyQuery_period_id = strdup("period_id");
        valueQuery_period_id = strdup((period_id));
        keyPairQuery_period_id = keyValuePair_create(keyQuery_period_id, valueQuery_period_id);
        list_addElement(localVarQueryParameters,keyPairQuery_period_id);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    list_addElement(localVarHeaderType,"application/x-msgpack"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MetricsV1APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MetricsV1APIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MetricsV1APIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MetricsV1APIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_metric_id){
        free(keyQuery_metric_id);
        keyQuery_metric_id = NULL;
    }
    if(valueQuery_metric_id){
        free(valueQuery_metric_id);
        valueQuery_metric_id = NULL;
    }
    if(keyPairQuery_metric_id){
        keyValuePair_free(keyPairQuery_metric_id);
        keyPairQuery_metric_id = NULL;
    }
    if(keyQuery_asset_id){
        free(keyQuery_asset_id);
        keyQuery_asset_id = NULL;
    }
    if(valueQuery_asset_id){
        free(valueQuery_asset_id);
        valueQuery_asset_id = NULL;
    }
    if(keyPairQuery_asset_id){
        keyValuePair_free(keyPairQuery_asset_id);
        keyPairQuery_asset_id = NULL;
    }
    if(keyQuery_asset_id_external){
        free(keyQuery_asset_id_external);
        keyQuery_asset_id_external = NULL;
    }
    if(valueQuery_asset_id_external){
        free(valueQuery_asset_id_external);
        valueQuery_asset_id_external = NULL;
    }
    if(keyPairQuery_asset_id_external){
        keyValuePair_free(keyPairQuery_asset_id_external);
        keyPairQuery_asset_id_external = NULL;
    }
    if(keyQuery_exchange_id){
        free(keyQuery_exchange_id);
        keyQuery_exchange_id = NULL;
    }
    if(valueQuery_exchange_id){
        free(valueQuery_exchange_id);
        valueQuery_exchange_id = NULL;
    }
    if(keyPairQuery_exchange_id){
        keyValuePair_free(keyPairQuery_exchange_id);
        keyPairQuery_exchange_id = NULL;
    }
    if(keyQuery_time_start){
        free(keyQuery_time_start);
        keyQuery_time_start = NULL;
    }
    if(keyPairQuery_time_start){
        keyValuePair_free(keyPairQuery_time_start);
        keyPairQuery_time_start = NULL;
    }
    if(keyQuery_time_end){
        free(keyQuery_time_end);
        keyQuery_time_end = NULL;
    }
    if(keyPairQuery_time_end){
        keyValuePair_free(keyPairQuery_time_end);
        keyPairQuery_time_end = NULL;
    }
    if(keyQuery_time_format){
        free(keyQuery_time_format);
        keyQuery_time_format = NULL;
    }
    if(valueQuery_time_format){
        free(valueQuery_time_format);
        valueQuery_time_format = NULL;
    }
    if(keyPairQuery_time_format){
        keyValuePair_free(keyPairQuery_time_format);
        keyPairQuery_time_format = NULL;
    }
    if(keyQuery_period_id){
        free(keyQuery_period_id);
        keyQuery_period_id = NULL;
    }
    if(valueQuery_period_id){
        free(valueQuery_period_id);
        valueQuery_period_id = NULL;
    }
    if(keyPairQuery_period_id){
        keyValuePair_free(keyPairQuery_period_id);
        keyPairQuery_period_id = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Listing of all supported metrics for asset
//
// Get data metrics for asset.
//
list_t*
MetricsV1API_v1MetricsAssetListingGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char *chain_id, char *network_id, char *asset_id, char *asset_id_external)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/metrics/asset/listing");





    // query parameters
    char *keyQuery_metric_id = NULL;
    char * valueQuery_metric_id = NULL;
    keyValuePair_t *keyPairQuery_metric_id = 0;
    if (metric_id)
    {
        keyQuery_metric_id = strdup("metric_id");
        valueQuery_metric_id = strdup((metric_id));
        keyPairQuery_metric_id = keyValuePair_create(keyQuery_metric_id, valueQuery_metric_id);
        list_addElement(localVarQueryParameters,keyPairQuery_metric_id);
    }

    // query parameters
    char *keyQuery_exchange_id = NULL;
    char * valueQuery_exchange_id = NULL;
    keyValuePair_t *keyPairQuery_exchange_id = 0;
    if (exchange_id)
    {
        keyQuery_exchange_id = strdup("exchange_id");
        valueQuery_exchange_id = strdup((exchange_id));
        keyPairQuery_exchange_id = keyValuePair_create(keyQuery_exchange_id, valueQuery_exchange_id);
        list_addElement(localVarQueryParameters,keyPairQuery_exchange_id);
    }

    // query parameters
    char *keyQuery_chain_id = NULL;
    char * valueQuery_chain_id = NULL;
    keyValuePair_t *keyPairQuery_chain_id = 0;
    if (chain_id)
    {
        keyQuery_chain_id = strdup("chain_id");
        valueQuery_chain_id = strdup((chain_id));
        keyPairQuery_chain_id = keyValuePair_create(keyQuery_chain_id, valueQuery_chain_id);
        list_addElement(localVarQueryParameters,keyPairQuery_chain_id);
    }

    // query parameters
    char *keyQuery_network_id = NULL;
    char * valueQuery_network_id = NULL;
    keyValuePair_t *keyPairQuery_network_id = 0;
    if (network_id)
    {
        keyQuery_network_id = strdup("network_id");
        valueQuery_network_id = strdup((network_id));
        keyPairQuery_network_id = keyValuePair_create(keyQuery_network_id, valueQuery_network_id);
        list_addElement(localVarQueryParameters,keyPairQuery_network_id);
    }

    // query parameters
    char *keyQuery_asset_id = NULL;
    char * valueQuery_asset_id = NULL;
    keyValuePair_t *keyPairQuery_asset_id = 0;
    if (asset_id)
    {
        keyQuery_asset_id = strdup("asset_id");
        valueQuery_asset_id = strdup((asset_id));
        keyPairQuery_asset_id = keyValuePair_create(keyQuery_asset_id, valueQuery_asset_id);
        list_addElement(localVarQueryParameters,keyPairQuery_asset_id);
    }

    // query parameters
    char *keyQuery_asset_id_external = NULL;
    char * valueQuery_asset_id_external = NULL;
    keyValuePair_t *keyPairQuery_asset_id_external = 0;
    if (asset_id_external)
    {
        keyQuery_asset_id_external = strdup("asset_id_external");
        valueQuery_asset_id_external = strdup((asset_id_external));
        keyPairQuery_asset_id_external = keyValuePair_create(keyQuery_asset_id_external, valueQuery_asset_id_external);
        list_addElement(localVarQueryParameters,keyPairQuery_asset_id_external);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    list_addElement(localVarHeaderType,"application/x-msgpack"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MetricsV1APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MetricsV1APIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MetricsV1APIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MetricsV1APIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_metric_id){
        free(keyQuery_metric_id);
        keyQuery_metric_id = NULL;
    }
    if(valueQuery_metric_id){
        free(valueQuery_metric_id);
        valueQuery_metric_id = NULL;
    }
    if(keyPairQuery_metric_id){
        keyValuePair_free(keyPairQuery_metric_id);
        keyPairQuery_metric_id = NULL;
    }
    if(keyQuery_exchange_id){
        free(keyQuery_exchange_id);
        keyQuery_exchange_id = NULL;
    }
    if(valueQuery_exchange_id){
        free(valueQuery_exchange_id);
        valueQuery_exchange_id = NULL;
    }
    if(keyPairQuery_exchange_id){
        keyValuePair_free(keyPairQuery_exchange_id);
        keyPairQuery_exchange_id = NULL;
    }
    if(keyQuery_chain_id){
        free(keyQuery_chain_id);
        keyQuery_chain_id = NULL;
    }
    if(valueQuery_chain_id){
        free(valueQuery_chain_id);
        valueQuery_chain_id = NULL;
    }
    if(keyPairQuery_chain_id){
        keyValuePair_free(keyPairQuery_chain_id);
        keyPairQuery_chain_id = NULL;
    }
    if(keyQuery_network_id){
        free(keyQuery_network_id);
        keyQuery_network_id = NULL;
    }
    if(valueQuery_network_id){
        free(valueQuery_network_id);
        valueQuery_network_id = NULL;
    }
    if(keyPairQuery_network_id){
        keyValuePair_free(keyPairQuery_network_id);
        keyPairQuery_network_id = NULL;
    }
    if(keyQuery_asset_id){
        free(keyQuery_asset_id);
        keyQuery_asset_id = NULL;
    }
    if(valueQuery_asset_id){
        free(valueQuery_asset_id);
        valueQuery_asset_id = NULL;
    }
    if(keyPairQuery_asset_id){
        keyValuePair_free(keyPairQuery_asset_id);
        keyPairQuery_asset_id = NULL;
    }
    if(keyQuery_asset_id_external){
        free(keyQuery_asset_id_external);
        keyQuery_asset_id_external = NULL;
    }
    if(valueQuery_asset_id_external){
        free(valueQuery_asset_id_external);
        valueQuery_asset_id_external = NULL;
    }
    if(keyPairQuery_asset_id_external){
        keyValuePair_free(keyPairQuery_asset_id_external);
        keyPairQuery_asset_id_external = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Current metrics for given exchange
//
// Get current exchange metrics values.
//
list_t*
MetricsV1API_v1MetricsExchangeCurrentGet(apiClient_t *apiClient, char *exchange_id, char *metric_id)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/metrics/exchange/current");





    // query parameters
    char *keyQuery_metric_id = NULL;
    char * valueQuery_metric_id = NULL;
    keyValuePair_t *keyPairQuery_metric_id = 0;
    if (metric_id)
    {
        keyQuery_metric_id = strdup("metric_id");
        valueQuery_metric_id = strdup((metric_id));
        keyPairQuery_metric_id = keyValuePair_create(keyQuery_metric_id, valueQuery_metric_id);
        list_addElement(localVarQueryParameters,keyPairQuery_metric_id);
    }

    // query parameters
    char *keyQuery_exchange_id = NULL;
    char * valueQuery_exchange_id = NULL;
    keyValuePair_t *keyPairQuery_exchange_id = 0;
    if (exchange_id)
    {
        keyQuery_exchange_id = strdup("exchange_id");
        valueQuery_exchange_id = strdup((exchange_id));
        keyPairQuery_exchange_id = keyValuePair_create(keyQuery_exchange_id, valueQuery_exchange_id);
        list_addElement(localVarQueryParameters,keyPairQuery_exchange_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    list_addElement(localVarHeaderType,"application/x-msgpack"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MetricsV1APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MetricsV1APIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MetricsV1APIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MetricsV1APIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_metric_id){
        free(keyQuery_metric_id);
        keyQuery_metric_id = NULL;
    }
    if(valueQuery_metric_id){
        free(valueQuery_metric_id);
        valueQuery_metric_id = NULL;
    }
    if(keyPairQuery_metric_id){
        keyValuePair_free(keyPairQuery_metric_id);
        keyPairQuery_metric_id = NULL;
    }
    if(keyQuery_exchange_id){
        free(keyQuery_exchange_id);
        keyQuery_exchange_id = NULL;
    }
    if(valueQuery_exchange_id){
        free(valueQuery_exchange_id);
        valueQuery_exchange_id = NULL;
    }
    if(keyPairQuery_exchange_id){
        keyValuePair_free(keyPairQuery_exchange_id);
        keyPairQuery_exchange_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Historical metrics for the exchange
//
// Get exchange metrics history.
//
list_t*
MetricsV1API_v1MetricsExchangeHistoryGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char time_start, char time_end, char *time_format, char *period_id, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/metrics/exchange/history");





    // query parameters
    char *keyQuery_metric_id = NULL;
    char * valueQuery_metric_id = NULL;
    keyValuePair_t *keyPairQuery_metric_id = 0;
    if (metric_id)
    {
        keyQuery_metric_id = strdup("metric_id");
        valueQuery_metric_id = strdup((metric_id));
        keyPairQuery_metric_id = keyValuePair_create(keyQuery_metric_id, valueQuery_metric_id);
        list_addElement(localVarQueryParameters,keyPairQuery_metric_id);
    }

    // query parameters
    char *keyQuery_exchange_id = NULL;
    char * valueQuery_exchange_id = NULL;
    keyValuePair_t *keyPairQuery_exchange_id = 0;
    if (exchange_id)
    {
        keyQuery_exchange_id = strdup("exchange_id");
        valueQuery_exchange_id = strdup((exchange_id));
        keyPairQuery_exchange_id = keyValuePair_create(keyQuery_exchange_id, valueQuery_exchange_id);
        list_addElement(localVarQueryParameters,keyPairQuery_exchange_id);
    }

    // query parameters
    char *keyQuery_time_start = NULL;
    char valueQuery_time_start ;
    keyValuePair_t *keyPairQuery_time_start = 0;
    if (time_start)
    {
        keyQuery_time_start = strdup("time_start");
        valueQuery_time_start = (time_start);
        keyPairQuery_time_start = keyValuePair_create(keyQuery_time_start, &valueQuery_time_start);
        list_addElement(localVarQueryParameters,keyPairQuery_time_start);
    }

    // query parameters
    char *keyQuery_time_end = NULL;
    char valueQuery_time_end ;
    keyValuePair_t *keyPairQuery_time_end = 0;
    if (time_end)
    {
        keyQuery_time_end = strdup("time_end");
        valueQuery_time_end = (time_end);
        keyPairQuery_time_end = keyValuePair_create(keyQuery_time_end, &valueQuery_time_end);
        list_addElement(localVarQueryParameters,keyPairQuery_time_end);
    }

    // query parameters
    char *keyQuery_time_format = NULL;
    char * valueQuery_time_format = NULL;
    keyValuePair_t *keyPairQuery_time_format = 0;
    if (time_format)
    {
        keyQuery_time_format = strdup("time_format");
        valueQuery_time_format = strdup((time_format));
        keyPairQuery_time_format = keyValuePair_create(keyQuery_time_format, valueQuery_time_format);
        list_addElement(localVarQueryParameters,keyPairQuery_time_format);
    }

    // query parameters
    char *keyQuery_period_id = NULL;
    char * valueQuery_period_id = NULL;
    keyValuePair_t *keyPairQuery_period_id = 0;
    if (period_id)
    {
        keyQuery_period_id = strdup("period_id");
        valueQuery_period_id = strdup((period_id));
        keyPairQuery_period_id = keyValuePair_create(keyQuery_period_id, valueQuery_period_id);
        list_addElement(localVarQueryParameters,keyPairQuery_period_id);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    list_addElement(localVarHeaderType,"application/x-msgpack"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MetricsV1APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MetricsV1APIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MetricsV1APIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MetricsV1APIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_metric_id){
        free(keyQuery_metric_id);
        keyQuery_metric_id = NULL;
    }
    if(valueQuery_metric_id){
        free(valueQuery_metric_id);
        valueQuery_metric_id = NULL;
    }
    if(keyPairQuery_metric_id){
        keyValuePair_free(keyPairQuery_metric_id);
        keyPairQuery_metric_id = NULL;
    }
    if(keyQuery_exchange_id){
        free(keyQuery_exchange_id);
        keyQuery_exchange_id = NULL;
    }
    if(valueQuery_exchange_id){
        free(valueQuery_exchange_id);
        valueQuery_exchange_id = NULL;
    }
    if(keyPairQuery_exchange_id){
        keyValuePair_free(keyPairQuery_exchange_id);
        keyPairQuery_exchange_id = NULL;
    }
    if(keyQuery_time_start){
        free(keyQuery_time_start);
        keyQuery_time_start = NULL;
    }
    if(keyPairQuery_time_start){
        keyValuePair_free(keyPairQuery_time_start);
        keyPairQuery_time_start = NULL;
    }
    if(keyQuery_time_end){
        free(keyQuery_time_end);
        keyQuery_time_end = NULL;
    }
    if(keyPairQuery_time_end){
        keyValuePair_free(keyPairQuery_time_end);
        keyPairQuery_time_end = NULL;
    }
    if(keyQuery_time_format){
        free(keyQuery_time_format);
        keyQuery_time_format = NULL;
    }
    if(valueQuery_time_format){
        free(valueQuery_time_format);
        valueQuery_time_format = NULL;
    }
    if(keyPairQuery_time_format){
        keyValuePair_free(keyPairQuery_time_format);
        keyPairQuery_time_format = NULL;
    }
    if(keyQuery_period_id){
        free(keyQuery_period_id);
        keyQuery_period_id = NULL;
    }
    if(valueQuery_period_id){
        free(valueQuery_period_id);
        valueQuery_period_id = NULL;
    }
    if(keyPairQuery_period_id){
        keyValuePair_free(keyPairQuery_period_id);
        keyPairQuery_period_id = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Listing of all supported exchange metrics
//
// Get data metrics for exchange.
//
list_t*
MetricsV1API_v1MetricsExchangeListingGet(apiClient_t *apiClient, char *exchange_id, char *metric_id)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/metrics/exchange/listing");





    // query parameters
    char *keyQuery_metric_id = NULL;
    char * valueQuery_metric_id = NULL;
    keyValuePair_t *keyPairQuery_metric_id = 0;
    if (metric_id)
    {
        keyQuery_metric_id = strdup("metric_id");
        valueQuery_metric_id = strdup((metric_id));
        keyPairQuery_metric_id = keyValuePair_create(keyQuery_metric_id, valueQuery_metric_id);
        list_addElement(localVarQueryParameters,keyPairQuery_metric_id);
    }

    // query parameters
    char *keyQuery_exchange_id = NULL;
    char * valueQuery_exchange_id = NULL;
    keyValuePair_t *keyPairQuery_exchange_id = 0;
    if (exchange_id)
    {
        keyQuery_exchange_id = strdup("exchange_id");
        valueQuery_exchange_id = strdup((exchange_id));
        keyPairQuery_exchange_id = keyValuePair_create(keyQuery_exchange_id, valueQuery_exchange_id);
        list_addElement(localVarQueryParameters,keyPairQuery_exchange_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    list_addElement(localVarHeaderType,"application/x-msgpack"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MetricsV1APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MetricsV1APIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MetricsV1APIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MetricsV1APIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_metric_id){
        free(keyQuery_metric_id);
        keyQuery_metric_id = NULL;
    }
    if(valueQuery_metric_id){
        free(valueQuery_metric_id);
        valueQuery_metric_id = NULL;
    }
    if(keyPairQuery_metric_id){
        keyValuePair_free(keyPairQuery_metric_id);
        keyPairQuery_metric_id = NULL;
    }
    if(keyQuery_exchange_id){
        free(keyQuery_exchange_id);
        keyQuery_exchange_id = NULL;
    }
    if(valueQuery_exchange_id){
        free(valueQuery_exchange_id);
        valueQuery_exchange_id = NULL;
    }
    if(keyPairQuery_exchange_id){
        keyValuePair_free(keyPairQuery_exchange_id);
        keyPairQuery_exchange_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Listing of all supported metrics by CoinAPI
//
// Get all data metrics.
//
list_t*
MetricsV1API_v1MetricsListingGet(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/metrics/listing");




    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    list_addElement(localVarHeaderType,"application/x-msgpack"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MetricsV1APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MetricsV1APIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MetricsV1APIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MetricsV1APIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Current metrics for given symbol
//
// Get current symbol metrics.
//
list_t*
MetricsV1API_v1MetricsSymbolCurrentGet(apiClient_t *apiClient, char *metric_id, char *symbol_id, char *exchange_id)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/metrics/symbol/current");





    // query parameters
    char *keyQuery_metric_id = NULL;
    char * valueQuery_metric_id = NULL;
    keyValuePair_t *keyPairQuery_metric_id = 0;
    if (metric_id)
    {
        keyQuery_metric_id = strdup("metric_id");
        valueQuery_metric_id = strdup((metric_id));
        keyPairQuery_metric_id = keyValuePair_create(keyQuery_metric_id, valueQuery_metric_id);
        list_addElement(localVarQueryParameters,keyPairQuery_metric_id);
    }

    // query parameters
    char *keyQuery_symbol_id = NULL;
    char * valueQuery_symbol_id = NULL;
    keyValuePair_t *keyPairQuery_symbol_id = 0;
    if (symbol_id)
    {
        keyQuery_symbol_id = strdup("symbol_id");
        valueQuery_symbol_id = strdup((symbol_id));
        keyPairQuery_symbol_id = keyValuePair_create(keyQuery_symbol_id, valueQuery_symbol_id);
        list_addElement(localVarQueryParameters,keyPairQuery_symbol_id);
    }

    // query parameters
    char *keyQuery_exchange_id = NULL;
    char * valueQuery_exchange_id = NULL;
    keyValuePair_t *keyPairQuery_exchange_id = 0;
    if (exchange_id)
    {
        keyQuery_exchange_id = strdup("exchange_id");
        valueQuery_exchange_id = strdup((exchange_id));
        keyPairQuery_exchange_id = keyValuePair_create(keyQuery_exchange_id, valueQuery_exchange_id);
        list_addElement(localVarQueryParameters,keyPairQuery_exchange_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    list_addElement(localVarHeaderType,"application/x-msgpack"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MetricsV1APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MetricsV1APIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MetricsV1APIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MetricsV1APIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_metric_id){
        free(keyQuery_metric_id);
        keyQuery_metric_id = NULL;
    }
    if(valueQuery_metric_id){
        free(valueQuery_metric_id);
        valueQuery_metric_id = NULL;
    }
    if(keyPairQuery_metric_id){
        keyValuePair_free(keyPairQuery_metric_id);
        keyPairQuery_metric_id = NULL;
    }
    if(keyQuery_symbol_id){
        free(keyQuery_symbol_id);
        keyQuery_symbol_id = NULL;
    }
    if(valueQuery_symbol_id){
        free(valueQuery_symbol_id);
        valueQuery_symbol_id = NULL;
    }
    if(keyPairQuery_symbol_id){
        keyValuePair_free(keyPairQuery_symbol_id);
        keyPairQuery_symbol_id = NULL;
    }
    if(keyQuery_exchange_id){
        free(keyQuery_exchange_id);
        keyQuery_exchange_id = NULL;
    }
    if(valueQuery_exchange_id){
        free(valueQuery_exchange_id);
        valueQuery_exchange_id = NULL;
    }
    if(keyPairQuery_exchange_id){
        keyValuePair_free(keyPairQuery_exchange_id);
        keyPairQuery_exchange_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Historical metrics for symbol
//
// Get symbol metrics history.
//
list_t*
MetricsV1API_v1MetricsSymbolHistoryGet(apiClient_t *apiClient, char *metric_id, char *symbol_id, char time_start, char time_end, char *time_format, char *period_id, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/metrics/symbol/history");





    // query parameters
    char *keyQuery_metric_id = NULL;
    char * valueQuery_metric_id = NULL;
    keyValuePair_t *keyPairQuery_metric_id = 0;
    if (metric_id)
    {
        keyQuery_metric_id = strdup("metric_id");
        valueQuery_metric_id = strdup((metric_id));
        keyPairQuery_metric_id = keyValuePair_create(keyQuery_metric_id, valueQuery_metric_id);
        list_addElement(localVarQueryParameters,keyPairQuery_metric_id);
    }

    // query parameters
    char *keyQuery_symbol_id = NULL;
    char * valueQuery_symbol_id = NULL;
    keyValuePair_t *keyPairQuery_symbol_id = 0;
    if (symbol_id)
    {
        keyQuery_symbol_id = strdup("symbol_id");
        valueQuery_symbol_id = strdup((symbol_id));
        keyPairQuery_symbol_id = keyValuePair_create(keyQuery_symbol_id, valueQuery_symbol_id);
        list_addElement(localVarQueryParameters,keyPairQuery_symbol_id);
    }

    // query parameters
    char *keyQuery_time_start = NULL;
    char valueQuery_time_start ;
    keyValuePair_t *keyPairQuery_time_start = 0;
    if (time_start)
    {
        keyQuery_time_start = strdup("time_start");
        valueQuery_time_start = (time_start);
        keyPairQuery_time_start = keyValuePair_create(keyQuery_time_start, &valueQuery_time_start);
        list_addElement(localVarQueryParameters,keyPairQuery_time_start);
    }

    // query parameters
    char *keyQuery_time_end = NULL;
    char valueQuery_time_end ;
    keyValuePair_t *keyPairQuery_time_end = 0;
    if (time_end)
    {
        keyQuery_time_end = strdup("time_end");
        valueQuery_time_end = (time_end);
        keyPairQuery_time_end = keyValuePair_create(keyQuery_time_end, &valueQuery_time_end);
        list_addElement(localVarQueryParameters,keyPairQuery_time_end);
    }

    // query parameters
    char *keyQuery_time_format = NULL;
    char * valueQuery_time_format = NULL;
    keyValuePair_t *keyPairQuery_time_format = 0;
    if (time_format)
    {
        keyQuery_time_format = strdup("time_format");
        valueQuery_time_format = strdup((time_format));
        keyPairQuery_time_format = keyValuePair_create(keyQuery_time_format, valueQuery_time_format);
        list_addElement(localVarQueryParameters,keyPairQuery_time_format);
    }

    // query parameters
    char *keyQuery_period_id = NULL;
    char * valueQuery_period_id = NULL;
    keyValuePair_t *keyPairQuery_period_id = 0;
    if (period_id)
    {
        keyQuery_period_id = strdup("period_id");
        valueQuery_period_id = strdup((period_id));
        keyPairQuery_period_id = keyValuePair_create(keyQuery_period_id, valueQuery_period_id);
        list_addElement(localVarQueryParameters,keyPairQuery_period_id);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    list_addElement(localVarHeaderType,"application/x-msgpack"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MetricsV1APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MetricsV1APIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MetricsV1APIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MetricsV1APIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_metric_id){
        free(keyQuery_metric_id);
        keyQuery_metric_id = NULL;
    }
    if(valueQuery_metric_id){
        free(valueQuery_metric_id);
        valueQuery_metric_id = NULL;
    }
    if(keyPairQuery_metric_id){
        keyValuePair_free(keyPairQuery_metric_id);
        keyPairQuery_metric_id = NULL;
    }
    if(keyQuery_symbol_id){
        free(keyQuery_symbol_id);
        keyQuery_symbol_id = NULL;
    }
    if(valueQuery_symbol_id){
        free(valueQuery_symbol_id);
        valueQuery_symbol_id = NULL;
    }
    if(keyPairQuery_symbol_id){
        keyValuePair_free(keyPairQuery_symbol_id);
        keyPairQuery_symbol_id = NULL;
    }
    if(keyQuery_time_start){
        free(keyQuery_time_start);
        keyQuery_time_start = NULL;
    }
    if(keyPairQuery_time_start){
        keyValuePair_free(keyPairQuery_time_start);
        keyPairQuery_time_start = NULL;
    }
    if(keyQuery_time_end){
        free(keyQuery_time_end);
        keyQuery_time_end = NULL;
    }
    if(keyPairQuery_time_end){
        keyValuePair_free(keyPairQuery_time_end);
        keyPairQuery_time_end = NULL;
    }
    if(keyQuery_time_format){
        free(keyQuery_time_format);
        keyQuery_time_format = NULL;
    }
    if(valueQuery_time_format){
        free(valueQuery_time_format);
        valueQuery_time_format = NULL;
    }
    if(keyPairQuery_time_format){
        keyValuePair_free(keyPairQuery_time_format);
        keyPairQuery_time_format = NULL;
    }
    if(keyQuery_period_id){
        free(keyQuery_period_id);
        keyQuery_period_id = NULL;
    }
    if(valueQuery_period_id){
        free(valueQuery_period_id);
        valueQuery_period_id = NULL;
    }
    if(keyPairQuery_period_id){
        keyValuePair_free(keyPairQuery_period_id);
        keyPairQuery_period_id = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Listing of all supported metrics for symbol
//
// Get data metrics for symbol.
//
list_t*
MetricsV1API_v1MetricsSymbolListingGet(apiClient_t *apiClient, char *metric_id, char *exchange_id, char *symbol_id)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/metrics/symbol/listing");





    // query parameters
    char *keyQuery_metric_id = NULL;
    char * valueQuery_metric_id = NULL;
    keyValuePair_t *keyPairQuery_metric_id = 0;
    if (metric_id)
    {
        keyQuery_metric_id = strdup("metric_id");
        valueQuery_metric_id = strdup((metric_id));
        keyPairQuery_metric_id = keyValuePair_create(keyQuery_metric_id, valueQuery_metric_id);
        list_addElement(localVarQueryParameters,keyPairQuery_metric_id);
    }

    // query parameters
    char *keyQuery_exchange_id = NULL;
    char * valueQuery_exchange_id = NULL;
    keyValuePair_t *keyPairQuery_exchange_id = 0;
    if (exchange_id)
    {
        keyQuery_exchange_id = strdup("exchange_id");
        valueQuery_exchange_id = strdup((exchange_id));
        keyPairQuery_exchange_id = keyValuePair_create(keyQuery_exchange_id, valueQuery_exchange_id);
        list_addElement(localVarQueryParameters,keyPairQuery_exchange_id);
    }

    // query parameters
    char *keyQuery_symbol_id = NULL;
    char * valueQuery_symbol_id = NULL;
    keyValuePair_t *keyPairQuery_symbol_id = 0;
    if (symbol_id)
    {
        keyQuery_symbol_id = strdup("symbol_id");
        valueQuery_symbol_id = strdup((symbol_id));
        keyPairQuery_symbol_id = keyValuePair_create(keyQuery_symbol_id, valueQuery_symbol_id);
        list_addElement(localVarQueryParameters,keyPairQuery_symbol_id);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
    list_addElement(localVarHeaderType,"application/x-msgpack"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MetricsV1APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MetricsV1APIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MetricsV1APIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MetricsV1APIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_metric_id){
        free(keyQuery_metric_id);
        keyQuery_metric_id = NULL;
    }
    if(valueQuery_metric_id){
        free(valueQuery_metric_id);
        valueQuery_metric_id = NULL;
    }
    if(keyPairQuery_metric_id){
        keyValuePair_free(keyPairQuery_metric_id);
        keyPairQuery_metric_id = NULL;
    }
    if(keyQuery_exchange_id){
        free(keyQuery_exchange_id);
        keyQuery_exchange_id = NULL;
    }
    if(valueQuery_exchange_id){
        free(valueQuery_exchange_id);
        valueQuery_exchange_id = NULL;
    }
    if(keyPairQuery_exchange_id){
        keyValuePair_free(keyPairQuery_exchange_id);
        keyPairQuery_exchange_id = NULL;
    }
    if(keyQuery_symbol_id){
        free(keyQuery_symbol_id);
        keyQuery_symbol_id = NULL;
    }
    if(valueQuery_symbol_id){
        free(valueQuery_symbol_id);
        valueQuery_symbol_id = NULL;
    }
    if(keyPairQuery_symbol_id){
        keyValuePair_free(keyPairQuery_symbol_id);
        keyPairQuery_symbol_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

