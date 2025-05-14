/*
 * level3_executed_order_model.h
 *
 * Represents the response DTO for order executed information
 */

#ifndef _level3_executed_order_model_H_
#define _level3_executed_order_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct level3_executed_order_model_t level3_executed_order_model_t;




typedef struct level3_executed_order_model_t {
    char *symbol; // string
    long timestamp_nanos; //numeric
    char *timestamp; //date time
    long order_id_reference; //numeric
    int sale_condition_flags; //numeric
    int is_intermarket_sweep; //boolean
    int is_extended_hours_trade; //boolean
    int is_odd_lot_trade; //boolean
    int is_trade_through_exempt; //boolean
    int is_single_price_cross_trade; //boolean
    int size; //numeric
    double price; //numeric
    long trade_id; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} level3_executed_order_model_t;

__attribute__((deprecated)) level3_executed_order_model_t *level3_executed_order_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    long order_id_reference,
    int sale_condition_flags,
    int is_intermarket_sweep,
    int is_extended_hours_trade,
    int is_odd_lot_trade,
    int is_trade_through_exempt,
    int is_single_price_cross_trade,
    int size,
    double price,
    long trade_id
);

void level3_executed_order_model_free(level3_executed_order_model_t *level3_executed_order_model);

level3_executed_order_model_t *level3_executed_order_model_parseFromJSON(cJSON *level3_executed_order_modelJSON);

cJSON *level3_executed_order_model_convertToJSON(level3_executed_order_model_t *level3_executed_order_model);

#endif /* _level3_executed_order_model_H_ */

