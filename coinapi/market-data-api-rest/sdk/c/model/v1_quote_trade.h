/*
 * v1_quote_trade.h
 *
 * Represents a quote trade data model.
 */

#ifndef _v1_quote_trade_H_
#define _v1_quote_trade_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_quote_trade_t v1_quote_trade_t;

#include "v1_last_trade.h"



typedef struct v1_quote_trade_t {
    char *symbol_id; // string
    char *time_exchange; //date time
    char *time_coinapi; //date time
    double ask_price; //numeric
    double ask_size; //numeric
    double bid_price; //numeric
    double bid_size; //numeric
    struct v1_last_trade_t *last_trade; //model

    int _library_owned; // Is the library responsible for freeing this object?
} v1_quote_trade_t;

__attribute__((deprecated)) v1_quote_trade_t *v1_quote_trade_create(
    char *symbol_id,
    char *time_exchange,
    char *time_coinapi,
    double ask_price,
    double ask_size,
    double bid_price,
    double bid_size,
    v1_last_trade_t *last_trade
);

void v1_quote_trade_free(v1_quote_trade_t *v1_quote_trade);

v1_quote_trade_t *v1_quote_trade_parseFromJSON(cJSON *v1_quote_tradeJSON);

cJSON *v1_quote_trade_convertToJSON(v1_quote_trade_t *v1_quote_trade);

#endif /* _v1_quote_trade_H_ */

