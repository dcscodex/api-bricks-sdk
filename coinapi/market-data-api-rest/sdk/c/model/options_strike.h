/*
 * options_strike.h
 *
 * Represents a strike within the option exchange group.
 */

#ifndef _options_strike_H_
#define _options_strike_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct options_strike_t options_strike_t;

#include "v1_quote_trade.h"



typedef struct options_strike_t {
    double strike_price; //numeric
    struct v1_quote_trade_t *call; //model
    struct v1_quote_trade_t *put; //model

    int _library_owned; // Is the library responsible for freeing this object?
} options_strike_t;

__attribute__((deprecated)) options_strike_t *options_strike_create(
    double strike_price,
    v1_quote_trade_t *call,
    v1_quote_trade_t *put
);

void options_strike_free(options_strike_t *options_strike);

options_strike_t *options_strike_parseFromJSON(cJSON *options_strikeJSON);

cJSON *options_strike_convertToJSON(options_strike_t *options_strike);

#endif /* _options_strike_H_ */

