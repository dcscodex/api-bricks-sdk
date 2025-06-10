/*
 * v1_last_trade.h
 *
 * Represents the last executed transaction.
 */

#ifndef _v1_last_trade_H_
#define _v1_last_trade_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_last_trade_t v1_last_trade_t;




typedef struct v1_last_trade_t {
    char *time_exchange; //date time
    char *time_coinapi; //date time
    char *uuid; // string
    double price; //numeric
    double size; //numeric
    char *taker_side; // string

    int _library_owned; // Is the library responsible for freeing this object?
} v1_last_trade_t;

__attribute__((deprecated)) v1_last_trade_t *v1_last_trade_create(
    char *time_exchange,
    char *time_coinapi,
    char *uuid,
    double price,
    double size,
    char *taker_side
);

void v1_last_trade_free(v1_last_trade_t *v1_last_trade);

v1_last_trade_t *v1_last_trade_parseFromJSON(cJSON *v1_last_tradeJSON);

cJSON *v1_last_trade_convertToJSON(v1_last_trade_t *v1_last_trade);

#endif /* _v1_last_trade_H_ */

