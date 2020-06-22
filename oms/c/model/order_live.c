#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "order_live.h"


char* statusorder_live_ToString(oms___rest_api_____order_live__e status) {
    char* statusArray[] =  { "NULL", "RECEIVED", "ROUTING", "ROUTED", "NEW", "PENDING_CANCEL", "PARTIALLY_FILLED", "FILLED", "CANCELED", "REJECTED" };
	return statusArray[status];
}

oms___rest_api_____order_live__e statusorder_live_FromString(char* status){
    int stringToReturn = 0;
    char *statusArray[] =  { "NULL", "RECEIVED", "ROUTING", "ROUTED", "NEW", "PENDING_CANCEL", "PARTIALLY_FILLED", "FILLED", "CANCELED", "REJECTED" };
    size_t sizeofArray = sizeof(statusArray) / sizeof(statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(status, statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* sideorder_live_ToString(oms___rest_api_____order_live_SIDE_e side) {
    char* sideArray[] =  { "NULL", "BUY", "SELL" };
	return sideArray[side];
}

oms___rest_api_____order_live_SIDE_e sideorder_live_FromString(char* side){
    int stringToReturn = 0;
    char *sideArray[] =  { "NULL", "BUY", "SELL" };
    size_t sizeofArray = sizeof(sideArray) / sizeof(sideArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(side, sideArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* order_typeorder_live_ToString(oms___rest_api_____order_live_ORDERTYPE_e order_type) {
    char* order_typeArray[] =  { "NULL", "LIMIT" };
	return order_typeArray[order_type];
}

oms___rest_api_____order_live_ORDERTYPE_e order_typeorder_live_FromString(char* order_type){
    int stringToReturn = 0;
    char *order_typeArray[] =  { "NULL", "LIMIT" };
    size_t sizeofArray = sizeof(order_typeArray) / sizeof(order_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(order_type, order_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* time_in_forceorder_live_ToString(oms___rest_api_____order_live__e time_in_force) {
    char* time_in_forceArray[] =  { "NULL", "GOOD_TILL_CANCEL", "GOOD_TILL_TIME_EXCHANGE", "GOOD_TILL_TIME_OMS", "FILL_OR_KILL", "IMMEDIATE_OR_CANCEL", "AUCTION_ONLY", "INDICATION_OF_INTEREST" };
	return time_in_forceArray[time_in_force];
}

oms___rest_api_____order_live__e time_in_forceorder_live_FromString(char* time_in_force){
    int stringToReturn = 0;
    char *time_in_forceArray[] =  { "NULL", "GOOD_TILL_CANCEL", "GOOD_TILL_TIME_EXCHANGE", "GOOD_TILL_TIME_OMS", "FILL_OR_KILL", "IMMEDIATE_OR_CANCEL", "AUCTION_ONLY", "INDICATION_OF_INTEREST" };
    size_t sizeofArray = sizeof(time_in_forceArray) / sizeof(time_in_forceArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(time_in_force, time_in_forceArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* exec_instorder_live_ToString(oms___rest_api_____order_live_EXECINST_e exec_inst) {
	char *exec_instArray[] =  { "NULL", "MAKER_OR_CANCEL" };
	return exec_instArray[exec_inst - 1];
}

oms___rest_api_____order_live_EXECINST_e exec_instorder_live_FromString(char* exec_inst) {
    int stringToReturn = 0;
    char *exec_instArray[] =  { "NULL", "MAKER_OR_CANCEL" };
    size_t sizeofArray = sizeof(exec_instArray) / sizeof(exec_instArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(exec_inst, exec_instArray[stringToReturn]) == 0) {
            return stringToReturn + 1;
        }
        stringToReturn++;
    }
    return 0;
}

order_live_t *order_live_create(
    char *type,
    char *exchange_id,
    char *id,
    char *client_order_id_format_exchange,
    char *exchange_order_id,
    double amount_open,
    double amount_filled,
    list_t *time_order,
    char *error_message,
    char *client_order_id,
    char *symbol_exchange,
    char *symbol_coinapi,
    double amount_order,
    double price,
    oms___rest_api_____order_live_SIDE_e side,
    oms___rest_api_____order_live_ORDERTYPE_e order_type,
    list_t *exec_inst
    ) {
    order_live_t *order_live_local_var = malloc(sizeof(order_live_t));
    if (!order_live_local_var) {
        return NULL;
    }
    order_live_local_var->type = type;
    order_live_local_var->exchange_id = exchange_id;
    order_live_local_var->id = id;
    order_live_local_var->client_order_id_format_exchange = client_order_id_format_exchange;
    order_live_local_var->exchange_order_id = exchange_order_id;
    order_live_local_var->amount_open = amount_open;
    order_live_local_var->amount_filled = amount_filled;
    order_live_local_var->status = status;
    order_live_local_var->time_order = time_order;
    order_live_local_var->error_message = error_message;
    order_live_local_var->client_order_id = client_order_id;
    order_live_local_var->symbol_exchange = symbol_exchange;
    order_live_local_var->symbol_coinapi = symbol_coinapi;
    order_live_local_var->amount_order = amount_order;
    order_live_local_var->price = price;
    order_live_local_var->side = side;
    order_live_local_var->order_type = order_type;
    order_live_local_var->time_in_force = time_in_force;
    order_live_local_var->expire_time = expire_time;
    order_live_local_var->exec_inst = exec_inst;

    return order_live_local_var;
}


void order_live_free(order_live_t *order_live) {
    if(NULL == order_live){
        return ;
    }
    listEntry_t *listEntry;
    free(order_live->type);
    free(order_live->exchange_id);
    free(order_live->id);
    free(order_live->client_order_id_format_exchange);
    free(order_live->exchange_order_id);
    list_ForEach(listEntry, order_live->time_order) {
        free(listEntry->data);
    }
    list_free(order_live->time_order);
    free(order_live->error_message);
    free(order_live->client_order_id);
    free(order_live->symbol_exchange);
    free(order_live->symbol_coinapi);
    list_ForEach(listEntry, order_live->exec_inst) {
        free(listEntry->data);
    }
    list_free(order_live->exec_inst);
    free(order_live);
}

cJSON *order_live_convertToJSON(order_live_t *order_live) {
    cJSON *item = cJSON_CreateObject();

    // order_live->type
    if(order_live->type) { 
    if(cJSON_AddStringToObject(item, "type", order_live->type) == NULL) {
    goto fail; //String
    }
     } 


    // order_live->exchange_id
    if(order_live->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", order_live->exchange_id) == NULL) {
    goto fail; //String
    }
     } 


    // order_live->id
    if(order_live->id) { 
    if(cJSON_AddStringToObject(item, "id", order_live->id) == NULL) {
    goto fail; //String
    }
     } 


    // order_live->client_order_id_format_exchange
    if(order_live->client_order_id_format_exchange) { 
    if(cJSON_AddStringToObject(item, "client_order_id_format_exchange", order_live->client_order_id_format_exchange) == NULL) {
    goto fail; //String
    }
     } 


    // order_live->exchange_order_id
    if(order_live->exchange_order_id) { 
    if(cJSON_AddStringToObject(item, "exchange_order_id", order_live->exchange_order_id) == NULL) {
    goto fail; //String
    }
     } 


    // order_live->amount_open
    if(order_live->amount_open) { 
    if(cJSON_AddNumberToObject(item, "amount_open", order_live->amount_open) == NULL) {
    goto fail; //Numeric
    }
     } 


    // order_live->amount_filled
    if(order_live->amount_filled) { 
    if(cJSON_AddNumberToObject(item, "amount_filled", order_live->amount_filled) == NULL) {
    goto fail; //Numeric
    }
     } 


    // order_live->status
    
    


    // order_live->time_order
    if(order_live->time_order) { 
    cJSON *time_order = cJSON_AddArrayToObject(item, "time_order");
    if(time_order == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *time_orderListEntry;
    list_ForEach(time_orderListEntry, order_live->time_order) {
    }
     } 


    // order_live->error_message
    if(order_live->error_message) { 
    if(cJSON_AddStringToObject(item, "error_message", order_live->error_message) == NULL) {
    goto fail; //String
    }
     } 


    // order_live->client_order_id
    if(order_live->client_order_id) { 
    if(cJSON_AddStringToObject(item, "client_order_id", order_live->client_order_id) == NULL) {
    goto fail; //String
    }
     } 


    // order_live->symbol_exchange
    if(order_live->symbol_exchange) { 
    if(cJSON_AddStringToObject(item, "symbol_exchange", order_live->symbol_exchange) == NULL) {
    goto fail; //String
    }
     } 


    // order_live->symbol_coinapi
    if(order_live->symbol_coinapi) { 
    if(cJSON_AddStringToObject(item, "symbol_coinapi", order_live->symbol_coinapi) == NULL) {
    goto fail; //String
    }
     } 


    // order_live->amount_order
    if(order_live->amount_order) { 
    if(cJSON_AddNumberToObject(item, "amount_order", order_live->amount_order) == NULL) {
    goto fail; //Numeric
    }
     } 


    // order_live->price
    if(order_live->price) { 
    if(cJSON_AddNumberToObject(item, "price", order_live->price) == NULL) {
    goto fail; //Numeric
    }
     } 


    // order_live->side
    
    if(cJSON_AddStringToObject(item, "side", sideorder_live_ToString(order_live->side)) == NULL)
    {
    goto fail; //Enum
    }
    


    // order_live->order_type
    
    if(cJSON_AddStringToObject(item, "order_type", order_typeorder_live_ToString(order_live->order_type)) == NULL)
    {
    goto fail; //Enum
    }
    


    // order_live->time_in_force
    
    


    // order_live->expire_time
    if(order_live->expire_time) { 
     } 


    // order_live->exec_inst
    
    cJSON *exec_inst = cJSON_AddArrayToObject(item, "exec_inst");
    if(exec_inst == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *exec_instListEntry;
    list_ForEach(exec_instListEntry, order_live->exec_inst) {
    if(cJSON_AddStringToObject(exec_inst, "", (char*)exec_instListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

order_live_t *order_live_parseFromJSON(cJSON *order_liveJSON){

    order_live_t *order_live_local_var = NULL;

    // order_live->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "type");
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //String
    }
    }

    // order_live->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // order_live->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // order_live->client_order_id_format_exchange
    cJSON *client_order_id_format_exchange = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "client_order_id_format_exchange");
    if (client_order_id_format_exchange) { 
    if(!cJSON_IsString(client_order_id_format_exchange))
    {
    goto end; //String
    }
    }

    // order_live->exchange_order_id
    cJSON *exchange_order_id = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "exchange_order_id");
    if (exchange_order_id) { 
    if(!cJSON_IsString(exchange_order_id))
    {
    goto end; //String
    }
    }

    // order_live->amount_open
    cJSON *amount_open = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "amount_open");
    if (amount_open) { 
    if(!cJSON_IsNumber(amount_open))
    {
    goto end; //Numeric
    }
    }

    // order_live->amount_filled
    cJSON *amount_filled = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "amount_filled");
    if (amount_filled) { 
    if(!cJSON_IsNumber(amount_filled))
    {
    goto end; //Numeric
    }
    }

    // order_live->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "status");
    }

    // order_live->time_order
    cJSON *time_order = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "time_order");
    list_t *time_orderList;
    if (time_order) { 
    cJSON *time_order_local;
    if(!cJSON_IsArray(time_order)) {
        goto end;//primitive container
    }
    time_orderList = list_create();

    cJSON_ArrayForEach(time_order_local, time_order)
    {
    }
    }

    // order_live->error_message
    cJSON *error_message = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "error_message");
    if (error_message) { 
    if(!cJSON_IsString(error_message))
    {
    goto end; //String
    }
    }

    // order_live->client_order_id
    cJSON *client_order_id = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "client_order_id");
    if (client_order_id) { 
    if(!cJSON_IsString(client_order_id))
    {
    goto end; //String
    }
    }

    // order_live->symbol_exchange
    cJSON *symbol_exchange = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "symbol_exchange");
    if (symbol_exchange) { 
    if(!cJSON_IsString(symbol_exchange))
    {
    goto end; //String
    }
    }

    // order_live->symbol_coinapi
    cJSON *symbol_coinapi = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "symbol_coinapi");
    if (symbol_coinapi) { 
    if(!cJSON_IsString(symbol_coinapi))
    {
    goto end; //String
    }
    }

    // order_live->amount_order
    cJSON *amount_order = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "amount_order");
    if (amount_order) { 
    if(!cJSON_IsNumber(amount_order))
    {
    goto end; //Numeric
    }
    }

    // order_live->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "price");
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // order_live->side
    cJSON *side = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "side");
    oms___rest_api_____order_live_SIDE_e sideVariable;
    if (side) { 
    if(!cJSON_IsString(side))
    {
    goto end; //Enum
    }
    sideVariable = sideorder_live_FromString(side->valuestring);
    }

    // order_live->order_type
    cJSON *order_type = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "order_type");
    oms___rest_api_____order_live_ORDERTYPE_e order_typeVariable;
    if (order_type) { 
    if(!cJSON_IsString(order_type))
    {
    goto end; //Enum
    }
    order_typeVariable = order_typeorder_live_FromString(order_type->valuestring);
    }

    // order_live->time_in_force
    cJSON *time_in_force = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "time_in_force");
    }

    // order_live->expire_time
    cJSON *expire_time = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "expire_time");
    }

    // order_live->exec_inst
    cJSON *exec_inst = cJSON_GetObjectItemCaseSensitive(order_liveJSON, "exec_inst");
    list_t *exec_instList;
    if (exec_inst) { 
    cJSON *exec_inst_local;
    if(!cJSON_IsArray(exec_inst)) {
        goto end;//primitive container
    }
    exec_instList = list_create();

    cJSON_ArrayForEach(exec_inst_local, exec_inst)
    {
        if(!cJSON_IsString(exec_inst_local))
        {
            goto end;
        }
        list_addElement(exec_instList , strdup(exec_inst_local->valuestring));
    }
    }


    order_live_local_var = order_live_create (
        type ? strdup(type->valuestring) : NULL,
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        id ? strdup(id->valuestring) : NULL,
        client_order_id_format_exchange ? strdup(client_order_id_format_exchange->valuestring) : NULL,
        exchange_order_id ? strdup(exchange_order_id->valuestring) : NULL,
        amount_open ? amount_open->valuedouble : 0,
        amount_filled ? amount_filled->valuedouble : 0,
        time_order ? time_orderList : NULL,
        error_message ? strdup(error_message->valuestring) : NULL,
        client_order_id ? strdup(client_order_id->valuestring) : NULL,
        symbol_exchange ? strdup(symbol_exchange->valuestring) : NULL,
        symbol_coinapi ? strdup(symbol_coinapi->valuestring) : NULL,
        amount_order ? amount_order->valuedouble : 0,
        price ? price->valuedouble : 0,
        side ? sideVariable : -1,
        order_type ? order_typeVariable : -1,
        exec_inst ? exec_instList : NULL
        );

    return order_live_local_var;
end:
    return NULL;

}
