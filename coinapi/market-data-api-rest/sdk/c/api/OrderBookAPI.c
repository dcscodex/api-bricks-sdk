#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "OrderBookAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Get current order book
//
// Retrieves the current order book for the specified symbol.
//
v1_order_book_base_t*
OrderBookAPI_v1OrderbooksSymbolIdCurrentGet(apiClient_t *apiClient, char *symbol_id, int *limit_levels)
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
    char *localVarPath = strdup("/v1/orderbooks/{symbol_id}/current");

    if(!symbol_id)
        goto end;


    // Path Params
    long sizeOfPathParams_symbol_id = strlen(symbol_id)+3 + sizeof("{ symbol_id }") - 1;
    if(symbol_id == NULL) {
        goto end;
    }
    char* localVarToReplace_symbol_id = malloc(sizeOfPathParams_symbol_id);
    sprintf(localVarToReplace_symbol_id, "{%s}", "symbol_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_symbol_id, symbol_id);



    // query parameters
    char *keyQuery_limit_levels = NULL;
    char * valueQuery_limit_levels = NULL;
    keyValuePair_t *keyPairQuery_limit_levels = 0;
    if (limit_levels)
    {
        keyQuery_limit_levels = strdup("limit_levels");
        valueQuery_limit_levels = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit_levels, MAX_NUMBER_LENGTH, "%d", *limit_levels);
        keyPairQuery_limit_levels = keyValuePair_create(keyQuery_limit_levels, valueQuery_limit_levels);
        list_addElement(localVarQueryParameters,keyPairQuery_limit_levels);
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
    //nonprimitive not container
    v1_order_book_base_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrderBookAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = v1_order_book_base_parseFromJSON(OrderBookAPIlocalVarJSON);
        cJSON_Delete(OrderBookAPIlocalVarJSON);
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
    free(localVarToReplace_symbol_id);
    if(keyQuery_limit_levels){
        free(keyQuery_limit_levels);
        keyQuery_limit_levels = NULL;
    }
    if(valueQuery_limit_levels){
        free(valueQuery_limit_levels);
        valueQuery_limit_levels = NULL;
    }
    if(keyPairQuery_limit_levels){
        keyValuePair_free(keyPairQuery_limit_levels);
        keyPairQuery_limit_levels = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Current depth of the order book
//
// Retrieves the current depth of the order book for the specified symbol.
//
v1_order_book_depth_t*
OrderBookAPI_v1OrderbooksSymbolIdDepthCurrentGet(apiClient_t *apiClient, char *symbol_id, int *limit_levels)
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
    char *localVarPath = strdup("/v1/orderbooks/{symbol_id}/depth/current");

    if(!symbol_id)
        goto end;


    // Path Params
    long sizeOfPathParams_symbol_id = strlen(symbol_id)+3 + sizeof("{ symbol_id }") - 1;
    if(symbol_id == NULL) {
        goto end;
    }
    char* localVarToReplace_symbol_id = malloc(sizeOfPathParams_symbol_id);
    sprintf(localVarToReplace_symbol_id, "{%s}", "symbol_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_symbol_id, symbol_id);



    // query parameters
    char *keyQuery_limit_levels = NULL;
    char * valueQuery_limit_levels = NULL;
    keyValuePair_t *keyPairQuery_limit_levels = 0;
    if (limit_levels)
    {
        keyQuery_limit_levels = strdup("limit_levels");
        valueQuery_limit_levels = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit_levels, MAX_NUMBER_LENGTH, "%d", *limit_levels);
        keyPairQuery_limit_levels = keyValuePair_create(keyQuery_limit_levels, valueQuery_limit_levels);
        list_addElement(localVarQueryParameters,keyPairQuery_limit_levels);
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
    //nonprimitive not container
    v1_order_book_depth_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OrderBookAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = v1_order_book_depth_parseFromJSON(OrderBookAPIlocalVarJSON);
        cJSON_Delete(OrderBookAPIlocalVarJSON);
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
    free(localVarToReplace_symbol_id);
    if(keyQuery_limit_levels){
        free(keyQuery_limit_levels);
        keyQuery_limit_levels = NULL;
    }
    if(valueQuery_limit_levels){
        free(valueQuery_limit_levels);
        valueQuery_limit_levels = NULL;
    }
    if(keyPairQuery_limit_levels){
        keyValuePair_free(keyPairQuery_limit_levels);
        keyPairQuery_limit_levels = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Historical data
//
// Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::    :::warning  The 'time_start' and 'time_end' parameters must be from the same day as this endpoint provides intraday data only for specific day.  Please use the 'date' parameter instead for querying data for a specific day without filter.  :::
//
list_t*
OrderBookAPI_v1OrderbooksSymbolIdHistoryGet(apiClient_t *apiClient, char *symbol_id, char *date, char *time_start, char *time_end, int *limit, int *limit_levels)
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
    char *localVarPath = strdup("/v1/orderbooks/{symbol_id}/history");

    if(!symbol_id)
        goto end;


    // Path Params
    long sizeOfPathParams_symbol_id = strlen(symbol_id)+3 + sizeof("{ symbol_id }") - 1;
    if(symbol_id == NULL) {
        goto end;
    }
    char* localVarToReplace_symbol_id = malloc(sizeOfPathParams_symbol_id);
    sprintf(localVarToReplace_symbol_id, "{%s}", "symbol_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_symbol_id, symbol_id);



    // query parameters
    char *keyQuery_date = NULL;
    char * valueQuery_date = NULL;
    keyValuePair_t *keyPairQuery_date = 0;
    if (date)
    {
        keyQuery_date = strdup("date");
        valueQuery_date = strdup((date));
        keyPairQuery_date = keyValuePair_create(keyQuery_date, valueQuery_date);
        list_addElement(localVarQueryParameters,keyPairQuery_date);
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

    // query parameters
    char *keyQuery_limit_levels = NULL;
    char * valueQuery_limit_levels = NULL;
    keyValuePair_t *keyPairQuery_limit_levels = 0;
    if (limit_levels)
    {
        keyQuery_limit_levels = strdup("limit_levels");
        valueQuery_limit_levels = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit_levels, MAX_NUMBER_LENGTH, "%d", *limit_levels);
        keyPairQuery_limit_levels = keyValuePair_create(keyQuery_limit_levels, valueQuery_limit_levels);
        list_addElement(localVarQueryParameters,keyPairQuery_limit_levels);
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
        cJSON *OrderBookAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(OrderBookAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, OrderBookAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( OrderBookAPIlocalVarJSON);
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
    free(localVarToReplace_symbol_id);
    if(keyQuery_date){
        free(keyQuery_date);
        keyQuery_date = NULL;
    }
    if(valueQuery_date){
        free(valueQuery_date);
        valueQuery_date = NULL;
    }
    if(keyPairQuery_date){
        keyValuePair_free(keyPairQuery_date);
        keyPairQuery_date = NULL;
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
    if(keyQuery_limit_levels){
        free(keyQuery_limit_levels);
        keyQuery_limit_levels = NULL;
    }
    if(valueQuery_limit_levels){
        free(valueQuery_limit_levels);
        valueQuery_limit_levels = NULL;
    }
    if(keyPairQuery_limit_levels){
        keyValuePair_free(keyPairQuery_limit_levels);
        keyPairQuery_limit_levels = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Latest data
//
// Get latest order book snapshots for a specific symbol, returned in time descending order.                :::info  The historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.  :::
//
list_t*
OrderBookAPI_v1OrderbooksSymbolIdLatestGet(apiClient_t *apiClient, char *symbol_id, int *limit, int *limit_levels)
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
    char *localVarPath = strdup("/v1/orderbooks/{symbol_id}/latest");

    if(!symbol_id)
        goto end;


    // Path Params
    long sizeOfPathParams_symbol_id = strlen(symbol_id)+3 + sizeof("{ symbol_id }") - 1;
    if(symbol_id == NULL) {
        goto end;
    }
    char* localVarToReplace_symbol_id = malloc(sizeOfPathParams_symbol_id);
    sprintf(localVarToReplace_symbol_id, "{%s}", "symbol_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_symbol_id, symbol_id);



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

    // query parameters
    char *keyQuery_limit_levels = NULL;
    char * valueQuery_limit_levels = NULL;
    keyValuePair_t *keyPairQuery_limit_levels = 0;
    if (limit_levels)
    {
        keyQuery_limit_levels = strdup("limit_levels");
        valueQuery_limit_levels = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit_levels, MAX_NUMBER_LENGTH, "%d", *limit_levels);
        keyPairQuery_limit_levels = keyValuePair_create(keyQuery_limit_levels, valueQuery_limit_levels);
        list_addElement(localVarQueryParameters,keyPairQuery_limit_levels);
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
        cJSON *OrderBookAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(OrderBookAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, OrderBookAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( OrderBookAPIlocalVarJSON);
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
    free(localVarToReplace_symbol_id);
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
    if(keyQuery_limit_levels){
        free(keyQuery_limit_levels);
        keyQuery_limit_levels = NULL;
    }
    if(valueQuery_limit_levels){
        free(valueQuery_limit_levels);
        valueQuery_limit_levels = NULL;
    }
    if(keyPairQuery_limit_levels){
        keyValuePair_free(keyPairQuery_limit_levels);
        keyPairQuery_limit_levels = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

