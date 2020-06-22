#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "new_order.h"


char* sidenew_order_ToString(oms___rest_api_____new_order_SIDE_e side) {
    char* sideArray[] =  { "NULL", "BUY", "SELL" };
	return sideArray[side];
}

oms___rest_api_____new_order_SIDE_e sidenew_order_FromString(char* side){
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
char* order_typenew_order_ToString(oms___rest_api_____new_order_ORDERTYPE_e order_type) {
    char* order_typeArray[] =  { "NULL", "LIMIT" };
	return order_typeArray[order_type];
}

oms___rest_api_____new_order_ORDERTYPE_e order_typenew_order_FromString(char* order_type){
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
char* time_in_forcenew_order_ToString(oms___rest_api_____new_order__e time_in_force) {
    char* time_in_forceArray[] =  { "NULL", "GOOD_TILL_CANCEL", "GOOD_TILL_TIME_EXCHANGE", "GOOD_TILL_TIME_OMS", "FILL_OR_KILL", "IMMEDIATE_OR_CANCEL", "AUCTION_ONLY", "INDICATION_OF_INTEREST" };
	return time_in_forceArray[time_in_force];
}

oms___rest_api_____new_order__e time_in_forcenew_order_FromString(char* time_in_force){
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
char* exec_instnew_order_ToString(oms___rest_api_____new_order_EXECINST_e exec_inst) {
	char *exec_instArray[] =  { "NULL", "MAKER_OR_CANCEL" };
	return exec_instArray[exec_inst - 1];
}

oms___rest_api_____new_order_EXECINST_e exec_instnew_order_FromString(char* exec_inst) {
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

new_order_t *new_order_create(
    char *exchange_id,
    char *client_order_id,
    char *symbol_exchange,
    char *symbol_coinapi,
    double amount_order,
    double price,
    oms___rest_api_____new_order_SIDE_e side,
    oms___rest_api_____new_order_ORDERTYPE_e order_type,
    list_t *exec_inst
    ) {
    new_order_t *new_order_local_var = malloc(sizeof(new_order_t));
    if (!new_order_local_var) {
        return NULL;
    }
    new_order_local_var->exchange_id = exchange_id;
    new_order_local_var->client_order_id = client_order_id;
    new_order_local_var->symbol_exchange = symbol_exchange;
    new_order_local_var->symbol_coinapi = symbol_coinapi;
    new_order_local_var->amount_order = amount_order;
    new_order_local_var->price = price;
    new_order_local_var->side = side;
    new_order_local_var->order_type = order_type;
    new_order_local_var->time_in_force = time_in_force;
    new_order_local_var->expire_time = expire_time;
    new_order_local_var->exec_inst = exec_inst;

    return new_order_local_var;
}


void new_order_free(new_order_t *new_order) {
    if(NULL == new_order){
        return ;
    }
    listEntry_t *listEntry;
    free(new_order->exchange_id);
    free(new_order->client_order_id);
    free(new_order->symbol_exchange);
    free(new_order->symbol_coinapi);
    list_ForEach(listEntry, new_order->exec_inst) {
        free(listEntry->data);
    }
    list_free(new_order->exec_inst);
    free(new_order);
}

cJSON *new_order_convertToJSON(new_order_t *new_order) {
    cJSON *item = cJSON_CreateObject();

    // new_order->exchange_id
    if(new_order->exchange_id) { 
    if(cJSON_AddStringToObject(item, "exchange_id", new_order->exchange_id) == NULL) {
    goto fail; //String
    }
     } 


    // new_order->client_order_id
    if(new_order->client_order_id) { 
    if(cJSON_AddStringToObject(item, "client_order_id", new_order->client_order_id) == NULL) {
    goto fail; //String
    }
     } 


    // new_order->symbol_exchange
    if(new_order->symbol_exchange) { 
    if(cJSON_AddStringToObject(item, "symbol_exchange", new_order->symbol_exchange) == NULL) {
    goto fail; //String
    }
     } 


    // new_order->symbol_coinapi
    if(new_order->symbol_coinapi) { 
    if(cJSON_AddStringToObject(item, "symbol_coinapi", new_order->symbol_coinapi) == NULL) {
    goto fail; //String
    }
     } 


    // new_order->amount_order
    if(new_order->amount_order) { 
    if(cJSON_AddNumberToObject(item, "amount_order", new_order->amount_order) == NULL) {
    goto fail; //Numeric
    }
     } 


    // new_order->price
    if(new_order->price) { 
    if(cJSON_AddNumberToObject(item, "price", new_order->price) == NULL) {
    goto fail; //Numeric
    }
     } 


    // new_order->side
    
    if(cJSON_AddStringToObject(item, "side", sidenew_order_ToString(new_order->side)) == NULL)
    {
    goto fail; //Enum
    }
    


    // new_order->order_type
    
    if(cJSON_AddStringToObject(item, "order_type", order_typenew_order_ToString(new_order->order_type)) == NULL)
    {
    goto fail; //Enum
    }
    


    // new_order->time_in_force
    
    


    // new_order->expire_time
    if(new_order->expire_time) { 
     } 


    // new_order->exec_inst
    
    cJSON *exec_inst = cJSON_AddArrayToObject(item, "exec_inst");
    if(exec_inst == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *exec_instListEntry;
    list_ForEach(exec_instListEntry, new_order->exec_inst) {
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

new_order_t *new_order_parseFromJSON(cJSON *new_orderJSON){

    new_order_t *new_order_local_var = NULL;

    // new_order->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(new_orderJSON, "exchange_id");
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id))
    {
    goto end; //String
    }
    }

    // new_order->client_order_id
    cJSON *client_order_id = cJSON_GetObjectItemCaseSensitive(new_orderJSON, "client_order_id");
    if (client_order_id) { 
    if(!cJSON_IsString(client_order_id))
    {
    goto end; //String
    }
    }

    // new_order->symbol_exchange
    cJSON *symbol_exchange = cJSON_GetObjectItemCaseSensitive(new_orderJSON, "symbol_exchange");
    if (symbol_exchange) { 
    if(!cJSON_IsString(symbol_exchange))
    {
    goto end; //String
    }
    }

    // new_order->symbol_coinapi
    cJSON *symbol_coinapi = cJSON_GetObjectItemCaseSensitive(new_orderJSON, "symbol_coinapi");
    if (symbol_coinapi) { 
    if(!cJSON_IsString(symbol_coinapi))
    {
    goto end; //String
    }
    }

    // new_order->amount_order
    cJSON *amount_order = cJSON_GetObjectItemCaseSensitive(new_orderJSON, "amount_order");
    if (amount_order) { 
    if(!cJSON_IsNumber(amount_order))
    {
    goto end; //Numeric
    }
    }

    // new_order->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(new_orderJSON, "price");
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // new_order->side
    cJSON *side = cJSON_GetObjectItemCaseSensitive(new_orderJSON, "side");
    oms___rest_api_____new_order_SIDE_e sideVariable;
    if (side) { 
    if(!cJSON_IsString(side))
    {
    goto end; //Enum
    }
    sideVariable = sidenew_order_FromString(side->valuestring);
    }

    // new_order->order_type
    cJSON *order_type = cJSON_GetObjectItemCaseSensitive(new_orderJSON, "order_type");
    oms___rest_api_____new_order_ORDERTYPE_e order_typeVariable;
    if (order_type) { 
    if(!cJSON_IsString(order_type))
    {
    goto end; //Enum
    }
    order_typeVariable = order_typenew_order_FromString(order_type->valuestring);
    }

    // new_order->time_in_force
    cJSON *time_in_force = cJSON_GetObjectItemCaseSensitive(new_orderJSON, "time_in_force");
    }

    // new_order->expire_time
    cJSON *expire_time = cJSON_GetObjectItemCaseSensitive(new_orderJSON, "expire_time");
    }

    // new_order->exec_inst
    cJSON *exec_inst = cJSON_GetObjectItemCaseSensitive(new_orderJSON, "exec_inst");
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


    new_order_local_var = new_order_create (
        exchange_id ? strdup(exchange_id->valuestring) : NULL,
        client_order_id ? strdup(client_order_id->valuestring) : NULL,
        symbol_exchange ? strdup(symbol_exchange->valuestring) : NULL,
        symbol_coinapi ? strdup(symbol_coinapi->valuestring) : NULL,
        amount_order ? amount_order->valuedouble : 0,
        price ? price->valuedouble : 0,
        side ? sideVariable : -1,
        order_type ? order_typeVariable : -1,
        exec_inst ? exec_instList : NULL
        );

    return new_order_local_var;
end:
    return NULL;

}
