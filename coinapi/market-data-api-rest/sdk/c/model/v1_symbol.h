/*
 * v1_symbol.h
 *
 * Represents a symbol data model.
 */

#ifndef _v1_symbol_H_
#define _v1_symbol_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_symbol_t v1_symbol_t;




typedef struct v1_symbol_t {
    char *symbol_id; // string
    char *exchange_id; // string
    char *symbol_type; // string
    char *asset_id_base; // string
    char *asset_id_quote; // string
    char *asset_id_unit; // string
    double future_contract_unit; //numeric
    char *future_contract_unit_asset; // string
    char *future_delivery_time; //date time
    int option_type_is_call; //boolean
    double option_strike_price; //numeric
    double option_contract_unit; //numeric
    char *option_exercise_style; // string
    char *option_expiration_time; //date time
    char *contract_delivery_time; //date time
    double contract_unit; //numeric
    char *contract_unit_asset; // string
    char *contract_id; // string
    char *contract_display_name; // string
    char *contract_display_description; // string
    char *data_start; // string
    char *data_end; // string
    char *data_quote_start; //date time
    char *data_quote_end; //date time
    char *data_orderbook_start; //date time
    char *data_orderbook_end; //date time
    char *data_trade_start; //date time
    char *data_trade_end; //date time
    char *index_id; // string
    char *index_display_name; // string
    char *index_display_description; // string
    double volume_1hrs; //numeric
    double volume_1hrs_usd; //numeric
    double volume_1day; //numeric
    double volume_1day_usd; //numeric
    double volume_1mth; //numeric
    double volume_1mth_usd; //numeric
    double price; //numeric
    char *symbol_id_exchange; // string
    char *asset_id_base_exchange; // string
    char *asset_id_quote_exchange; // string
    double price_precision; //numeric
    double size_precision; //numeric
    list_t* raw_kvp; //map
    double volume_to_usd; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} v1_symbol_t;

__attribute__((deprecated)) v1_symbol_t *v1_symbol_create(
    char *symbol_id,
    char *exchange_id,
    char *symbol_type,
    char *asset_id_base,
    char *asset_id_quote,
    char *asset_id_unit,
    double future_contract_unit,
    char *future_contract_unit_asset,
    char *future_delivery_time,
    int option_type_is_call,
    double option_strike_price,
    double option_contract_unit,
    char *option_exercise_style,
    char *option_expiration_time,
    char *contract_delivery_time,
    double contract_unit,
    char *contract_unit_asset,
    char *contract_id,
    char *contract_display_name,
    char *contract_display_description,
    char *data_start,
    char *data_end,
    char *data_quote_start,
    char *data_quote_end,
    char *data_orderbook_start,
    char *data_orderbook_end,
    char *data_trade_start,
    char *data_trade_end,
    char *index_id,
    char *index_display_name,
    char *index_display_description,
    double volume_1hrs,
    double volume_1hrs_usd,
    double volume_1day,
    double volume_1day_usd,
    double volume_1mth,
    double volume_1mth_usd,
    double price,
    char *symbol_id_exchange,
    char *asset_id_base_exchange,
    char *asset_id_quote_exchange,
    double price_precision,
    double size_precision,
    list_t* raw_kvp,
    double volume_to_usd
);

void v1_symbol_free(v1_symbol_t *v1_symbol);

v1_symbol_t *v1_symbol_parseFromJSON(cJSON *v1_symbolJSON);

cJSON *v1_symbol_convertToJSON(v1_symbol_t *v1_symbol);

#endif /* _v1_symbol_H_ */

