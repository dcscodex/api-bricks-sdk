#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "order_data.h"


char* statusorder_data_ToString(oms___rest_api_order_data__e status) {
    char* statusArray[] =  { "NULL", "RECEIVED", "ROUTING", "ROUTED", "NEW", "PENDING_CANCEL", "PARTIALLY_FILLED", "FILLED", "CANCELED", "REJECTED" };
	return statusArray[status];
}

oms___rest_api_order_data__e statusorder_data_FromString(char* status){
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
char* sideorder_data_ToString(oms___rest_api_order_data_SIDE_e side) {
    char* sideArray[] =  { "NULL", "BUY", "SELL" };
	return sideArray[side];
}

oms___rest_api_order_data_SIDE_e sideorder_data_FromString(char* side){
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
char* order_typeorder_data_ToString(oms___rest_api_order_data_ORDERTYPE_e order_type) {
    char* order_typeArray[] =  { "NULL", "LIMIT" };
	return order_typeArray[order_type];
}

oms___rest_api_order_data_ORDERTYPE_e order_typeorder_data_FromString(char* order_type){
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
char* time_in_forceorder_data_ToString(oms___rest_api_order_data__e time_in_force) {
    char* time_in_forceArray[] =  { "NULL", "GOOD_TILL_CANCEL", "GOOD_TILL_TIME_EXCHANGE", "GOOD_TILL_TIME_OMS", "FILL_OR_KILL", "IMMEDIATE_OR_CANCEL", "AUCTION_ONLY", "INDICATION_OF_INTEREST" };
	return time_in_forceArray[time_in_force];
}

oms___rest_api_order_data__e time_in_forceorder_data_FromString(char* time_in_force){
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
char* exec_instorder_data_ToString(oms___rest_api_order_data_EXECINST_e exec_inst) {
	char *exec_instArray[] =  { "NULL", "MAKER_OR_CANCEL" };
	return exec_instArray[exec_inst - 1];
}

oms___rest_api_order_data_EXECINST_e exec_instorder_data_FromString(char* exec_inst) {
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

order_data_t *order_data_create(
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
    oms___rest_api_order_data_SIDE_e side,
    oms___rest_api_order_data_ORDERTYPE_e order_type,
    list_t *exec_inst
    ) {
    order_data_t *order_data_local_var = malloc(sizeof(order_data_t));
    if (!order_data_local_var) {
        return NULL;
    }
    order_data_local_var->exchange_id = exchange_id;
    order_data_local_var->id = id;
    order_data_local_var->client_order_id_format_exchange = client_order_id_format_exchange;
    order_data_local_var->exchange_order_id = exchange_order_id;
    order_data_local_var->amount_open = amount_open;
    order_data_local_var->amount_filled = amount_filled;
    order_data_local_var->status = status;
    order_data_local_var->time_order = time_order;
    order_data_local_var->error_message = error_message;
    order_data_local_var->client_order_id = client_order_id;
    order_data_local_var->symbol_exchange = symbol_exchange;
    order_data_local_var->symbol_coinapi = symbol_coinapi;
    order_data_local_var->amount_order = amount_order;
    order_data_local_var->price = price;
    order_data_local_var->side = side;
    order_data_local_var->order_type = order_type;
    order_data_local_var->time_in_force = time_in_force;
    order_data_local_var->expire_time = expire_time;
    order_data_local_var->exec_inst = exec_inst;

    return order_data_local_var;
}


void order_data_free(order_data_t *order_data) {
    if(NULL == order_data){
        return ;
    }
    listEntry_t *listEntry;
    free(order_data->exchange_id);
    free(order_data->id);
    free(order_data->client_order_id_format_exchange);
    free(order_data->exchange_order_id);
    list_ForEach(listEntry, order_data->time_order) {
        free(listEntry->data);
    }
    list_free(order_data->time_order);
    free(order_data->error_message);
    free(order_data->client_order_id);
    free(order_data->symbol_exchange);
    free(order_data->symbol_coinapi);
    list_ForEach(listEntry, order_data->exec_inst) {
        free(listEntry->data);
    }
    list_free(order_data->exec_inst);
    free(order_data);
}

cJSON *order_data_convertToJSON(order_data_t *order_data) {
    cJSON *item = cJSON_CreateObject();

    // order_data->exchange_id
    if(order_data->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", order_data->exchange_id) == NULL) {
    goto fail; //String
    }
     } 


    // order_data->id
    if(order_data->id) { 
    if(cJSON_AddStringToObject(item, "id", order_data->id) == NULL) {
    goto fail; //String
    }
     } 


    // order_data->client_order_id_format_exchange
    if(order_data->client_order_id_format_exchange) { 
    if(cJSON_AddStringToObject(item, "client_order_id_format_exchange", order_data->client_order_id_format_exchange) == NULL) {
    goto fail; //String
    }
     } 


    // order_data->exchange_order_id
    if(order_data->exchange_order_id) { 
    if(cJSON_AddStringToObject(item, "exchange_order_id", order_data->exchange_order_id) == NULL) {
    goto fail; //String
    }
     } 


    // order_data->amount_open
    if(order_data->amount_open) { 
    if(cJSON_AddNumberToObject(item, "amount_open", order_data->amount_open) == NULL) {
    goto fail; //Numeric
    }
     } 


    // order_data->amount_filled
    if(order_data->amount_filled) { 
    if(cJSON_AddNumberToObject(item, "amount_filled", order_data->amount_filled) == NULL) {
    goto fail; //Numeric
    }
     } 


    // order_data->status
    
    


    // order_data->time_order
    if(order_data->time_order) { 
    cJSON *time_order = cJSON_AddArrayToObject(item, "time_order");
    if(time_order == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *time_orderListEntry;
    list_ForEach(time_orderListEntry, order_data->time_order) {
    }
     } 


    // order_data->error_message
    if(order_data->error_message) { 
    if(cJSON_AddStringToObject(item, "error_message", order_data->error_message) == NULL) {
    goto fail; //String
    }
     } 


    // order_data->client_order_id
    if(order_data->client_order_id) { 
    if(cJSON_AddStringToObject(item, "client_order_id", order_data->client_order_id) == NULL) {
    goto fail; //String
    }
     } 


    // order_data->symbol_exchange
    if(order_data->symbol_exchange) { 
    if(cJSON_AddStringToObject(item, "symbol_exchange", order_data->symbol_exchange) == NULL) {
    goto fail; //String
    }
     } 


    // order_data->symbol_coinapi
    if(order_data->symbol_coinapi) { 
    if(cJSON_AddStringToObject(item, "symbol_coinapi", order_data->symbol_coinapi) == NULL) {
    goto fail; //String
    }
     } 


    // order_data->amount_order
    if(order_data->amount_order) { 
    if(cJSON_AddNumberToObject(item, "amount_order", order_data->amount_order) == NULL) {
    goto fail; //Numeric
    }
     } 


    // order_data->price
    if(order_data->price) { 
    if(cJSON_AddNumberToObject(item, "price", order_data->price) == NULL) {
    goto fail; //Numeric
    }
     } 


    // order_data->side
    
    if(cJSON_AddStringToObject(item, "side", sideorder_data_ToString(order_data->side)) == NULL)
    {
    goto fail; //Enum
    }
    


    // order_data->order_type
    
    if(cJSON_AddStringToObject(item, "order_type", order_typeorder_data_ToString(order_data->order_type)) == NULL)
    {
    goto fail; //Enum
    }
    


    // order_data->time_in_force
    
    


    // order_data->expire_time
    if(order_data->expire_time) { 
     } 


    // order_data->exec_inst
    
    cJSON *exec_inst = cJSON_AddArrayToObject(item, "exec_inst");
    if(exec_inst == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *exec_instListEntry;
    list_ForEach(exec_instListEntry, order_data->exec_inst) {
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

order_data_t *order_data_parseFromJSON(cJSON *order_dataJSON){

    order_data_t *order_data_local_var = NULL;

    // order_data->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // order_data->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // order_data->client_order_id_format_exchange
    cJSON *client_order_id_format_exchange = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "client_order_id_format_exchange");
    if (client_order_id_format_exchange) { 
    if(!cJSON_IsString(client_order_id_format_exchange))
    {
    goto end; //String
    }
    }

    // order_data->exchange_order_id
    cJSON *exchange_order_id = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "exchange_order_id");
    if (exchange_order_id) { 
    if(!cJSON_IsString(exchange_order_id))
    {
    goto end; //String
    }
    }

    // order_data->amount_open
    cJSON *amount_open = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "amount_open");
    if (amount_open) { 
    if(!cJSON_IsNumber(amount_open))
    {
    goto end; //Numeric
    }
    }

    // order_data->amount_filled
    cJSON *amount_filled = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "amount_filled");
    if (amount_filled) { 
    if(!cJSON_IsNumber(amount_filled))
    {
    goto end; //Numeric
    }
    }

    // order_data->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "status");
    }

    // order_data->time_order
    cJSON *time_order = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "time_order");
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

    // order_data->error_message
    cJSON *error_message = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "error_message");
    if (error_message) { 
    if(!cJSON_IsString(error_message))
    {
    goto end; //String
    }
    }

    // order_data->client_order_id
    cJSON *client_order_id = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "client_order_id");
    if (client_order_id) { 
    if(!cJSON_IsString(client_order_id))
    {
    goto end; //String
    }
    }

    // order_data->symbol_exchange
    cJSON *symbol_exchange = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "symbol_exchange");
    if (symbol_exchange) { 
    if(!cJSON_IsString(symbol_exchange))
    {
    goto end; //String
    }
    }

    // order_data->symbol_coinapi
    cJSON *symbol_coinapi = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "symbol_coinapi");
    if (symbol_coinapi) { 
    if(!cJSON_IsString(symbol_coinapi))
    {
    goto end; //String
    }
    }

    // order_data->amount_order
    cJSON *amount_order = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "amount_order");
    if (amount_order) { 
    if(!cJSON_IsNumber(amount_order))
    {
    goto end; //Numeric
    }
    }

    // order_data->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "price");
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // order_data->side
    cJSON *side = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "side");
    oms___rest_api_order_data_SIDE_e sideVariable;
    if (side) { 
    if(!cJSON_IsString(side))
    {
    goto end; //Enum
    }
    sideVariable = sideorder_data_FromString(side->valuestring);
    }

    // order_data->order_type
    cJSON *order_type = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "order_type");
    oms___rest_api_order_data_ORDERTYPE_e order_typeVariable;
    if (order_type) { 
    if(!cJSON_IsString(order_type))
    {
    goto end; //Enum
    }
    order_typeVariable = order_typeorder_data_FromString(order_type->valuestring);
    }

    // order_data->time_in_force
    cJSON *time_in_force = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "time_in_force");
    }

    // order_data->expire_time
    cJSON *expire_time = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "expire_time");
    }

    // order_data->exec_inst
    cJSON *exec_inst = cJSON_GetObjectItemCaseSensitive(order_dataJSON, "exec_inst");
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


    order_data_local_var = order_data_create (
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

    return order_data_local_var;
end:
    return NULL;

}
