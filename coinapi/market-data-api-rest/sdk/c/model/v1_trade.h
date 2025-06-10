/*
 * v1_trade.h
 *
 * Represents a trade executed on the exchange.
 */

#ifndef _v1_trade_H_
#define _v1_trade_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_trade_t v1_trade_t;




typedef struct v1_trade_t {
    char *symbol_id; // string
    char *time_exchange; //date time
    char *time_coinapi; //date time
    char *uuid; // string
    double price; //numeric
    double size; //numeric
    char *taker_side; // string
    char *id_trade; // string
    char *id_order_maker; // string
    char *id_order_taker; // string

    int _library_owned; // Is the library responsible for freeing this object?
} v1_trade_t;

__attribute__((deprecated)) v1_trade_t *v1_trade_create(
    char *symbol_id,
    char *time_exchange,
    char *time_coinapi,
    char *uuid,
    double price,
    double size,
    char *taker_side,
    char *id_trade,
    char *id_order_maker,
    char *id_order_taker
);

void v1_trade_free(v1_trade_t *v1_trade);

v1_trade_t *v1_trade_parseFromJSON(cJSON *v1_tradeJSON);

cJSON *v1_trade_convertToJSON(v1_trade_t *v1_trade);

#endif /* _v1_trade_H_ */

