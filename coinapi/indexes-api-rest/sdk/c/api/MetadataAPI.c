#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "MetadataAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// List all exchanges by exchange_id
//
list_t*
MetadataAPI_apiMetadataExchangesExchangeIdGet(apiClient_t *apiClient, char *exchange_id)
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
    char *localVarPath = strdup("/api/metadata/exchanges/{exchange_id}");

    if(!exchange_id)
        goto end;


    // Path Params
    long sizeOfPathParams_exchange_id = strlen(exchange_id)+3 + sizeof("{ exchange_id }") - 1;
    if(exchange_id == NULL) {
        goto end;
    }
    char* localVarToReplace_exchange_id = malloc(sizeOfPathParams_exchange_id);
    sprintf(localVarToReplace_exchange_id, "{%s}", "exchange_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_exchange_id, exchange_id);


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
        cJSON *MetadataAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MetadataAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MetadataAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MetadataAPIlocalVarJSON);
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
    free(localVarToReplace_exchange_id);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// List all exchanges
//
// Get a detailed list of exchanges provided by the system.              :::info Properties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source. :::
//
list_t*
MetadataAPI_apiMetadataExchangesGet(apiClient_t *apiClient, char *filter_exchange_id)
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
    char *localVarPath = strdup("/api/metadata/exchanges");





    // query parameters
    char *keyQuery_filter_exchange_id = NULL;
    char * valueQuery_filter_exchange_id = NULL;
    keyValuePair_t *keyPairQuery_filter_exchange_id = 0;
    if (filter_exchange_id)
    {
        keyQuery_filter_exchange_id = strdup("filter_exchange_id");
        valueQuery_filter_exchange_id = strdup((filter_exchange_id));
        keyPairQuery_filter_exchange_id = keyValuePair_create(keyQuery_filter_exchange_id, valueQuery_filter_exchange_id);
        list_addElement(localVarQueryParameters,keyPairQuery_filter_exchange_id);
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
        cJSON *MetadataAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MetadataAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MetadataAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MetadataAPIlocalVarJSON);
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
    if(keyQuery_filter_exchange_id){
        free(keyQuery_filter_exchange_id);
        keyQuery_filter_exchange_id = NULL;
    }
    if(valueQuery_filter_exchange_id){
        free(valueQuery_filter_exchange_id);
        valueQuery_filter_exchange_id = NULL;
    }
    if(keyPairQuery_filter_exchange_id){
        keyValuePair_free(keyPairQuery_filter_exchange_id);
        keyPairQuery_filter_exchange_id = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

