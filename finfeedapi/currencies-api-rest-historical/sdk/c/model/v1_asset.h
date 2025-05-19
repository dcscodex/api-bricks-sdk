/*
 * v1_asset.h
 *
 * Represents an asset.
 */

#ifndef _v1_asset_H_
#define _v1_asset_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_asset_t v1_asset_t;

#include "v1_chain_network_address.h"



typedef struct v1_asset_t {
    char *asset_id; // string
    char *name; // string
    int type_is_crypto; //numeric
    char *data_quote_start; //date time
    char *data_quote_end; //date time
    char *data_orderbook_start; //date time
    char *data_orderbook_end; //date time
    char *data_trade_start; //date time
    char *data_trade_end; //date time
    long data_symbols_count; //numeric
    double volume_1hrs_usd; //numeric
    double volume_1day_usd; //numeric
    double volume_1mth_usd; //numeric
    double price_usd; //numeric
    char *id_icon; // string
    double supply_current; //numeric
    double supply_total; //numeric
    double supply_max; //numeric
    list_t *chain_addresses; //nonprimitive container
    char *data_start; // string
    char *data_end; // string

    int _library_owned; // Is the library responsible for freeing this object?
} v1_asset_t;

__attribute__((deprecated)) v1_asset_t *v1_asset_create(
    char *asset_id,
    char *name,
    int type_is_crypto,
    char *data_quote_start,
    char *data_quote_end,
    char *data_orderbook_start,
    char *data_orderbook_end,
    char *data_trade_start,
    char *data_trade_end,
    long data_symbols_count,
    double volume_1hrs_usd,
    double volume_1day_usd,
    double volume_1mth_usd,
    double price_usd,
    char *id_icon,
    double supply_current,
    double supply_total,
    double supply_max,
    list_t *chain_addresses,
    char *data_start,
    char *data_end
);

void v1_asset_free(v1_asset_t *v1_asset);

v1_asset_t *v1_asset_parseFromJSON(cJSON *v1_assetJSON);

cJSON *v1_asset_convertToJSON(v1_asset_t *v1_asset);

#endif /* _v1_asset_H_ */

