#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "IndexesAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Returns all data inputs for a specific index definition
//
list_t*
IndexesAPI_v1IndexdefInputDataIndexDefinitionIdAllGet(apiClient_t *apiClient, char *index_definition_id)
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
    char *localVarPath = strdup("/v1/indexdef/input-data/{index_definition_id}/all");

    if(!index_definition_id)
        goto end;


    // Path Params
    long sizeOfPathParams_index_definition_id = strlen(index_definition_id)+3 + sizeof("{ index_definition_id }") - 1;
    if(index_definition_id == NULL) {
        goto end;
    }
    char* localVarToReplace_index_definition_id = malloc(sizeOfPathParams_index_definition_id);
    sprintf(localVarToReplace_index_definition_id, "{%s}", "index_definition_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_index_definition_id, index_definition_id);


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
        cJSON *IndexesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(IndexesAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, IndexesAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( IndexesAPIlocalVarJSON);
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
    free(localVarToReplace_index_definition_id);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Returns data inputs for certain index definition and time
//
list_t*
IndexesAPI_v1IndexdefInputDataIndexDefinitionIdGet(apiClient_t *apiClient, char *index_definition_id, char time, int *enabled_only, int *pending_only, char *filter_asset_id, int *with_status_info)
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
    char *localVarPath = strdup("/v1/indexdef/input-data/{index_definition_id}");

    if(!index_definition_id)
        goto end;


    // Path Params
    long sizeOfPathParams_index_definition_id = strlen(index_definition_id)+3 + sizeof("{ index_definition_id }") - 1;
    if(index_definition_id == NULL) {
        goto end;
    }
    char* localVarToReplace_index_definition_id = malloc(sizeOfPathParams_index_definition_id);
    sprintf(localVarToReplace_index_definition_id, "{%s}", "index_definition_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_index_definition_id, index_definition_id);



    // query parameters
    char *keyQuery_time = NULL;
    char valueQuery_time ;
    keyValuePair_t *keyPairQuery_time = 0;
    if (time)
    {
        keyQuery_time = strdup("time");
        valueQuery_time = (time);
        keyPairQuery_time = keyValuePair_create(keyQuery_time, &valueQuery_time);
        list_addElement(localVarQueryParameters,keyPairQuery_time);
    }

    // query parameters
    char *keyQuery_enabled_only = NULL;
    char * valueQuery_enabled_only = NULL;
    keyValuePair_t *keyPairQuery_enabled_only = 0;
    if (enabled_only)
    {
        keyQuery_enabled_only = strdup("enabled_only");
        valueQuery_enabled_only = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enabled_only, MAX_NUMBER_LENGTH, "%d", *enabled_only);
        keyPairQuery_enabled_only = keyValuePair_create(keyQuery_enabled_only, valueQuery_enabled_only);
        list_addElement(localVarQueryParameters,keyPairQuery_enabled_only);
    }

    // query parameters
    char *keyQuery_pending_only = NULL;
    char * valueQuery_pending_only = NULL;
    keyValuePair_t *keyPairQuery_pending_only = 0;
    if (pending_only)
    {
        keyQuery_pending_only = strdup("pending_only");
        valueQuery_pending_only = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_pending_only, MAX_NUMBER_LENGTH, "%d", *pending_only);
        keyPairQuery_pending_only = keyValuePair_create(keyQuery_pending_only, valueQuery_pending_only);
        list_addElement(localVarQueryParameters,keyPairQuery_pending_only);
    }

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
    char *keyQuery_with_status_info = NULL;
    char * valueQuery_with_status_info = NULL;
    keyValuePair_t *keyPairQuery_with_status_info = 0;
    if (with_status_info)
    {
        keyQuery_with_status_info = strdup("with_status_info");
        valueQuery_with_status_info = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_with_status_info, MAX_NUMBER_LENGTH, "%d", *with_status_info);
        keyPairQuery_with_status_info = keyValuePair_create(keyQuery_with_status_info, valueQuery_with_status_info);
        list_addElement(localVarQueryParameters,keyPairQuery_with_status_info);
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
        cJSON *IndexesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(IndexesAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, IndexesAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( IndexesAPIlocalVarJSON);
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
    free(localVarToReplace_index_definition_id);
    if(keyQuery_time){
        free(keyQuery_time);
        keyQuery_time = NULL;
    }
    if(keyPairQuery_time){
        keyValuePair_free(keyPairQuery_time);
        keyPairQuery_time = NULL;
    }
    if(keyQuery_enabled_only){
        free(keyQuery_enabled_only);
        keyQuery_enabled_only = NULL;
    }
    if(valueQuery_enabled_only){
        free(valueQuery_enabled_only);
        valueQuery_enabled_only = NULL;
    }
    if(keyPairQuery_enabled_only){
        keyValuePair_free(keyPairQuery_enabled_only);
        keyPairQuery_enabled_only = NULL;
    }
    if(keyQuery_pending_only){
        free(keyQuery_pending_only);
        keyQuery_pending_only = NULL;
    }
    if(valueQuery_pending_only){
        free(valueQuery_pending_only);
        valueQuery_pending_only = NULL;
    }
    if(keyPairQuery_pending_only){
        keyValuePair_free(keyPairQuery_pending_only);
        keyPairQuery_pending_only = NULL;
    }
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
    if(keyQuery_with_status_info){
        free(keyQuery_with_status_info);
        keyQuery_with_status_info = NULL;
    }
    if(valueQuery_with_status_info){
        free(valueQuery_with_status_info);
        valueQuery_with_status_info = NULL;
    }
    if(keyPairQuery_with_status_info){
        keyValuePair_free(keyPairQuery_with_status_info);
        keyPairQuery_with_status_info = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get all multi-asset weights
//
list_t*
IndexesAPI_v1IndexdefMultiassetGet(apiClient_t *apiClient)
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
    char *localVarPath = strdup("/v1/indexdef/multiasset");




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
        cJSON *IndexesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(IndexesAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, IndexesAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( IndexesAPIlocalVarJSON);
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

// Get multi-asset weights for specific index
//
list_t*
IndexesAPI_v1IndexdefMultiassetIndexIdGet(apiClient_t *apiClient, char *index_id)
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
    char *localVarPath = strdup("/v1/indexdef/multiasset/{index_id}");

    if(!index_id)
        goto end;


    // Path Params
    long sizeOfPathParams_index_id = strlen(index_id)+3 + sizeof("{ index_id }") - 1;
    if(index_id == NULL) {
        goto end;
    }
    char* localVarToReplace_index_id = malloc(sizeOfPathParams_index_id);
    sprintf(localVarToReplace_index_id, "{%s}", "index_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_index_id, index_id);


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
        cJSON *IndexesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(IndexesAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, IndexesAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( IndexesAPIlocalVarJSON);
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
    free(localVarToReplace_index_id);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// List indexes
//
list_t*
IndexesAPI_v1IndexesGet(apiClient_t *apiClient)
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
    char *localVarPath = strdup("/v1/indexes");




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
        cJSON *IndexesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(IndexesAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, IndexesAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( IndexesAPIlocalVarJSON);
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

// Current Index Values for index definition
//
list_t*
IndexesAPI_v1IndexesIndexDefinitionIdCurrentSnapshotGet(apiClient_t *apiClient, char *index_definition_id)
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
    char *localVarPath = strdup("/v1/indexes/{index_definition_id}/currentSnapshot");

    if(!index_definition_id)
        goto end;


    // Path Params
    long sizeOfPathParams_index_definition_id = strlen(index_definition_id)+3 + sizeof("{ index_definition_id }") - 1;
    if(index_definition_id == NULL) {
        goto end;
    }
    char* localVarToReplace_index_definition_id = malloc(sizeOfPathParams_index_definition_id);
    sprintf(localVarToReplace_index_definition_id, "{%s}", "index_definition_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_index_definition_id, index_definition_id);


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
        cJSON *IndexesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(IndexesAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, IndexesAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( IndexesAPIlocalVarJSON);
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
    free(localVarToReplace_index_definition_id);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Historical Index Values for index definition
//
list_t*
IndexesAPI_v1IndexesIndexDefinitionIdHistorySnapshotGet(apiClient_t *apiClient, char *index_definition_id, char time)
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
    char *localVarPath = strdup("/v1/indexes/{index_definition_id}/historySnapshot");

    if(!index_definition_id)
        goto end;


    // Path Params
    long sizeOfPathParams_index_definition_id = strlen(index_definition_id)+3 + sizeof("{ index_definition_id }") - 1;
    if(index_definition_id == NULL) {
        goto end;
    }
    char* localVarToReplace_index_definition_id = malloc(sizeOfPathParams_index_definition_id);
    sprintf(localVarToReplace_index_definition_id, "{%s}", "index_definition_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_index_definition_id, index_definition_id);



    // query parameters
    char *keyQuery_time = NULL;
    char valueQuery_time ;
    keyValuePair_t *keyPairQuery_time = 0;
    if (time)
    {
        keyQuery_time = strdup("time");
        valueQuery_time = (time);
        keyPairQuery_time = keyValuePair_create(keyQuery_time, &valueQuery_time);
        list_addElement(localVarQueryParameters,keyPairQuery_time);
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
        cJSON *IndexesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(IndexesAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, IndexesAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( IndexesAPIlocalVarJSON);
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
    free(localVarToReplace_index_definition_id);
    if(keyQuery_time){
        free(keyQuery_time);
        keyQuery_time = NULL;
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

// Current Index Value
//
indexes_index_value_t*
IndexesAPI_v1IndexesIndexIdCurrentGet(apiClient_t *apiClient, char *index_id)
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
    char *localVarPath = strdup("/v1/indexes/{index_id}/current");

    if(!index_id)
        goto end;


    // Path Params
    long sizeOfPathParams_index_id = strlen(index_id)+3 + sizeof("{ index_id }") - 1;
    if(index_id == NULL) {
        goto end;
    }
    char* localVarToReplace_index_id = malloc(sizeOfPathParams_index_id);
    sprintf(localVarToReplace_index_id, "{%s}", "index_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_index_id, index_id);


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
    indexes_index_value_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *IndexesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = indexes_index_value_parseFromJSON(IndexesAPIlocalVarJSON);
        cJSON_Delete(IndexesAPIlocalVarJSON);
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
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_index_id);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Historical Index Value w/Composition
//
list_t*
IndexesAPI_v1IndexesIndexIdHistoryGet(apiClient_t *apiClient, char *index_id, char time_start, char time_end, int *limit)
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
    char *localVarPath = strdup("/v1/indexes/{index_id}/history");

    if(!index_id)
        goto end;


    // Path Params
    long sizeOfPathParams_index_id = strlen(index_id)+3 + sizeof("{ index_id }") - 1;
    if(index_id == NULL) {
        goto end;
    }
    char* localVarToReplace_index_id = malloc(sizeOfPathParams_index_id);
    sprintf(localVarToReplace_index_id, "{%s}", "index_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_index_id, index_id);



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
        cJSON *IndexesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(IndexesAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, IndexesAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( IndexesAPIlocalVarJSON);
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
    free(localVarToReplace_index_id);
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

// Timeseries Index Value
//
list_t*
IndexesAPI_v1IndexesIndexIdTimeseriesGet(apiClient_t *apiClient, char *index_id, char *period_id, char *time_start, char *time_end, int *limit)
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
    char *localVarPath = strdup("/v1/indexes/{index_id}/timeseries");

    if(!index_id)
        goto end;


    // Path Params
    long sizeOfPathParams_index_id = strlen(index_id)+3 + sizeof("{ index_id }") - 1;
    if(index_id == NULL) {
        goto end;
    }
    char* localVarToReplace_index_id = malloc(sizeOfPathParams_index_id);
    sprintf(localVarToReplace_index_id, "{%s}", "index_id");

    localVarPath = strReplace(localVarPath, localVarToReplace_index_id, index_id);



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
        cJSON *IndexesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(IndexesAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, IndexesAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( IndexesAPIlocalVarJSON);
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
    free(localVarToReplace_index_id);
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

