#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "ExchangeRatesAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Get specific rate
//
// Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::
//
v1_exchange_rate_t*
ExchangeRatesAPI_getSpecificRate(apiClient_t *apiClient, char *asset_id_base, char *asset_id_quote, char *time)
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
    char *localVarPath = strdup("/v1/exchangerate/{asset_id_base}/{asset_id_quote}");

    if(!asset_id_base)
        goto end;
    if(!asset_id_quote)
        goto end;


    // Path Params
    long sizeOfPathParams_asset_id_base = strlen(asset_id_base)+3 + strlen(asset_id_quote)+3 + sizeof("{ asset_id_base }") - 1;
    if(asset_id_base == NULL) {
        goto end;
    }
    char* localVarToReplace_asset_id_base = malloc(sizeOfPathParams_asset_id_base);
    sprintf(localVarToReplace_asset_id_base, "{%s}", "asset_id_base");

    localVarPath = strReplace(localVarPath, localVarToReplace_asset_id_base, asset_id_base);

    // Path Params
    long sizeOfPathParams_asset_id_quote = strlen(asset_id_base)+3 + strlen(asset_id_quote)+3 + sizeof("{ asset_id_quote }") - 1;
    if(asset_id_quote == NULL) {
        goto end;
    }
    char* localVarToReplace_asset_id_quote = malloc(sizeOfPathParams_asset_id_quote);
    sprintf(localVarToReplace_asset_id_quote, "{%s}", "asset_id_quote");

    localVarPath = strReplace(localVarPath, localVarToReplace_asset_id_quote, asset_id_quote);



    // query parameters
    char *keyQuery_time = NULL;
    char * valueQuery_time = NULL;
    keyValuePair_t *keyPairQuery_time = 0;
    if (time)
    {
        keyQuery_time = strdup("time");
        valueQuery_time = strdup((time));
        keyPairQuery_time = keyValuePair_create(keyQuery_time, valueQuery_time);
        list_addElement(localVarQueryParameters,keyPairQuery_time);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
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
    //nonprimitive not container
    v1_exchange_rate_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ExchangeRatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = v1_exchange_rate_parseFromJSON(ExchangeRatesAPIlocalVarJSON);
        cJSON_Delete(ExchangeRatesAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
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
    free(localVarToReplace_asset_id_base);
    free(localVarToReplace_asset_id_quote);
    if(keyQuery_time){
        free(keyQuery_time);
        keyQuery_time = NULL;
    }
    if(valueQuery_time){
        free(valueQuery_time);
        valueQuery_time = NULL;
    }
    if(keyPairQuery_time){
        keyValuePair_free(keyPairQuery_time);
        keyPairQuery_time = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Timeseries data
//
// Get the historical exchange rates between two assets in the form of the timeseries.
//
list_t*
ExchangeRatesAPI_v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(apiClient_t *apiClient, char *asset_id_base, char *asset_id_quote, char *period_id, char *time_start, char *time_end, int *limit)
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
    char *localVarPath = strdup("/v1/exchangerate/{asset_id_base}/{asset_id_quote}/history");

    if(!asset_id_base)
        goto end;
    if(!asset_id_quote)
        goto end;


    // Path Params
    long sizeOfPathParams_asset_id_base = strlen(asset_id_base)+3 + strlen(asset_id_quote)+3 + sizeof("{ asset_id_base }") - 1;
    if(asset_id_base == NULL) {
        goto end;
    }
    char* localVarToReplace_asset_id_base = malloc(sizeOfPathParams_asset_id_base);
    sprintf(localVarToReplace_asset_id_base, "{%s}", "asset_id_base");

    localVarPath = strReplace(localVarPath, localVarToReplace_asset_id_base, asset_id_base);

    // Path Params
    long sizeOfPathParams_asset_id_quote = strlen(asset_id_base)+3 + strlen(asset_id_quote)+3 + sizeof("{ asset_id_quote }") - 1;
    if(asset_id_quote == NULL) {
        goto end;
    }
    char* localVarToReplace_asset_id_quote = malloc(sizeOfPathParams_asset_id_quote);
    sprintf(localVarToReplace_asset_id_quote, "{%s}", "asset_id_quote");

    localVarPath = strReplace(localVarPath, localVarToReplace_asset_id_quote, asset_id_quote);



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
    char *keyQuery_time_start = NULL;
    char * valueQuery_time_start = NULL;
    keyValuePair_t *keyPairQuery_time_start = 0;
    if (time_start)
    {
        keyQuery_time_start = strdup("time_start");
        valueQuery_time_start = strdup((time_start));
        keyPairQuery_time_start = keyValuePair_create(keyQuery_time_start, valueQuery_time_start);
        list_addElement(localVarQueryParameters,keyPairQuery_time_start);
    }

    // query parameters
    char *keyQuery_time_end = NULL;
    char * valueQuery_time_end = NULL;
    keyValuePair_t *keyPairQuery_time_end = 0;
    if (time_end)
    {
        keyQuery_time_end = strdup("time_end");
        valueQuery_time_end = strdup((time_end));
        keyPairQuery_time_end = keyValuePair_create(keyQuery_time_end, valueQuery_time_end);
        list_addElement(localVarQueryParameters,keyPairQuery_time_end);
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
        cJSON *ExchangeRatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ExchangeRatesAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ExchangeRatesAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ExchangeRatesAPIlocalVarJSON);
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
    free(localVarToReplace_asset_id_base);
    free(localVarToReplace_asset_id_quote);
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
    if(keyQuery_time_start){
        free(keyQuery_time_start);
        keyQuery_time_start = NULL;
    }
    if(valueQuery_time_start){
        free(valueQuery_time_start);
        valueQuery_time_start = NULL;
    }
    if(keyPairQuery_time_start){
        keyValuePair_free(keyPairQuery_time_start);
        keyPairQuery_time_start = NULL;
    }
    if(keyQuery_time_end){
        free(keyQuery_time_end);
        keyQuery_time_end = NULL;
    }
    if(valueQuery_time_end){
        free(valueQuery_time_end);
        valueQuery_time_end = NULL;
    }
    if(keyPairQuery_time_end){
        keyValuePair_free(keyPairQuery_time_end);
        keyPairQuery_time_end = NULL;
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

// Get all current rates
//
// Get the current exchange rate between requested asset and all other assets.                :::info  If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.  :::                :::info  You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC);  :::
//
v1_exchange_rates_t*
ExchangeRatesAPI_v1ExchangerateAssetIdBaseGet(apiClient_t *apiClient, char *asset_id_base, char *filter_asset_id, int *invert, char *time)
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
    char *localVarPath = strdup("/v1/exchangerate/{asset_id_base}");

    if(!asset_id_base)
        goto end;


    // Path Params
    long sizeOfPathParams_asset_id_base = strlen(asset_id_base)+3 + sizeof("{ asset_id_base }") - 1;
    if(asset_id_base == NULL) {
        goto end;
    }
    char* localVarToReplace_asset_id_base = malloc(sizeOfPathParams_asset_id_base);
    sprintf(localVarToReplace_asset_id_base, "{%s}", "asset_id_base");

    localVarPath = strReplace(localVarPath, localVarToReplace_asset_id_base, asset_id_base);



    // query parameters
    char *keyQuery_filter_asset_id = NULL;
    char * valueQuery_filter_asset_id = NULL;
    keyValuePair_t *keyPairQuery_filter_asset_id = 0;
    if (filter_asset_id)
    {
        keyQuery_filter_asset_id = strdup("filter_asset_id");
        valueQuery_filter_asset_id = strdup((filter_asset_id));
        keyPairQuery_filter_asset_id = keyValuePair_create(keyQuery_filter_asset_id, valueQuery_filter_asset_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_asset_id);
    }

    // query parameters
    char *keyQuery_invert = NULL;
    char * valueQuery_invert = NULL;
    keyValuePair_t *keyPairQuery_invert = 0;
    if (invert)
    {
        keyQuery_invert = strdup("invert");
        valueQuery_invert = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_invert, MAX_NUMBER_LENGTH, "%d", *invert);
        keyPairQuery_invert = keyValuePair_create(keyQuery_invert, valueQuery_invert);
        list_addElement(localVarQueryParameters,keyPairQuery_invert);
    }

    // query parameters
    char *keyQuery_time = NULL;
    char * valueQuery_time = NULL;
    keyValuePair_t *keyPairQuery_time = 0;
    if (time)
    {
        keyQuery_time = strdup("time");
        valueQuery_time = strdup((time));
        keyPairQuery_time = keyValuePair_create(keyQuery_time, valueQuery_time);
        list_addElement(localVarQueryParameters,keyPairQuery_time);
    }
    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
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
    //nonprimitive not container
    v1_exchange_rates_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ExchangeRatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = v1_exchange_rates_parseFromJSON(ExchangeRatesAPIlocalVarJSON);
        cJSON_Delete(ExchangeRatesAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
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
    free(localVarToReplace_asset_id_base);
    if(keyQuery_filter_asset_id){
        free(keyQuery_filter_asset_id);
        keyQuery_filter_asset_id = NULL;
    }
    if(valueQuery_filter_asset_id){
        free(valueQuery_filter_asset_id);
        valueQuery_filter_asset_id = NULL;
    }
    if(keyPairQuery_filter_asset_id){
        keyValuePair_free(keyPairQuery_filter_asset_id);
        keyPairQuery_filter_asset_id = NULL;
    }
    if(keyQuery_invert){
        free(keyQuery_invert);
        keyQuery_invert = NULL;
    }
    if(valueQuery_invert){
        free(valueQuery_invert);
        valueQuery_invert = NULL;
    }
    if(keyPairQuery_invert){
        keyValuePair_free(keyPairQuery_invert);
        keyPairQuery_invert = NULL;
    }
    if(keyQuery_time){
        free(keyQuery_time);
        keyQuery_time = NULL;
    }
    if(valueQuery_time){
        free(valueQuery_time);
        valueQuery_time = NULL;
    }
    if(keyPairQuery_time){
        keyValuePair_free(keyPairQuery_time);
        keyPairQuery_time = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Timeseries periods
//
// You can also obtain historical exchange rates of any asset pair, grouped into time periods.  Get full list of supported time periods available for requesting exchange rates historical timeseries data.                ## Timeseries periods  Time unit | Period identifiers  --- | ---  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
//
list_t*
ExchangeRatesAPI_v1ExchangerateHistoryPeriodsGet(apiClient_t *apiClient)
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
    char *localVarPath = strdup("/v1/exchangerate/history/periods");




    list_addElement(localVarHeaderType,"text/plain"); //produces
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"text/json"); //produces
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
        cJSON *ExchangeRatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ExchangeRatesAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ExchangeRatesAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ExchangeRatesAPIlocalVarJSON);
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

