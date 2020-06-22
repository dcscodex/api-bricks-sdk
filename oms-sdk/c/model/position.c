#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "position.h"



position_t *position_create(
    char *type,
    char *exchange_name,
    list_t *data
    ) {
    position_t *position_local_var = malloc(sizeof(position_t));
    if (!position_local_var) {
        return NULL;
    }
    position_local_var->type = type;
    position_local_var->exchange_name = exchange_name;
    position_local_var->data = data;

    return position_local_var;
}


void position_free(position_t *position) {
    if(NULL == position){
        return ;
    }
    listEntry_t *listEntry;
    free(position->type);
    free(position->exchange_name);
    list_ForEach(listEntry, position->data) {
        position_data_free(listEntry->data);
    }
    list_free(position->data);
    free(position);
}

cJSON *position_convertToJSON(position_t *position) {
    cJSON *item = cJSON_CreateObject();

    // position->type
    if(position->type) { 
    if(cJSON_AddStringToObject(item, "type", position->type) == NULL) {
    goto fail; //String
    }
     } 


    // position->exchange_name
    if(position->exchange_name) { 
    if(cJSON_AddStringToObject(item, "exchange_name", position->exchange_name) == NULL) {
    goto fail; //String
    }
     } 


    // position->data
    if(position->data) { 
    cJSON *data = cJSON_AddArrayToObject(item, "data");
    if(data == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *dataListEntry;
    if (position->data) {
    list_ForEach(dataListEntry, position->data) {
    cJSON *itemLocal = position_data_convertToJSON(dataListEntry->data);
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

position_t *position_parseFromJSON(cJSON *positionJSON){

    position_t *position_local_var = NULL;

    // position->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(positionJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // position->exchange_name
    cJSON *exchange_name = cJSON_GetObjectItemCaseSensitive(positionJSON, "exchange_name");
    if (exchange_name) { 
    if(!cJSON_IsString(exchange_name))
    {
    goto end; //String
    }
    }

    // position->data
    cJSON *data = cJSON_GetObjectItemCaseSensitive(positionJSON, "data");
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
        position_data_t *dataItem = position_data_parseFromJSON(data_local_nonprimitive);

        list_addElement(dataList, dataItem);
    }
    }


    position_local_var = position_create (
        type ? strdup(type->valuestring) : NULL,
        exchange_name ? strdup(exchange_name->valuestring) : NULL,
        data ? dataList : NULL
        );

    return position_local_var;
end:
    return NULL;

}
