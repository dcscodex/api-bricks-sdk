#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "OrdersAPI.h"


#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)


// Cancel all order
//
// Cancel all existing order.
//
messages_ok_t*
OrdersAPI_v1OrdersCancelAllPost(apiClient_t *apiClient, cancel_all_order_t * cancel_all_order )
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = list_create();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v1/orders/cancel/all")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v1/orders/cancel/all");




    // Body Param
    cJSON *localVarSingleItemJSON_cancel_all_order;
    if (cancel_all_order != NULL)
    {
        //string
        localVarSingleItemJSON_cancel_all_order = cancel_all_order_convertToJSON(cancel_all_order);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_cancel_all_order);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    if (apiClient->response_code == 200) {
        printf("%s\n","Result");
    }
    //nonprimitive not container
    cJSON *OrdersAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    messages_ok_t *elementToReturn = messages_ok_parseFromJSON(OrdersAPIlocalVarJSON);
    cJSON_Delete(OrdersAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_free(localVarHeaderType);
    list_free(localVarContentType);
    free(localVarPath);
    cJSON_Delete(localVarSingleItemJSON_cancel_all_order);
    free(localVarBodyParameters);
    return elementToReturn;
end:
    return NULL;

}

// Cancel order
//
// Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.
//
order_live_t*
OrdersAPI_v1OrdersCancelPost(apiClient_t *apiClient, cancel_order_t * cancel_order )
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = list_create();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v1/orders/cancel")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v1/orders/cancel");




    // Body Param
    cJSON *localVarSingleItemJSON_cancel_order;
    if (cancel_order != NULL)
    {
        //string
        localVarSingleItemJSON_cancel_order = cancel_order_convertToJSON(cancel_order);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_cancel_order);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"appliction/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    if (apiClient->response_code == 200) {
        printf("%s\n","Canceled order");
    }
    if (apiClient->response_code == 400) {
        printf("%s\n","Validation errors");
    }
    if (apiClient->response_code == 490) {
        printf("%s\n","Exchange not registered");
    }
    //nonprimitive not container
    cJSON *OrdersAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    order_live_t *elementToReturn = order_live_parseFromJSON(OrdersAPIlocalVarJSON);
    cJSON_Delete(OrdersAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_free(localVarHeaderType);
    list_free(localVarContentType);
    free(localVarPath);
    cJSON_Delete(localVarSingleItemJSON_cancel_order);
    free(localVarBodyParameters);
    return elementToReturn;
end:
    return NULL;

}

// Get orders
//
// List your current open orders.
//
list_t*
OrdersAPI_v1OrdersGet(apiClient_t *apiClient, char * exchange_id )
{
    list_t    *localVarQueryParameters = list_create();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v1/orders")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v1/orders");




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
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    if (apiClient->response_code == 200) {
        printf("%s\n","Ok");
    }
    cJSON *OrdersAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    if(!cJSON_IsArray(OrdersAPIlocalVarJSON)) {
        return 0;//nonprimitive container
    }
    list_t *elementToReturn = list_create();
    cJSON *VarJSON;
    cJSON_ArrayForEach(VarJSON, OrdersAPIlocalVarJSON)
    {
        if(!cJSON_IsObject(VarJSON))
        {
           // return 0;
        }
        char *localVarJSONToChar = cJSON_Print(VarJSON);
        list_addElement(elementToReturn , localVarJSONToChar);
    }

    cJSON_Delete( OrdersAPIlocalVarJSON);
    cJSON_Delete( VarJSON);
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_free(localVarQueryParameters);
    
    
    list_free(localVarHeaderType);
    
    free(localVarPath);
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
    return NULL;

}

// Create new order
//
// You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.
//
order_live_t*
OrdersAPI_v1OrdersPost(apiClient_t *apiClient, new_order_t * new_order )
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = list_create();
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/v1/orders")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/v1/orders");




    // Body Param
    cJSON *localVarSingleItemJSON_new_order;
    if (new_order != NULL)
    {
        //string
        localVarSingleItemJSON_new_order = new_order_convertToJSON(new_order);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_new_order);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarHeaderType,"appliction/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "POST");

    if (apiClient->response_code == 200) {
        printf("%s\n","Created");
    }
    if (apiClient->response_code == 400) {
        printf("%s\n","Validation errors");
    }
    if (apiClient->response_code == 490) {
        printf("%s\n","Exchange not registered");
    }
    //nonprimitive not container
    cJSON *OrdersAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    order_live_t *elementToReturn = order_live_parseFromJSON(OrdersAPIlocalVarJSON);
    cJSON_Delete(OrdersAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_free(localVarHeaderType);
    list_free(localVarContentType);
    free(localVarPath);
    cJSON_Delete(localVarSingleItemJSON_new_order);
    free(localVarBodyParameters);
    return elementToReturn;
end:
    return NULL;

}

