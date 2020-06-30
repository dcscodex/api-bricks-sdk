#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cancel_all_order.h"



cancel_all_order_t *cancel_all_order_create(
    char *exchange_id
    ) {
    cancel_all_order_t *cancel_all_order_local_var = malloc(sizeof(cancel_all_order_t));
    if (!cancel_all_order_local_var) {
        return NULL;
    }
    cancel_all_order_local_var->exchange_id = exchange_id;

    return cancel_all_order_local_var;
}


void cancel_all_order_free(cancel_all_order_t *cancel_all_order) {
    if(NULL == cancel_all_order){
        return ;
    }
    listEntry_t *listEntry;
    free(cancel_all_order->exchange_id);
    free(cancel_all_order);
}

cJSON *cancel_all_order_convertToJSON(cancel_all_order_t *cancel_all_order) {
    cJSON *item = cJSON_CreateObject();

    // cancel_all_order->exchange_id
    if(cancel_all_order->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", cancel_all_order->exchange_id) == NULL) {
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

cancel_all_order_t *cancel_all_order_parseFromJSON(cJSON *cancel_all_orderJSON){

    cancel_all_order_t *cancel_all_order_local_var = NULL;

    // cancel_all_order->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(cancel_all_orderJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }


    cancel_all_order_local_var = cancel_all_order_create (
        exchange_id ? strdup(exchange_id->valuestring) : NULL
        );

    return cancel_all_order_local_var;
end:
    return NULL;

}
