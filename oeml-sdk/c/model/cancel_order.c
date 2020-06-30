#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cancel_order.h"



cancel_order_t *cancel_order_create(
    char *exchange_id,
    char *exchange_order_id,
    char *client_order_id
    ) {
    cancel_order_t *cancel_order_local_var = malloc(sizeof(cancel_order_t));
    if (!cancel_order_local_var) {
        return NULL;
    }
    cancel_order_local_var->exchange_id = exchange_id;
    cancel_order_local_var->exchange_order_id = exchange_order_id;
    cancel_order_local_var->client_order_id = client_order_id;

    return cancel_order_local_var;
}


void cancel_order_free(cancel_order_t *cancel_order) {
    if(NULL == cancel_order){
        return ;
    }
    listEntry_t *listEntry;
    free(cancel_order->exchange_id);
    free(cancel_order->exchange_order_id);
    free(cancel_order->client_order_id);
    free(cancel_order);
}

cJSON *cancel_order_convertToJSON(cancel_order_t *cancel_order) {
    cJSON *item = cJSON_CreateObject();

    // cancel_order->exchange_id
    if(cancel_order->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", cancel_order->exchange_id) == NULL) {
    goto fail; //String
    }
     } 


    // cancel_order->exchange_order_id
    if(cancel_order->exchange_order_id) { 
    if(cJSON_AddStringToObject(item, "exchange_order_id", cancel_order->exchange_order_id) == NULL) {
    goto fail; //String
    }
     } 


    // cancel_order->client_order_id
    if(cancel_order->client_order_id) { 
    if(cJSON_AddStringToObject(item, "client_order_id", cancel_order->client_order_id) == NULL) {
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

cancel_order_t *cancel_order_parseFromJSON(cJSON *cancel_orderJSON){

    cancel_order_t *cancel_order_local_var = NULL;

    // cancel_order->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(cancel_orderJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // cancel_order->exchange_order_id
    cJSON *exchange_order_id = cJSON_GetObjectItemCaseSensitive(cancel_orderJSON, "exchange_order_id");
    if (exchange_order_id) { 
    if(!cJSON_IsString(exchange_order_id))
    {
    goto end; //String
    }
    }

    // cancel_order->client_order_id
    cJSON *client_order_id = cJSON_GetObjectItemCaseSensitive(cancel_orderJSON, "client_order_id");
    if (client_order_id) { 
    if(!cJSON_IsString(client_order_id))
    {
    goto end; //String
    }
    }


    cancel_order_local_var = cancel_order_create (
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        exchange_order_id ? strdup(exchange_order_id->valuestring) : NULL,
        client_order_id ? strdup(client_order_id->valuestring) : NULL
        );

    return cancel_order_local_var;
end:
    return NULL;

}
