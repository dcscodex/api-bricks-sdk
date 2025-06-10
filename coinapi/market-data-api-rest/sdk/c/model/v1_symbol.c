#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_symbol.h"



static v1_symbol_t *v1_symbol_create_internal(
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
    ) {
    v1_symbol_t *v1_symbol_local_var = malloc(sizeof(v1_symbol_t));
    if (!v1_symbol_local_var) {
        return NULL;
    }
    v1_symbol_local_var->symbol_id = symbol_id;
    v1_symbol_local_var->exchange_id = exchange_id;
    v1_symbol_local_var->symbol_type = symbol_type;
    v1_symbol_local_var->asset_id_base = asset_id_base;
    v1_symbol_local_var->asset_id_quote = asset_id_quote;
    v1_symbol_local_var->asset_id_unit = asset_id_unit;
    v1_symbol_local_var->future_contract_unit = future_contract_unit;
    v1_symbol_local_var->future_contract_unit_asset = future_contract_unit_asset;
    v1_symbol_local_var->future_delivery_time = future_delivery_time;
    v1_symbol_local_var->option_type_is_call = option_type_is_call;
    v1_symbol_local_var->option_strike_price = option_strike_price;
    v1_symbol_local_var->option_contract_unit = option_contract_unit;
    v1_symbol_local_var->option_exercise_style = option_exercise_style;
    v1_symbol_local_var->option_expiration_time = option_expiration_time;
    v1_symbol_local_var->contract_delivery_time = contract_delivery_time;
    v1_symbol_local_var->contract_unit = contract_unit;
    v1_symbol_local_var->contract_unit_asset = contract_unit_asset;
    v1_symbol_local_var->contract_id = contract_id;
    v1_symbol_local_var->contract_display_name = contract_display_name;
    v1_symbol_local_var->contract_display_description = contract_display_description;
    v1_symbol_local_var->data_start = data_start;
    v1_symbol_local_var->data_end = data_end;
    v1_symbol_local_var->data_quote_start = data_quote_start;
    v1_symbol_local_var->data_quote_end = data_quote_end;
    v1_symbol_local_var->data_orderbook_start = data_orderbook_start;
    v1_symbol_local_var->data_orderbook_end = data_orderbook_end;
    v1_symbol_local_var->data_trade_start = data_trade_start;
    v1_symbol_local_var->data_trade_end = data_trade_end;
    v1_symbol_local_var->index_id = index_id;
    v1_symbol_local_var->index_display_name = index_display_name;
    v1_symbol_local_var->index_display_description = index_display_description;
    v1_symbol_local_var->volume_1hrs = volume_1hrs;
    v1_symbol_local_var->volume_1hrs_usd = volume_1hrs_usd;
    v1_symbol_local_var->volume_1day = volume_1day;
    v1_symbol_local_var->volume_1day_usd = volume_1day_usd;
    v1_symbol_local_var->volume_1mth = volume_1mth;
    v1_symbol_local_var->volume_1mth_usd = volume_1mth_usd;
    v1_symbol_local_var->price = price;
    v1_symbol_local_var->symbol_id_exchange = symbol_id_exchange;
    v1_symbol_local_var->asset_id_base_exchange = asset_id_base_exchange;
    v1_symbol_local_var->asset_id_quote_exchange = asset_id_quote_exchange;
    v1_symbol_local_var->price_precision = price_precision;
    v1_symbol_local_var->size_precision = size_precision;
    v1_symbol_local_var->raw_kvp = raw_kvp;
    v1_symbol_local_var->volume_to_usd = volume_to_usd;

    v1_symbol_local_var->_library_owned = 1;
    return v1_symbol_local_var;
}

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
    ) {
    return v1_symbol_create_internal (
        symbol_id,
        exchange_id,
        symbol_type,
        asset_id_base,
        asset_id_quote,
        asset_id_unit,
        future_contract_unit,
        future_contract_unit_asset,
        future_delivery_time,
        option_type_is_call,
        option_strike_price,
        option_contract_unit,
        option_exercise_style,
        option_expiration_time,
        contract_delivery_time,
        contract_unit,
        contract_unit_asset,
        contract_id,
        contract_display_name,
        contract_display_description,
        data_start,
        data_end,
        data_quote_start,
        data_quote_end,
        data_orderbook_start,
        data_orderbook_end,
        data_trade_start,
        data_trade_end,
        index_id,
        index_display_name,
        index_display_description,
        volume_1hrs,
        volume_1hrs_usd,
        volume_1day,
        volume_1day_usd,
        volume_1mth,
        volume_1mth_usd,
        price,
        symbol_id_exchange,
        asset_id_base_exchange,
        asset_id_quote_exchange,
        price_precision,
        size_precision,
        raw_kvp,
        volume_to_usd
        );
}

void v1_symbol_free(v1_symbol_t *v1_symbol) {
    if(NULL == v1_symbol){
        return ;
    }
    if(v1_symbol->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_symbol_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_symbol->symbol_id) {
        free(v1_symbol->symbol_id);
        v1_symbol->symbol_id = NULL;
    }
    if (v1_symbol->exchange_id) {
        free(v1_symbol->exchange_id);
        v1_symbol->exchange_id = NULL;
    }
    if (v1_symbol->symbol_type) {
        free(v1_symbol->symbol_type);
        v1_symbol->symbol_type = NULL;
    }
    if (v1_symbol->asset_id_base) {
        free(v1_symbol->asset_id_base);
        v1_symbol->asset_id_base = NULL;
    }
    if (v1_symbol->asset_id_quote) {
        free(v1_symbol->asset_id_quote);
        v1_symbol->asset_id_quote = NULL;
    }
    if (v1_symbol->asset_id_unit) {
        free(v1_symbol->asset_id_unit);
        v1_symbol->asset_id_unit = NULL;
    }
    if (v1_symbol->future_contract_unit_asset) {
        free(v1_symbol->future_contract_unit_asset);
        v1_symbol->future_contract_unit_asset = NULL;
    }
    if (v1_symbol->future_delivery_time) {
        free(v1_symbol->future_delivery_time);
        v1_symbol->future_delivery_time = NULL;
    }
    if (v1_symbol->option_exercise_style) {
        free(v1_symbol->option_exercise_style);
        v1_symbol->option_exercise_style = NULL;
    }
    if (v1_symbol->option_expiration_time) {
        free(v1_symbol->option_expiration_time);
        v1_symbol->option_expiration_time = NULL;
    }
    if (v1_symbol->contract_delivery_time) {
        free(v1_symbol->contract_delivery_time);
        v1_symbol->contract_delivery_time = NULL;
    }
    if (v1_symbol->contract_unit_asset) {
        free(v1_symbol->contract_unit_asset);
        v1_symbol->contract_unit_asset = NULL;
    }
    if (v1_symbol->contract_id) {
        free(v1_symbol->contract_id);
        v1_symbol->contract_id = NULL;
    }
    if (v1_symbol->contract_display_name) {
        free(v1_symbol->contract_display_name);
        v1_symbol->contract_display_name = NULL;
    }
    if (v1_symbol->contract_display_description) {
        free(v1_symbol->contract_display_description);
        v1_symbol->contract_display_description = NULL;
    }
    if (v1_symbol->data_start) {
        free(v1_symbol->data_start);
        v1_symbol->data_start = NULL;
    }
    if (v1_symbol->data_end) {
        free(v1_symbol->data_end);
        v1_symbol->data_end = NULL;
    }
    if (v1_symbol->data_quote_start) {
        free(v1_symbol->data_quote_start);
        v1_symbol->data_quote_start = NULL;
    }
    if (v1_symbol->data_quote_end) {
        free(v1_symbol->data_quote_end);
        v1_symbol->data_quote_end = NULL;
    }
    if (v1_symbol->data_orderbook_start) {
        free(v1_symbol->data_orderbook_start);
        v1_symbol->data_orderbook_start = NULL;
    }
    if (v1_symbol->data_orderbook_end) {
        free(v1_symbol->data_orderbook_end);
        v1_symbol->data_orderbook_end = NULL;
    }
    if (v1_symbol->data_trade_start) {
        free(v1_symbol->data_trade_start);
        v1_symbol->data_trade_start = NULL;
    }
    if (v1_symbol->data_trade_end) {
        free(v1_symbol->data_trade_end);
        v1_symbol->data_trade_end = NULL;
    }
    if (v1_symbol->index_id) {
        free(v1_symbol->index_id);
        v1_symbol->index_id = NULL;
    }
    if (v1_symbol->index_display_name) {
        free(v1_symbol->index_display_name);
        v1_symbol->index_display_name = NULL;
    }
    if (v1_symbol->index_display_description) {
        free(v1_symbol->index_display_description);
        v1_symbol->index_display_description = NULL;
    }
    if (v1_symbol->symbol_id_exchange) {
        free(v1_symbol->symbol_id_exchange);
        v1_symbol->symbol_id_exchange = NULL;
    }
    if (v1_symbol->asset_id_base_exchange) {
        free(v1_symbol->asset_id_base_exchange);
        v1_symbol->asset_id_base_exchange = NULL;
    }
    if (v1_symbol->asset_id_quote_exchange) {
        free(v1_symbol->asset_id_quote_exchange);
        v1_symbol->asset_id_quote_exchange = NULL;
    }
    if (v1_symbol->raw_kvp) {
        list_ForEach(listEntry, v1_symbol->raw_kvp) {
            keyValuePair_t *localKeyValue = listEntry->data;
            free (localKeyValue->key);
            free (localKeyValue->value);
            keyValuePair_free(localKeyValue);
        }
        list_freeList(v1_symbol->raw_kvp);
        v1_symbol->raw_kvp = NULL;
    }
    free(v1_symbol);
}

cJSON *v1_symbol_convertToJSON(v1_symbol_t *v1_symbol) {
    cJSON *item = cJSON_CreateObject();

    // v1_symbol->symbol_id
    if(v1_symbol->symbol_id) {
    if(cJSON_AddStringToObject(item, "symbol_id", v1_symbol->symbol_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->exchange_id
    if(v1_symbol->exchange_id) {
    if(cJSON_AddStringToObject(item, "exchange_id", v1_symbol->exchange_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->symbol_type
    if(v1_symbol->symbol_type) {
    if(cJSON_AddStringToObject(item, "symbol_type", v1_symbol->symbol_type) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->asset_id_base
    if(v1_symbol->asset_id_base) {
    if(cJSON_AddStringToObject(item, "asset_id_base", v1_symbol->asset_id_base) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->asset_id_quote
    if(v1_symbol->asset_id_quote) {
    if(cJSON_AddStringToObject(item, "asset_id_quote", v1_symbol->asset_id_quote) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->asset_id_unit
    if(v1_symbol->asset_id_unit) {
    if(cJSON_AddStringToObject(item, "asset_id_unit", v1_symbol->asset_id_unit) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->future_contract_unit
    if(v1_symbol->future_contract_unit) {
    if(cJSON_AddNumberToObject(item, "future_contract_unit", v1_symbol->future_contract_unit) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_symbol->future_contract_unit_asset
    if(v1_symbol->future_contract_unit_asset) {
    if(cJSON_AddStringToObject(item, "future_contract_unit_asset", v1_symbol->future_contract_unit_asset) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->future_delivery_time
    if(v1_symbol->future_delivery_time) {
    if(cJSON_AddStringToObject(item, "future_delivery_time", v1_symbol->future_delivery_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_symbol->option_type_is_call
    if(v1_symbol->option_type_is_call) {
    if(cJSON_AddBoolToObject(item, "option_type_is_call", v1_symbol->option_type_is_call) == NULL) {
    goto fail; //Bool
    }
    }


    // v1_symbol->option_strike_price
    if(v1_symbol->option_strike_price) {
    if(cJSON_AddNumberToObject(item, "option_strike_price", v1_symbol->option_strike_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_symbol->option_contract_unit
    if(v1_symbol->option_contract_unit) {
    if(cJSON_AddNumberToObject(item, "option_contract_unit", v1_symbol->option_contract_unit) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_symbol->option_exercise_style
    if(v1_symbol->option_exercise_style) {
    if(cJSON_AddStringToObject(item, "option_exercise_style", v1_symbol->option_exercise_style) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->option_expiration_time
    if(v1_symbol->option_expiration_time) {
    if(cJSON_AddStringToObject(item, "option_expiration_time", v1_symbol->option_expiration_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_symbol->contract_delivery_time
    if(v1_symbol->contract_delivery_time) {
    if(cJSON_AddStringToObject(item, "contract_delivery_time", v1_symbol->contract_delivery_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_symbol->contract_unit
    if(v1_symbol->contract_unit) {
    if(cJSON_AddNumberToObject(item, "contract_unit", v1_symbol->contract_unit) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_symbol->contract_unit_asset
    if(v1_symbol->contract_unit_asset) {
    if(cJSON_AddStringToObject(item, "contract_unit_asset", v1_symbol->contract_unit_asset) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->contract_id
    if(v1_symbol->contract_id) {
    if(cJSON_AddStringToObject(item, "contract_id", v1_symbol->contract_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->contract_display_name
    if(v1_symbol->contract_display_name) {
    if(cJSON_AddStringToObject(item, "contract_display_name", v1_symbol->contract_display_name) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->contract_display_description
    if(v1_symbol->contract_display_description) {
    if(cJSON_AddStringToObject(item, "contract_display_description", v1_symbol->contract_display_description) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->data_start
    if(v1_symbol->data_start) {
    if(cJSON_AddStringToObject(item, "data_start", v1_symbol->data_start) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->data_end
    if(v1_symbol->data_end) {
    if(cJSON_AddStringToObject(item, "data_end", v1_symbol->data_end) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->data_quote_start
    if(v1_symbol->data_quote_start) {
    if(cJSON_AddStringToObject(item, "data_quote_start", v1_symbol->data_quote_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_symbol->data_quote_end
    if(v1_symbol->data_quote_end) {
    if(cJSON_AddStringToObject(item, "data_quote_end", v1_symbol->data_quote_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_symbol->data_orderbook_start
    if(v1_symbol->data_orderbook_start) {
    if(cJSON_AddStringToObject(item, "data_orderbook_start", v1_symbol->data_orderbook_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_symbol->data_orderbook_end
    if(v1_symbol->data_orderbook_end) {
    if(cJSON_AddStringToObject(item, "data_orderbook_end", v1_symbol->data_orderbook_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_symbol->data_trade_start
    if(v1_symbol->data_trade_start) {
    if(cJSON_AddStringToObject(item, "data_trade_start", v1_symbol->data_trade_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_symbol->data_trade_end
    if(v1_symbol->data_trade_end) {
    if(cJSON_AddStringToObject(item, "data_trade_end", v1_symbol->data_trade_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_symbol->index_id
    if(v1_symbol->index_id) {
    if(cJSON_AddStringToObject(item, "index_id", v1_symbol->index_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->index_display_name
    if(v1_symbol->index_display_name) {
    if(cJSON_AddStringToObject(item, "index_display_name", v1_symbol->index_display_name) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->index_display_description
    if(v1_symbol->index_display_description) {
    if(cJSON_AddStringToObject(item, "index_display_description", v1_symbol->index_display_description) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->volume_1hrs
    if(v1_symbol->volume_1hrs) {
    if(cJSON_AddNumberToObject(item, "volume_1hrs", v1_symbol->volume_1hrs) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_symbol->volume_1hrs_usd
    if(v1_symbol->volume_1hrs_usd) {
    if(cJSON_AddNumberToObject(item, "volume_1hrs_usd", v1_symbol->volume_1hrs_usd) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_symbol->volume_1day
    if(v1_symbol->volume_1day) {
    if(cJSON_AddNumberToObject(item, "volume_1day", v1_symbol->volume_1day) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_symbol->volume_1day_usd
    if(v1_symbol->volume_1day_usd) {
    if(cJSON_AddNumberToObject(item, "volume_1day_usd", v1_symbol->volume_1day_usd) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_symbol->volume_1mth
    if(v1_symbol->volume_1mth) {
    if(cJSON_AddNumberToObject(item, "volume_1mth", v1_symbol->volume_1mth) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_symbol->volume_1mth_usd
    if(v1_symbol->volume_1mth_usd) {
    if(cJSON_AddNumberToObject(item, "volume_1mth_usd", v1_symbol->volume_1mth_usd) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_symbol->price
    if(v1_symbol->price) {
    if(cJSON_AddNumberToObject(item, "price", v1_symbol->price) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_symbol->symbol_id_exchange
    if(v1_symbol->symbol_id_exchange) {
    if(cJSON_AddStringToObject(item, "symbol_id_exchange", v1_symbol->symbol_id_exchange) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->asset_id_base_exchange
    if(v1_symbol->asset_id_base_exchange) {
    if(cJSON_AddStringToObject(item, "asset_id_base_exchange", v1_symbol->asset_id_base_exchange) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->asset_id_quote_exchange
    if(v1_symbol->asset_id_quote_exchange) {
    if(cJSON_AddStringToObject(item, "asset_id_quote_exchange", v1_symbol->asset_id_quote_exchange) == NULL) {
    goto fail; //String
    }
    }


    // v1_symbol->price_precision
    if(v1_symbol->price_precision) {
    if(cJSON_AddNumberToObject(item, "price_precision", v1_symbol->price_precision) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_symbol->size_precision
    if(v1_symbol->size_precision) {
    if(cJSON_AddNumberToObject(item, "size_precision", v1_symbol->size_precision) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_symbol->raw_kvp
    if(v1_symbol->raw_kvp) {
    cJSON *raw_kvp = cJSON_AddObjectToObject(item, "raw_kvp");
    if(raw_kvp == NULL) {
        goto fail; //primitive map container
    }
    cJSON *localMapObject = raw_kvp;
    listEntry_t *raw_kvpListEntry;
    if (v1_symbol->raw_kvp) {
    list_ForEach(raw_kvpListEntry, v1_symbol->raw_kvp) {
        keyValuePair_t *localKeyValue = raw_kvpListEntry->data;
        if(cJSON_AddStringToObject(localMapObject, localKeyValue->key, localKeyValue->value) == NULL)
        {
            goto fail;
        }
    }
    }
    }


    // v1_symbol->volume_to_usd
    if(v1_symbol->volume_to_usd) {
    if(cJSON_AddNumberToObject(item, "volume_to_usd", v1_symbol->volume_to_usd) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

v1_symbol_t *v1_symbol_parseFromJSON(cJSON *v1_symbolJSON){

    v1_symbol_t *v1_symbol_local_var = NULL;

    // define the local map for v1_symbol->raw_kvp
    list_t *raw_kvpList = NULL;

    // v1_symbol->symbol_id
    cJSON *symbol_id = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "symbol_id");
    if (cJSON_IsNull(symbol_id)) {
        symbol_id = NULL;
    }
    if (symbol_id) { 
    if(!cJSON_IsString(symbol_id) && !cJSON_IsNull(symbol_id))
    {
    goto end; //String
    }
    }

    // v1_symbol->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "exchange_id");
    if (cJSON_IsNull(exchange_id)) {
        exchange_id = NULL;
    }
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id) && !cJSON_IsNull(exchange_id))
    {
    goto end; //String
    }
    }

    // v1_symbol->symbol_type
    cJSON *symbol_type = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "symbol_type");
    if (cJSON_IsNull(symbol_type)) {
        symbol_type = NULL;
    }
    if (symbol_type) { 
    if(!cJSON_IsString(symbol_type) && !cJSON_IsNull(symbol_type))
    {
    goto end; //String
    }
    }

    // v1_symbol->asset_id_base
    cJSON *asset_id_base = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "asset_id_base");
    if (cJSON_IsNull(asset_id_base)) {
        asset_id_base = NULL;
    }
    if (asset_id_base) { 
    if(!cJSON_IsString(asset_id_base) && !cJSON_IsNull(asset_id_base))
    {
    goto end; //String
    }
    }

    // v1_symbol->asset_id_quote
    cJSON *asset_id_quote = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "asset_id_quote");
    if (cJSON_IsNull(asset_id_quote)) {
        asset_id_quote = NULL;
    }
    if (asset_id_quote) { 
    if(!cJSON_IsString(asset_id_quote) && !cJSON_IsNull(asset_id_quote))
    {
    goto end; //String
    }
    }

    // v1_symbol->asset_id_unit
    cJSON *asset_id_unit = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "asset_id_unit");
    if (cJSON_IsNull(asset_id_unit)) {
        asset_id_unit = NULL;
    }
    if (asset_id_unit) { 
    if(!cJSON_IsString(asset_id_unit) && !cJSON_IsNull(asset_id_unit))
    {
    goto end; //String
    }
    }

    // v1_symbol->future_contract_unit
    cJSON *future_contract_unit = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "future_contract_unit");
    if (cJSON_IsNull(future_contract_unit)) {
        future_contract_unit = NULL;
    }
    if (future_contract_unit) { 
    if(!cJSON_IsNumber(future_contract_unit))
    {
    goto end; //Numeric
    }
    }

    // v1_symbol->future_contract_unit_asset
    cJSON *future_contract_unit_asset = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "future_contract_unit_asset");
    if (cJSON_IsNull(future_contract_unit_asset)) {
        future_contract_unit_asset = NULL;
    }
    if (future_contract_unit_asset) { 
    if(!cJSON_IsString(future_contract_unit_asset) && !cJSON_IsNull(future_contract_unit_asset))
    {
    goto end; //String
    }
    }

    // v1_symbol->future_delivery_time
    cJSON *future_delivery_time = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "future_delivery_time");
    if (cJSON_IsNull(future_delivery_time)) {
        future_delivery_time = NULL;
    }
    if (future_delivery_time) { 
    if(!cJSON_IsString(future_delivery_time) && !cJSON_IsNull(future_delivery_time))
    {
    goto end; //DateTime
    }
    }

    // v1_symbol->option_type_is_call
    cJSON *option_type_is_call = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "option_type_is_call");
    if (cJSON_IsNull(option_type_is_call)) {
        option_type_is_call = NULL;
    }
    if (option_type_is_call) { 
    if(!cJSON_IsBool(option_type_is_call))
    {
    goto end; //Bool
    }
    }

    // v1_symbol->option_strike_price
    cJSON *option_strike_price = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "option_strike_price");
    if (cJSON_IsNull(option_strike_price)) {
        option_strike_price = NULL;
    }
    if (option_strike_price) { 
    if(!cJSON_IsNumber(option_strike_price))
    {
    goto end; //Numeric
    }
    }

    // v1_symbol->option_contract_unit
    cJSON *option_contract_unit = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "option_contract_unit");
    if (cJSON_IsNull(option_contract_unit)) {
        option_contract_unit = NULL;
    }
    if (option_contract_unit) { 
    if(!cJSON_IsNumber(option_contract_unit))
    {
    goto end; //Numeric
    }
    }

    // v1_symbol->option_exercise_style
    cJSON *option_exercise_style = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "option_exercise_style");
    if (cJSON_IsNull(option_exercise_style)) {
        option_exercise_style = NULL;
    }
    if (option_exercise_style) { 
    if(!cJSON_IsString(option_exercise_style) && !cJSON_IsNull(option_exercise_style))
    {
    goto end; //String
    }
    }

    // v1_symbol->option_expiration_time
    cJSON *option_expiration_time = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "option_expiration_time");
    if (cJSON_IsNull(option_expiration_time)) {
        option_expiration_time = NULL;
    }
    if (option_expiration_time) { 
    if(!cJSON_IsString(option_expiration_time) && !cJSON_IsNull(option_expiration_time))
    {
    goto end; //DateTime
    }
    }

    // v1_symbol->contract_delivery_time
    cJSON *contract_delivery_time = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "contract_delivery_time");
    if (cJSON_IsNull(contract_delivery_time)) {
        contract_delivery_time = NULL;
    }
    if (contract_delivery_time) { 
    if(!cJSON_IsString(contract_delivery_time) && !cJSON_IsNull(contract_delivery_time))
    {
    goto end; //DateTime
    }
    }

    // v1_symbol->contract_unit
    cJSON *contract_unit = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "contract_unit");
    if (cJSON_IsNull(contract_unit)) {
        contract_unit = NULL;
    }
    if (contract_unit) { 
    if(!cJSON_IsNumber(contract_unit))
    {
    goto end; //Numeric
    }
    }

    // v1_symbol->contract_unit_asset
    cJSON *contract_unit_asset = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "contract_unit_asset");
    if (cJSON_IsNull(contract_unit_asset)) {
        contract_unit_asset = NULL;
    }
    if (contract_unit_asset) { 
    if(!cJSON_IsString(contract_unit_asset) && !cJSON_IsNull(contract_unit_asset))
    {
    goto end; //String
    }
    }

    // v1_symbol->contract_id
    cJSON *contract_id = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "contract_id");
    if (cJSON_IsNull(contract_id)) {
        contract_id = NULL;
    }
    if (contract_id) { 
    if(!cJSON_IsString(contract_id) && !cJSON_IsNull(contract_id))
    {
    goto end; //String
    }
    }

    // v1_symbol->contract_display_name
    cJSON *contract_display_name = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "contract_display_name");
    if (cJSON_IsNull(contract_display_name)) {
        contract_display_name = NULL;
    }
    if (contract_display_name) { 
    if(!cJSON_IsString(contract_display_name) && !cJSON_IsNull(contract_display_name))
    {
    goto end; //String
    }
    }

    // v1_symbol->contract_display_description
    cJSON *contract_display_description = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "contract_display_description");
    if (cJSON_IsNull(contract_display_description)) {
        contract_display_description = NULL;
    }
    if (contract_display_description) { 
    if(!cJSON_IsString(contract_display_description) && !cJSON_IsNull(contract_display_description))
    {
    goto end; //String
    }
    }

    // v1_symbol->data_start
    cJSON *data_start = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "data_start");
    if (cJSON_IsNull(data_start)) {
        data_start = NULL;
    }
    if (data_start) { 
    if(!cJSON_IsString(data_start) && !cJSON_IsNull(data_start))
    {
    goto end; //String
    }
    }

    // v1_symbol->data_end
    cJSON *data_end = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "data_end");
    if (cJSON_IsNull(data_end)) {
        data_end = NULL;
    }
    if (data_end) { 
    if(!cJSON_IsString(data_end) && !cJSON_IsNull(data_end))
    {
    goto end; //String
    }
    }

    // v1_symbol->data_quote_start
    cJSON *data_quote_start = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "data_quote_start");
    if (cJSON_IsNull(data_quote_start)) {
        data_quote_start = NULL;
    }
    if (data_quote_start) { 
    if(!cJSON_IsString(data_quote_start) && !cJSON_IsNull(data_quote_start))
    {
    goto end; //DateTime
    }
    }

    // v1_symbol->data_quote_end
    cJSON *data_quote_end = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "data_quote_end");
    if (cJSON_IsNull(data_quote_end)) {
        data_quote_end = NULL;
    }
    if (data_quote_end) { 
    if(!cJSON_IsString(data_quote_end) && !cJSON_IsNull(data_quote_end))
    {
    goto end; //DateTime
    }
    }

    // v1_symbol->data_orderbook_start
    cJSON *data_orderbook_start = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "data_orderbook_start");
    if (cJSON_IsNull(data_orderbook_start)) {
        data_orderbook_start = NULL;
    }
    if (data_orderbook_start) { 
    if(!cJSON_IsString(data_orderbook_start) && !cJSON_IsNull(data_orderbook_start))
    {
    goto end; //DateTime
    }
    }

    // v1_symbol->data_orderbook_end
    cJSON *data_orderbook_end = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "data_orderbook_end");
    if (cJSON_IsNull(data_orderbook_end)) {
        data_orderbook_end = NULL;
    }
    if (data_orderbook_end) { 
    if(!cJSON_IsString(data_orderbook_end) && !cJSON_IsNull(data_orderbook_end))
    {
    goto end; //DateTime
    }
    }

    // v1_symbol->data_trade_start
    cJSON *data_trade_start = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "data_trade_start");
    if (cJSON_IsNull(data_trade_start)) {
        data_trade_start = NULL;
    }
    if (data_trade_start) { 
    if(!cJSON_IsString(data_trade_start) && !cJSON_IsNull(data_trade_start))
    {
    goto end; //DateTime
    }
    }

    // v1_symbol->data_trade_end
    cJSON *data_trade_end = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "data_trade_end");
    if (cJSON_IsNull(data_trade_end)) {
        data_trade_end = NULL;
    }
    if (data_trade_end) { 
    if(!cJSON_IsString(data_trade_end) && !cJSON_IsNull(data_trade_end))
    {
    goto end; //DateTime
    }
    }

    // v1_symbol->index_id
    cJSON *index_id = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "index_id");
    if (cJSON_IsNull(index_id)) {
        index_id = NULL;
    }
    if (index_id) { 
    if(!cJSON_IsString(index_id) && !cJSON_IsNull(index_id))
    {
    goto end; //String
    }
    }

    // v1_symbol->index_display_name
    cJSON *index_display_name = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "index_display_name");
    if (cJSON_IsNull(index_display_name)) {
        index_display_name = NULL;
    }
    if (index_display_name) { 
    if(!cJSON_IsString(index_display_name) && !cJSON_IsNull(index_display_name))
    {
    goto end; //String
    }
    }

    // v1_symbol->index_display_description
    cJSON *index_display_description = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "index_display_description");
    if (cJSON_IsNull(index_display_description)) {
        index_display_description = NULL;
    }
    if (index_display_description) { 
    if(!cJSON_IsString(index_display_description) && !cJSON_IsNull(index_display_description))
    {
    goto end; //String
    }
    }

    // v1_symbol->volume_1hrs
    cJSON *volume_1hrs = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "volume_1hrs");
    if (cJSON_IsNull(volume_1hrs)) {
        volume_1hrs = NULL;
    }
    if (volume_1hrs) { 
    if(!cJSON_IsNumber(volume_1hrs))
    {
    goto end; //Numeric
    }
    }

    // v1_symbol->volume_1hrs_usd
    cJSON *volume_1hrs_usd = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "volume_1hrs_usd");
    if (cJSON_IsNull(volume_1hrs_usd)) {
        volume_1hrs_usd = NULL;
    }
    if (volume_1hrs_usd) { 
    if(!cJSON_IsNumber(volume_1hrs_usd))
    {
    goto end; //Numeric
    }
    }

    // v1_symbol->volume_1day
    cJSON *volume_1day = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "volume_1day");
    if (cJSON_IsNull(volume_1day)) {
        volume_1day = NULL;
    }
    if (volume_1day) { 
    if(!cJSON_IsNumber(volume_1day))
    {
    goto end; //Numeric
    }
    }

    // v1_symbol->volume_1day_usd
    cJSON *volume_1day_usd = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "volume_1day_usd");
    if (cJSON_IsNull(volume_1day_usd)) {
        volume_1day_usd = NULL;
    }
    if (volume_1day_usd) { 
    if(!cJSON_IsNumber(volume_1day_usd))
    {
    goto end; //Numeric
    }
    }

    // v1_symbol->volume_1mth
    cJSON *volume_1mth = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "volume_1mth");
    if (cJSON_IsNull(volume_1mth)) {
        volume_1mth = NULL;
    }
    if (volume_1mth) { 
    if(!cJSON_IsNumber(volume_1mth))
    {
    goto end; //Numeric
    }
    }

    // v1_symbol->volume_1mth_usd
    cJSON *volume_1mth_usd = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "volume_1mth_usd");
    if (cJSON_IsNull(volume_1mth_usd)) {
        volume_1mth_usd = NULL;
    }
    if (volume_1mth_usd) { 
    if(!cJSON_IsNumber(volume_1mth_usd))
    {
    goto end; //Numeric
    }
    }

    // v1_symbol->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "price");
    if (cJSON_IsNull(price)) {
        price = NULL;
    }
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // v1_symbol->symbol_id_exchange
    cJSON *symbol_id_exchange = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "symbol_id_exchange");
    if (cJSON_IsNull(symbol_id_exchange)) {
        symbol_id_exchange = NULL;
    }
    if (symbol_id_exchange) { 
    if(!cJSON_IsString(symbol_id_exchange) && !cJSON_IsNull(symbol_id_exchange))
    {
    goto end; //String
    }
    }

    // v1_symbol->asset_id_base_exchange
    cJSON *asset_id_base_exchange = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "asset_id_base_exchange");
    if (cJSON_IsNull(asset_id_base_exchange)) {
        asset_id_base_exchange = NULL;
    }
    if (asset_id_base_exchange) { 
    if(!cJSON_IsString(asset_id_base_exchange) && !cJSON_IsNull(asset_id_base_exchange))
    {
    goto end; //String
    }
    }

    // v1_symbol->asset_id_quote_exchange
    cJSON *asset_id_quote_exchange = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "asset_id_quote_exchange");
    if (cJSON_IsNull(asset_id_quote_exchange)) {
        asset_id_quote_exchange = NULL;
    }
    if (asset_id_quote_exchange) { 
    if(!cJSON_IsString(asset_id_quote_exchange) && !cJSON_IsNull(asset_id_quote_exchange))
    {
    goto end; //String
    }
    }

    // v1_symbol->price_precision
    cJSON *price_precision = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "price_precision");
    if (cJSON_IsNull(price_precision)) {
        price_precision = NULL;
    }
    if (price_precision) { 
    if(!cJSON_IsNumber(price_precision))
    {
    goto end; //Numeric
    }
    }

    // v1_symbol->size_precision
    cJSON *size_precision = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "size_precision");
    if (cJSON_IsNull(size_precision)) {
        size_precision = NULL;
    }
    if (size_precision) { 
    if(!cJSON_IsNumber(size_precision))
    {
    goto end; //Numeric
    }
    }

    // v1_symbol->raw_kvp
    cJSON *raw_kvp = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "raw_kvp");
    if (cJSON_IsNull(raw_kvp)) {
        raw_kvp = NULL;
    }
    if (raw_kvp) { 
    cJSON *raw_kvp_local_map = NULL;
    if(!cJSON_IsObject(raw_kvp) && !cJSON_IsNull(raw_kvp))
    {
        goto end;//primitive map container
    }
    if(cJSON_IsObject(raw_kvp))
    {
        raw_kvpList = list_createList();
        keyValuePair_t *localMapKeyPair;
        cJSON_ArrayForEach(raw_kvp_local_map, raw_kvp)
        {
            cJSON *localMapObject = raw_kvp_local_map;
            if(!cJSON_IsString(localMapObject))
            {
                goto end;
            }
            localMapKeyPair = keyValuePair_create(strdup(localMapObject->string),strdup(localMapObject->valuestring));
            list_addElement(raw_kvpList , localMapKeyPair);
        }
    }
    }

    // v1_symbol->volume_to_usd
    cJSON *volume_to_usd = cJSON_GetObjectItemCaseSensitive(v1_symbolJSON, "volume_to_usd");
    if (cJSON_IsNull(volume_to_usd)) {
        volume_to_usd = NULL;
    }
    if (volume_to_usd) { 
    if(!cJSON_IsNumber(volume_to_usd))
    {
    goto end; //Numeric
    }
    }


    v1_symbol_local_var = v1_symbol_create_internal (
        symbol_id && !cJSON_IsNull(symbol_id) ? strdup(symbol_id->valuestring) : NULL,
        exchange_id && !cJSON_IsNull(exchange_id) ? strdup(exchange_id->valuestring) : NULL,
        symbol_type && !cJSON_IsNull(symbol_type) ? strdup(symbol_type->valuestring) : NULL,
        asset_id_base && !cJSON_IsNull(asset_id_base) ? strdup(asset_id_base->valuestring) : NULL,
        asset_id_quote && !cJSON_IsNull(asset_id_quote) ? strdup(asset_id_quote->valuestring) : NULL,
        asset_id_unit && !cJSON_IsNull(asset_id_unit) ? strdup(asset_id_unit->valuestring) : NULL,
        future_contract_unit ? future_contract_unit->valuedouble : 0,
        future_contract_unit_asset && !cJSON_IsNull(future_contract_unit_asset) ? strdup(future_contract_unit_asset->valuestring) : NULL,
        future_delivery_time && !cJSON_IsNull(future_delivery_time) ? strdup(future_delivery_time->valuestring) : NULL,
        option_type_is_call ? option_type_is_call->valueint : 0,
        option_strike_price ? option_strike_price->valuedouble : 0,
        option_contract_unit ? option_contract_unit->valuedouble : 0,
        option_exercise_style && !cJSON_IsNull(option_exercise_style) ? strdup(option_exercise_style->valuestring) : NULL,
        option_expiration_time && !cJSON_IsNull(option_expiration_time) ? strdup(option_expiration_time->valuestring) : NULL,
        contract_delivery_time && !cJSON_IsNull(contract_delivery_time) ? strdup(contract_delivery_time->valuestring) : NULL,
        contract_unit ? contract_unit->valuedouble : 0,
        contract_unit_asset && !cJSON_IsNull(contract_unit_asset) ? strdup(contract_unit_asset->valuestring) : NULL,
        contract_id && !cJSON_IsNull(contract_id) ? strdup(contract_id->valuestring) : NULL,
        contract_display_name && !cJSON_IsNull(contract_display_name) ? strdup(contract_display_name->valuestring) : NULL,
        contract_display_description && !cJSON_IsNull(contract_display_description) ? strdup(contract_display_description->valuestring) : NULL,
        data_start && !cJSON_IsNull(data_start) ? strdup(data_start->valuestring) : NULL,
        data_end && !cJSON_IsNull(data_end) ? strdup(data_end->valuestring) : NULL,
        data_quote_start && !cJSON_IsNull(data_quote_start) ? strdup(data_quote_start->valuestring) : NULL,
        data_quote_end && !cJSON_IsNull(data_quote_end) ? strdup(data_quote_end->valuestring) : NULL,
        data_orderbook_start && !cJSON_IsNull(data_orderbook_start) ? strdup(data_orderbook_start->valuestring) : NULL,
        data_orderbook_end && !cJSON_IsNull(data_orderbook_end) ? strdup(data_orderbook_end->valuestring) : NULL,
        data_trade_start && !cJSON_IsNull(data_trade_start) ? strdup(data_trade_start->valuestring) : NULL,
        data_trade_end && !cJSON_IsNull(data_trade_end) ? strdup(data_trade_end->valuestring) : NULL,
        index_id && !cJSON_IsNull(index_id) ? strdup(index_id->valuestring) : NULL,
        index_display_name && !cJSON_IsNull(index_display_name) ? strdup(index_display_name->valuestring) : NULL,
        index_display_description && !cJSON_IsNull(index_display_description) ? strdup(index_display_description->valuestring) : NULL,
        volume_1hrs ? volume_1hrs->valuedouble : 0,
        volume_1hrs_usd ? volume_1hrs_usd->valuedouble : 0,
        volume_1day ? volume_1day->valuedouble : 0,
        volume_1day_usd ? volume_1day_usd->valuedouble : 0,
        volume_1mth ? volume_1mth->valuedouble : 0,
        volume_1mth_usd ? volume_1mth_usd->valuedouble : 0,
        price ? price->valuedouble : 0,
        symbol_id_exchange && !cJSON_IsNull(symbol_id_exchange) ? strdup(symbol_id_exchange->valuestring) : NULL,
        asset_id_base_exchange && !cJSON_IsNull(asset_id_base_exchange) ? strdup(asset_id_base_exchange->valuestring) : NULL,
        asset_id_quote_exchange && !cJSON_IsNull(asset_id_quote_exchange) ? strdup(asset_id_quote_exchange->valuestring) : NULL,
        price_precision ? price_precision->valuedouble : 0,
        size_precision ? size_precision->valuedouble : 0,
        raw_kvp ? raw_kvpList : NULL,
        volume_to_usd ? volume_to_usd->valuedouble : 0
        );

    return v1_symbol_local_var;
end:
    if (raw_kvpList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, raw_kvpList) {
            keyValuePair_t *localKeyValue = listEntry->data;
            free(localKeyValue->key);
            localKeyValue->key = NULL;
            free(localKeyValue->value);
            localKeyValue->value = NULL;
            keyValuePair_free(localKeyValue);
            localKeyValue = NULL;
        }
        list_freeList(raw_kvpList);
        raw_kvpList = NULL;
    }
    return NULL;

}
