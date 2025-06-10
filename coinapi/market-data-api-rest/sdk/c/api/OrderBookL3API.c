#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "OrderBookL3API.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Current order books
//
list_t*
OrderBookL3API_v1Orderbooks3CurrentGet(apiClient_t *apiClient, char *filter_symbol_id, int *limit_levels)
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
    char *localVarPath = strdup("/v1/orderbooks3/current");





    // query parameters
    char *keyQuery_filter_symbol_id = NULL;
    char * valueQuery_filter_symbol_id = NULL;
    keyValuePair_t *keyPairQuery_filter_symbol_id = 0;
    if (filter_symbol_id)
    {
        keyQuery_filter_symbol_id = strdup("filter_symbol_id");
        valueQuery_filter_symbol_id = strdup((filter_symbol_id));
        keyPairQuery_filter_symbol_id = keyValuePair_create(keyQuery_filter_symbol_id, valueQuery_filter_symbol_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_symbol_id);
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
        cJSON *OrderBookL3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(OrderBookL3APIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, OrderBookL3APIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( OrderBookL3APIlocalVarJSON);
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
    if(keyQuery_filter_symbol_id){
        free(keyQuery_filter_symbol_id);
        keyQuery_filter_symbol_id = NULL;
    }
    if(valueQuery_filter_symbol_id){
        free(valueQuery_filter_symbol_id);
        valueQuery_filter_symbol_id = NULL;
    }
    if(keyPairQuery_filter_symbol_id){
        keyValuePair_free(keyPairQuery_filter_symbol_id);
        keyPairQuery_filter_symbol_id = NULL;
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

// Current order book by symbol_id
//
// Retrieves the current order book for the specified symbol.
//
v1_order_book_base_t*
OrderBookL3API_v1Orderbooks3SymbolIdCurrentGet(apiClient_t *apiClient, char *symbol_id, int *limit_levels)
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
    char *localVarPath = strdup("/v1/orderbooks3/{symbol_id}/current");

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
        cJSON *OrderBookL3APIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = v1_order_book_base_parseFromJSON(OrderBookL3APIlocalVarJSON);
        cJSON_Delete(OrderBookL3APIlocalVarJSON);
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

