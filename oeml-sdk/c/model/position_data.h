/*
 * position_data.h
 *
 * The Position object.
 */

#ifndef _position_data_H_
#define _position_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct position_data_t position_data_t;

#include "object.h"
#include "ord_side.h"

// Enum  for position_data

typedef enum  { oeml___rest_api_position_data__NULL = 0, oeml___rest_api_position_data__BUY, oeml___rest_api_position_data__SELL } oeml___rest_api_position_data__e;

char* position_data_side_ToString(oeml___rest_api_position_data__e side);

oeml___rest_api_position_data__e position_data_side_FromString(char* side);



typedef struct position_data_t {
    char *symbol_id_exchange; // string
    char *symbol_id_coinapi; // string
    double avg_entry_price; //numeric
    double quantity; //numeric
    double unrealized_pnl; //numeric
    double leverage; //numeric
    int cross_margin; //boolean
    double liquidation_price; //numeric
    object_t *raw_data; //object

} position_data_t;

position_data_t *position_data_create(
    char *symbol_id_exchange,
    char *symbol_id_coinapi,
    double avg_entry_price,
    double quantity,
    double unrealized_pnl,
    double leverage,
    int cross_margin,
    double liquidation_price,
    object_t *raw_data
);

void position_data_free(position_data_t *position_data);

position_data_t *position_data_parseFromJSON(cJSON *position_dataJSON);

cJSON *position_data_convertToJSON(position_data_t *position_data);

#endif /* _position_data_H_ */

