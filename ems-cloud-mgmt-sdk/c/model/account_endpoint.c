#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "account_endpoint.h"



account_endpoint_t *account_endpoint_create(
    char *exchange_id,
    char *location_id,
    char *endpoint_schema,
    char *endpoint_host,
    char *endpoint_url
    ) {
    account_endpoint_t *account_endpoint_local_var = malloc(sizeof(account_endpoint_t));
    if (!account_endpoint_local_var) {
        return NULL;
    }
    account_endpoint_local_var->exchange_id = exchange_id;
    account_endpoint_local_var->location_id = location_id;
    account_endpoint_local_var->endpoint_schema = endpoint_schema;
    account_endpoint_local_var->endpoint_host = endpoint_host;
    account_endpoint_local_var->endpoint_url = endpoint_url;

    return account_endpoint_local_var;
}


void account_endpoint_free(account_endpoint_t *account_endpoint) {
    if(NULL == account_endpoint){
        return ;
    }
    listEntry_t *listEntry;
    if (account_endpoint->exchange_id) {
        free(account_endpoint->exchange_id);
        account_endpoint->exchange_id = NULL;
    }
    if (account_endpoint->location_id) {
        free(account_endpoint->location_id);
        account_endpoint->location_id = NULL;
    }
    if (account_endpoint->endpoint_schema) {
        free(account_endpoint->endpoint_schema);
        account_endpoint->endpoint_schema = NULL;
    }
    if (account_endpoint->endpoint_host) {
        free(account_endpoint->endpoint_host);
        account_endpoint->endpoint_host = NULL;
    }
    if (account_endpoint->endpoint_url) {
        free(account_endpoint->endpoint_url);
        account_endpoint->endpoint_url = NULL;
    }
    free(account_endpoint);
}

cJSON *account_endpoint_convertToJSON(account_endpoint_t *account_endpoint) {
    cJSON *item = cJSON_CreateObject();

    // account_endpoint->exchange_id
    if(account_endpoint->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", account_endpoint->exchange_id) == NULL) {
    goto fail; //String
    }
     } 


    // account_endpoint->location_id
    if(account_endpoint->location_id) { 
    if(cJSON_AddStringToObject(item, "location_id", account_endpoint->location_id) == NULL) {
    goto fail; //String
    }
     } 


    // account_endpoint->endpoint_schema
    if(account_endpoint->endpoint_schema) { 
    if(cJSON_AddStringToObject(item, "endpoint_schema", account_endpoint->endpoint_schema) == NULL) {
    goto fail; //String
    }
     } 


    // account_endpoint->endpoint_host
    if(account_endpoint->endpoint_host) { 
    if(cJSON_AddStringToObject(item, "endpoint_host", account_endpoint->endpoint_host) == NULL) {
    goto fail; //String
    }
     } 


    // account_endpoint->endpoint_url
    if(account_endpoint->endpoint_url) { 
    if(cJSON_AddStringToObject(item, "endpoint_url", account_endpoint->endpoint_url) == NULL) {
    goto fail; //String
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

account_endpoint_t *account_endpoint_parseFromJSON(cJSON *account_endpointJSON){

    account_endpoint_t *account_endpoint_local_var = NULL;

    // account_endpoint->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(account_endpointJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // account_endpoint->location_id
    cJSON *location_id = cJSON_GetObjectItemCaseSensitive(account_endpointJSON, "location_id");
    if (location_id) { 
    if(!cJSON_IsString(location_id))
    {
    goto end; //String
    }
    }

    // account_endpoint->endpoint_schema
    cJSON *endpoint_schema = cJSON_GetObjectItemCaseSensitive(account_endpointJSON, "endpoint_schema");
    if (endpoint_schema) { 
    if(!cJSON_IsString(endpoint_schema))
    {
    goto end; //String
    }
    }

    // account_endpoint->endpoint_host
    cJSON *endpoint_host = cJSON_GetObjectItemCaseSensitive(account_endpointJSON, "endpoint_host");
    if (endpoint_host) { 
    if(!cJSON_IsString(endpoint_host))
    {
    goto end; //String
    }
    }

    // account_endpoint->endpoint_url
    cJSON *endpoint_url = cJSON_GetObjectItemCaseSensitive(account_endpointJSON, "endpoint_url");
    if (endpoint_url) { 
    if(!cJSON_IsString(endpoint_url))
    {
    goto end; //String
    }
    }


    account_endpoint_local_var = account_endpoint_create (
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        location_id ? strdup(location_id->valuestring) : NULL,
        endpoint_schema ? strdup(endpoint_schema->valuestring) : NULL,
        endpoint_host ? strdup(endpoint_host->valuestring) : NULL,
        endpoint_url ? strdup(endpoint_url->valuestring) : NULL
        );

    return account_endpoint_local_var;
end:
    return NULL;

}
