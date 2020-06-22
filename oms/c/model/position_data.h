/*
 * position_data.h
 *
 * 
 */

#ifndef _position_data_H_
#define _position_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct position_data_t position_data_t;




typedef struct position_data_t {
    char *id; // string
    char *symbol_exchange; // string
    char *symbol_coinapi; // string
    double avg_entry_price; //numeric
    double quantity; //numeric
    int is_buy; //boolean
    double unrealised_pn_l; //numeric
    double leverage; //numeric
    int cross_margin; //boolean
    double liquidation_price; //numeric
    char *raw_data; // string

} position_data_t;

position_data_t *position_data_create(
    char *id,
    char *symbol_exchange,
    char *symbol_coinapi,
    double avg_entry_price,
    double quantity,
    int is_buy,
    double unrealised_pn_l,
    double leverage,
    int cross_margin,
    double liquidation_price,
    char *raw_data
);

void position_data_free(position_data_t *position_data);

position_data_t *position_data_parseFromJSON(cJSON *position_dataJSON);

cJSON *position_data_convertToJSON(position_data_t *position_data);

#endif /* _position_data_H_ */

