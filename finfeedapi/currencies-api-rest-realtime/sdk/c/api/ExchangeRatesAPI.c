#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "ExchangeRatesAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


// Get specific rate
//
// Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::
//
v1_exchange_rate_t*
ExchangeRatesAPI_getSpecificRate(apiClient_t *apiClient, char *asset_id_base, char *asset_id_quote)
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
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_asset_id_base);
    free(localVarToReplace_asset_id_quote);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get all current rates
//
// Get the current exchange rate between requested asset and all other assets.              :::info If you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements. :::              :::info You can invert the rates by using Y = 1 / X equation, for example BTC/USD = 1 / (USD/BTC); :::
//
v1_exchange_rates_t*
ExchangeRatesAPI_v1ExchangerateAssetIdBaseGet(apiClient_t *apiClient, char *asset_id_base, char *filter_asset_id, int *invert)
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

