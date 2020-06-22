/*
 * new_order.h
 *
 * 
 */

#ifndef _new_order_H_
#define _new_order_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct new_order_t new_order_t;

#include "time_in_force.h"

// Enum SIDE for new_order

typedef enum  { oms___rest_api_____new_order_SIDE_NULL = 0, oms___rest_api_____new_order_SIDE_BUY, oms___rest_api_____new_order_SIDE_SELL } oms___rest_api_____new_order_SIDE_e;

char* new_order_side_ToString(oms___rest_api_____new_order_SIDE_e side);

oms___rest_api_____new_order_SIDE_e new_order_side_FromString(char* side);

// Enum ORDERTYPE for new_order

typedef enum  { oms___rest_api_____new_order_ORDERTYPE_NULL = 0, oms___rest_api_____new_order_ORDERTYPE_LIMIT } oms___rest_api_____new_order_ORDERTYPE_e;

char* new_order_order_type_ToString(oms___rest_api_____new_order_ORDERTYPE_e order_type);

oms___rest_api_____new_order_ORDERTYPE_e new_order_order_type_FromString(char* order_type);

// Enum  for new_order

typedef enum  { oms___rest_api_____new_order__NULL = 0, oms___rest_api_____new_order__GOOD_TILL_CANCEL, oms___rest_api_____new_order__GOOD_TILL_TIME_EXCHANGE, oms___rest_api_____new_order__GOOD_TILL_TIME_OMS, oms___rest_api_____new_order__FILL_OR_KILL, oms___rest_api_____new_order__IMMEDIATE_OR_CANCEL, oms___rest_api_____new_order__AUCTION_ONLY, oms___rest_api_____new_order__INDICATION_OF_INTEREST } oms___rest_api_____new_order__e;

char* new_order_time_in_force_ToString(oms___rest_api_____new_order__e time_in_force);

oms___rest_api_____new_order__e new_order_time_in_force_FromString(char* time_in_force);

// Enum EXECINST for new_order

typedef enum  { oms___rest_api_____new_order_EXECINST_NULL = 0, oms___rest_api_____new_order_EXECINST_MAKER_OR_CANCEL } oms___rest_api_____new_order_EXECINST_e;

char* new_order_exec_inst_ToString(oms___rest_api_____new_order_EXECINST_e exec_inst);

oms___rest_api_____new_order_EXECINST_e new_order_exec_inst_FromString(char* exec_inst);



typedef struct new_order_t {
    char *exchange_id; // string
    char *client_order_id; // string
    char *symbol_exchange; // string
    char *symbol_coinapi; // string
    double amount_order; //numeric
    double price; //numeric
    oms___rest_api_____new_order_SIDE_e side; //enum
    oms___rest_api_____new_order_ORDERTYPE_e order_type; //enum
    list_t *exec_inst; //primitive container

} new_order_t;

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
);

void new_order_free(new_order_t *new_order);

new_order_t *new_order_parseFromJSON(cJSON *new_orderJSON);

cJSON *new_order_convertToJSON(new_order_t *new_order);

#endif /* _new_order_H_ */

