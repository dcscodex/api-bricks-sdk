/*
 * trade_trade_model.h
 *
 * Represents the response DTO for a single trade event (report or break).
 */

#ifndef _trade_trade_model_H_
#define _trade_trade_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct trade_trade_model_t trade_trade_model_t;




typedef struct trade_trade_model_t {
    int is_trade_break; //boolean
    char *symbol; // string
    long timestamp_nanos; //numeric
    char *timestamp; //date time
    int size; //numeric
    double price; //numeric
    long trade_id; //numeric
    int is_intermarket_sweep; //boolean
    int is_extended_hours_trade; //boolean
    int is_odd_lot_trade; //boolean
    int is_trade_through_exempt; //boolean
    int is_single_price_cross_trade; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} trade_trade_model_t;

__attribute__((deprecated)) trade_trade_model_t *trade_trade_model_create(
    int is_trade_break,
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int size,
    double price,
    long trade_id,
    int is_intermarket_sweep,
    int is_extended_hours_trade,
    int is_odd_lot_trade,
    int is_trade_through_exempt,
    int is_single_price_cross_trade
);

void trade_trade_model_free(trade_trade_model_t *trade_trade_model);

trade_trade_model_t *trade_trade_model_parseFromJSON(cJSON *trade_trade_modelJSON);

cJSON *trade_trade_model_convertToJSON(trade_trade_model_t *trade_trade_model);

#endif /* _trade_trade_model_H_ */

