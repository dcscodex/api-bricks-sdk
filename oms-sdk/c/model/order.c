#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "order.h"



order_t *order_create(
    char *type,
    char *exchange_name,
    list_t *data
    ) {
    order_t *order_local_var = malloc(sizeof(order_t));
    if (!order_local_var) {
        return NULL;
    }
    order_local_var->type = type;
    order_local_var->exchange_name = exchange_name;
    order_local_var->data = data;

    return order_local_var;
}


void order_free(order_t *order) {
    if(NULL == order){
        return ;
    }
    listEntry_t *listEntry;
    free(order->type);
    free(order->exchange_name);
    list_ForEach(listEntry, order->data) {
        order_data_free(listEntry->data);
    }
    list_free(order->data);
    free(order);
}

cJSON *order_convertToJSON(order_t *order) {
    cJSON *item = cJSON_CreateObject();

    // order->type
    if(order->type) { 
    if(cJSON_AddStringToObject(item, "type", order->type) == NULL) {
    goto fail; //String
    }
     } 


    // order->exchange_name
    if(order->exchange_name) { 
    if(cJSON_AddStringToObject(item, "exchange_name", order->exchange_name) == NULL) {
    goto fail; //String
    }
     } 


    // order->data
    if(order->data) { 
    cJSON *data = cJSON_AddArrayToObject(item, "data");
    if(data == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *dataListEntry;
    if (order->data) {
    list_ForEach(dataListEntry, order->data) {
    cJSON *itemLocal = order_data_convertToJSON(dataListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(data, itemLocal);
    }
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

order_t *order_parseFromJSON(cJSON *orderJSON){

    order_t *order_local_var = NULL;

    // order->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(orderJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // order->exchange_name
    cJSON *exchange_name = cJSON_GetObjectItemCaseSensitive(orderJSON, "exchange_name");
    if (exchange_name) { 
    if(!cJSON_IsString(exchange_name))
    {
    goto end; //String
    }
    }

    // order->data
    cJSON *data = cJSON_GetObjectItemCaseSensitive(orderJSON, "data");
    list_t *dataList;
    if (data) { 
    cJSON *data_local_nonprimitive;
    if(!cJSON_IsArray(data)){
        goto end; //nonprimitive container
    }

    dataList = list_create();

    cJSON_ArrayForEach(data_local_nonprimitive,data )
    {
        if(!cJSON_IsObject(data_local_nonprimitive)){
            goto end;
        }
        order_data_t *dataItem = order_data_parseFromJSON(data_local_nonprimitive);

        list_addElement(dataList, dataItem);
    }
    }


    order_local_var = order_create (
        type ? strdup(type->valuestring) : NULL,
        exchange_name ? strdup(exchange_name->valuestring) : NULL,
        data ? dataList : NULL
        );

    return order_local_var;
end:
    return NULL;

}
