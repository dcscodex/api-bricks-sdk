#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_exchange.h"



static v1_exchange_t *v1_exchange_create_internal(
    char *exchange_id,
    char *website,
    char *name,
    char *data_start,
    char *data_end,
    char *data_quote_start,
    char *data_quote_end,
    char *data_orderbook_start,
    char *data_orderbook_end,
    char *data_trade_start,
    char *data_trade_end,
    long data_trade_count,
    long data_symbols_count,
    double volume_1hrs_usd,
    double volume_1day_usd,
    double volume_1mth_usd,
    list_t *metric_id,
    list_t *icons,
    double rank,
    char *integration_status
    ) {
    v1_exchange_t *v1_exchange_local_var = malloc(sizeof(v1_exchange_t));
    if (!v1_exchange_local_var) {
        return NULL;
    }
    v1_exchange_local_var->exchange_id = exchange_id;
    v1_exchange_local_var->website = website;
    v1_exchange_local_var->name = name;
    v1_exchange_local_var->data_start = data_start;
    v1_exchange_local_var->data_end = data_end;
    v1_exchange_local_var->data_quote_start = data_quote_start;
    v1_exchange_local_var->data_quote_end = data_quote_end;
    v1_exchange_local_var->data_orderbook_start = data_orderbook_start;
    v1_exchange_local_var->data_orderbook_end = data_orderbook_end;
    v1_exchange_local_var->data_trade_start = data_trade_start;
    v1_exchange_local_var->data_trade_end = data_trade_end;
    v1_exchange_local_var->data_trade_count = data_trade_count;
    v1_exchange_local_var->data_symbols_count = data_symbols_count;
    v1_exchange_local_var->volume_1hrs_usd = volume_1hrs_usd;
    v1_exchange_local_var->volume_1day_usd = volume_1day_usd;
    v1_exchange_local_var->volume_1mth_usd = volume_1mth_usd;
    v1_exchange_local_var->metric_id = metric_id;
    v1_exchange_local_var->icons = icons;
    v1_exchange_local_var->rank = rank;
    v1_exchange_local_var->integration_status = integration_status;

    v1_exchange_local_var->_library_owned = 1;
    return v1_exchange_local_var;
}

__attribute__((deprecated)) v1_exchange_t *v1_exchange_create(
    char *exchange_id,
    char *website,
    char *name,
    char *data_start,
    char *data_end,
    char *data_quote_start,
    char *data_quote_end,
    char *data_orderbook_start,
    char *data_orderbook_end,
    char *data_trade_start,
    char *data_trade_end,
    long data_trade_count,
    long data_symbols_count,
    double volume_1hrs_usd,
    double volume_1day_usd,
    double volume_1mth_usd,
    list_t *metric_id,
    list_t *icons,
    double rank,
    char *integration_status
    ) {
    return v1_exchange_create_internal (
        exchange_id,
        website,
        name,
        data_start,
        data_end,
        data_quote_start,
        data_quote_end,
        data_orderbook_start,
        data_orderbook_end,
        data_trade_start,
        data_trade_end,
        data_trade_count,
        data_symbols_count,
        volume_1hrs_usd,
        volume_1day_usd,
        volume_1mth_usd,
        metric_id,
        icons,
        rank,
        integration_status
        );
}

void v1_exchange_free(v1_exchange_t *v1_exchange) {
    if(NULL == v1_exchange){
        return ;
    }
    if(v1_exchange->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_exchange_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_exchange->exchange_id) {
        free(v1_exchange->exchange_id);
        v1_exchange->exchange_id = NULL;
    }
    if (v1_exchange->website) {
        free(v1_exchange->website);
        v1_exchange->website = NULL;
    }
    if (v1_exchange->name) {
        free(v1_exchange->name);
        v1_exchange->name = NULL;
    }
    if (v1_exchange->data_start) {
        free(v1_exchange->data_start);
        v1_exchange->data_start = NULL;
    }
    if (v1_exchange->data_end) {
        free(v1_exchange->data_end);
        v1_exchange->data_end = NULL;
    }
    if (v1_exchange->data_quote_start) {
        free(v1_exchange->data_quote_start);
        v1_exchange->data_quote_start = NULL;
    }
    if (v1_exchange->data_quote_end) {
        free(v1_exchange->data_quote_end);
        v1_exchange->data_quote_end = NULL;
    }
    if (v1_exchange->data_orderbook_start) {
        free(v1_exchange->data_orderbook_start);
        v1_exchange->data_orderbook_start = NULL;
    }
    if (v1_exchange->data_orderbook_end) {
        free(v1_exchange->data_orderbook_end);
        v1_exchange->data_orderbook_end = NULL;
    }
    if (v1_exchange->data_trade_start) {
        free(v1_exchange->data_trade_start);
        v1_exchange->data_trade_start = NULL;
    }
    if (v1_exchange->data_trade_end) {
        free(v1_exchange->data_trade_end);
        v1_exchange->data_trade_end = NULL;
    }
    if (v1_exchange->metric_id) {
        list_ForEach(listEntry, v1_exchange->metric_id) {
            free(listEntry->data);
        }
        list_freeList(v1_exchange->metric_id);
        v1_exchange->metric_id = NULL;
    }
    if (v1_exchange->icons) {
        list_ForEach(listEntry, v1_exchange->icons) {
            v1_icon_free(listEntry->data);
        }
        list_freeList(v1_exchange->icons);
        v1_exchange->icons = NULL;
    }
    if (v1_exchange->integration_status) {
        free(v1_exchange->integration_status);
        v1_exchange->integration_status = NULL;
    }
    free(v1_exchange);
}

cJSON *v1_exchange_convertToJSON(v1_exchange_t *v1_exchange) {
    cJSON *item = cJSON_CreateObject();

    // v1_exchange->exchange_id
    if(v1_exchange->exchange_id) {
    if(cJSON_AddStringToObject(item, "exchange_id", v1_exchange->exchange_id) == NULL) {
    goto fail; //String
    }
    }


    // v1_exchange->website
    if(v1_exchange->website) {
    if(cJSON_AddStringToObject(item, "website", v1_exchange->website) == NULL) {
    goto fail; //String
    }
    }


    // v1_exchange->name
    if(v1_exchange->name) {
    if(cJSON_AddStringToObject(item, "name", v1_exchange->name) == NULL) {
    goto fail; //String
    }
    }


    // v1_exchange->data_start
    if(v1_exchange->data_start) {
    if(cJSON_AddStringToObject(item, "data_start", v1_exchange->data_start) == NULL) {
    goto fail; //String
    }
    }


    // v1_exchange->data_end
    if(v1_exchange->data_end) {
    if(cJSON_AddStringToObject(item, "data_end", v1_exchange->data_end) == NULL) {
    goto fail; //String
    }
    }


    // v1_exchange->data_quote_start
    if(v1_exchange->data_quote_start) {
    if(cJSON_AddStringToObject(item, "data_quote_start", v1_exchange->data_quote_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_exchange->data_quote_end
    if(v1_exchange->data_quote_end) {
    if(cJSON_AddStringToObject(item, "data_quote_end", v1_exchange->data_quote_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_exchange->data_orderbook_start
    if(v1_exchange->data_orderbook_start) {
    if(cJSON_AddStringToObject(item, "data_orderbook_start", v1_exchange->data_orderbook_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_exchange->data_orderbook_end
    if(v1_exchange->data_orderbook_end) {
    if(cJSON_AddStringToObject(item, "data_orderbook_end", v1_exchange->data_orderbook_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_exchange->data_trade_start
    if(v1_exchange->data_trade_start) {
    if(cJSON_AddStringToObject(item, "data_trade_start", v1_exchange->data_trade_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_exchange->data_trade_end
    if(v1_exchange->data_trade_end) {
    if(cJSON_AddStringToObject(item, "data_trade_end", v1_exchange->data_trade_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // v1_exchange->data_trade_count
    if(v1_exchange->data_trade_count) {
    if(cJSON_AddNumberToObject(item, "data_trade_count", v1_exchange->data_trade_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_exchange->data_symbols_count
    if(v1_exchange->data_symbols_count) {
    if(cJSON_AddNumberToObject(item, "data_symbols_count", v1_exchange->data_symbols_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_exchange->volume_1hrs_usd
    if(v1_exchange->volume_1hrs_usd) {
    if(cJSON_AddNumberToObject(item, "volume_1hrs_usd", v1_exchange->volume_1hrs_usd) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_exchange->volume_1day_usd
    if(v1_exchange->volume_1day_usd) {
    if(cJSON_AddNumberToObject(item, "volume_1day_usd", v1_exchange->volume_1day_usd) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_exchange->volume_1mth_usd
    if(v1_exchange->volume_1mth_usd) {
    if(cJSON_AddNumberToObject(item, "volume_1mth_usd", v1_exchange->volume_1mth_usd) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_exchange->metric_id
    if(v1_exchange->metric_id) {
    cJSON *metric_id = cJSON_AddArrayToObject(item, "metric_id");
    if(metric_id == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *metric_idListEntry;
    list_ForEach(metric_idListEntry, v1_exchange->metric_id) {
    if(cJSON_AddStringToObject(metric_id, "", metric_idListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // v1_exchange->icons
    if(v1_exchange->icons) {
    cJSON *icons = cJSON_AddArrayToObject(item, "icons");
    if(icons == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *iconsListEntry;
    if (v1_exchange->icons) {
    list_ForEach(iconsListEntry, v1_exchange->icons) {
    cJSON *itemLocal = v1_icon_convertToJSON(iconsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(icons, itemLocal);
    }
    }
    }


    // v1_exchange->rank
    if(v1_exchange->rank) {
    if(cJSON_AddNumberToObject(item, "rank", v1_exchange->rank) == NULL) {
    goto fail; //Numeric
    }
    }


    // v1_exchange->integration_status
    if(v1_exchange->integration_status) {
    if(cJSON_AddStringToObject(item, "integration_status", v1_exchange->integration_status) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

v1_exchange_t *v1_exchange_parseFromJSON(cJSON *v1_exchangeJSON){

    v1_exchange_t *v1_exchange_local_var = NULL;

    // define the local list for v1_exchange->metric_id
    list_t *metric_idList = NULL;

    // define the local list for v1_exchange->icons
    list_t *iconsList = NULL;

    // v1_exchange->exchange_id
    cJSON *exchange_id = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "exchange_id");
    if (cJSON_IsNull(exchange_id)) {
        exchange_id = NULL;
    }
    if (exchange_id) { 
    if(!cJSON_IsString(exchange_id) && !cJSON_IsNull(exchange_id))
    {
    goto end; //String
    }
    }

    // v1_exchange->website
    cJSON *website = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "website");
    if (cJSON_IsNull(website)) {
        website = NULL;
    }
    if (website) { 
    if(!cJSON_IsString(website) && !cJSON_IsNull(website))
    {
    goto end; //String
    }
    }

    // v1_exchange->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // v1_exchange->data_start
    cJSON *data_start = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "data_start");
    if (cJSON_IsNull(data_start)) {
        data_start = NULL;
    }
    if (data_start) { 
    if(!cJSON_IsString(data_start) && !cJSON_IsNull(data_start))
    {
    goto end; //String
    }
    }

    // v1_exchange->data_end
    cJSON *data_end = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "data_end");
    if (cJSON_IsNull(data_end)) {
        data_end = NULL;
    }
    if (data_end) { 
    if(!cJSON_IsString(data_end) && !cJSON_IsNull(data_end))
    {
    goto end; //String
    }
    }

    // v1_exchange->data_quote_start
    cJSON *data_quote_start = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "data_quote_start");
    if (cJSON_IsNull(data_quote_start)) {
        data_quote_start = NULL;
    }
    if (data_quote_start) { 
    if(!cJSON_IsString(data_quote_start) && !cJSON_IsNull(data_quote_start))
    {
    goto end; //DateTime
    }
    }

    // v1_exchange->data_quote_end
    cJSON *data_quote_end = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "data_quote_end");
    if (cJSON_IsNull(data_quote_end)) {
        data_quote_end = NULL;
    }
    if (data_quote_end) { 
    if(!cJSON_IsString(data_quote_end) && !cJSON_IsNull(data_quote_end))
    {
    goto end; //DateTime
    }
    }

    // v1_exchange->data_orderbook_start
    cJSON *data_orderbook_start = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "data_orderbook_start");
    if (cJSON_IsNull(data_orderbook_start)) {
        data_orderbook_start = NULL;
    }
    if (data_orderbook_start) { 
    if(!cJSON_IsString(data_orderbook_start) && !cJSON_IsNull(data_orderbook_start))
    {
    goto end; //DateTime
    }
    }

    // v1_exchange->data_orderbook_end
    cJSON *data_orderbook_end = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "data_orderbook_end");
    if (cJSON_IsNull(data_orderbook_end)) {
        data_orderbook_end = NULL;
    }
    if (data_orderbook_end) { 
    if(!cJSON_IsString(data_orderbook_end) && !cJSON_IsNull(data_orderbook_end))
    {
    goto end; //DateTime
    }
    }

    // v1_exchange->data_trade_start
    cJSON *data_trade_start = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "data_trade_start");
    if (cJSON_IsNull(data_trade_start)) {
        data_trade_start = NULL;
    }
    if (data_trade_start) { 
    if(!cJSON_IsString(data_trade_start) && !cJSON_IsNull(data_trade_start))
    {
    goto end; //DateTime
    }
    }

    // v1_exchange->data_trade_end
    cJSON *data_trade_end = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "data_trade_end");
    if (cJSON_IsNull(data_trade_end)) {
        data_trade_end = NULL;
    }
    if (data_trade_end) { 
    if(!cJSON_IsString(data_trade_end) && !cJSON_IsNull(data_trade_end))
    {
    goto end; //DateTime
    }
    }

    // v1_exchange->data_trade_count
    cJSON *data_trade_count = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "data_trade_count");
    if (cJSON_IsNull(data_trade_count)) {
        data_trade_count = NULL;
    }
    if (data_trade_count) { 
    if(!cJSON_IsNumber(data_trade_count))
    {
    goto end; //Numeric
    }
    }

    // v1_exchange->data_symbols_count
    cJSON *data_symbols_count = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "data_symbols_count");
    if (cJSON_IsNull(data_symbols_count)) {
        data_symbols_count = NULL;
    }
    if (data_symbols_count) { 
    if(!cJSON_IsNumber(data_symbols_count))
    {
    goto end; //Numeric
    }
    }

    // v1_exchange->volume_1hrs_usd
    cJSON *volume_1hrs_usd = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "volume_1hrs_usd");
    if (cJSON_IsNull(volume_1hrs_usd)) {
        volume_1hrs_usd = NULL;
    }
    if (volume_1hrs_usd) { 
    if(!cJSON_IsNumber(volume_1hrs_usd))
    {
    goto end; //Numeric
    }
    }

    // v1_exchange->volume_1day_usd
    cJSON *volume_1day_usd = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "volume_1day_usd");
    if (cJSON_IsNull(volume_1day_usd)) {
        volume_1day_usd = NULL;
    }
    if (volume_1day_usd) { 
    if(!cJSON_IsNumber(volume_1day_usd))
    {
    goto end; //Numeric
    }
    }

    // v1_exchange->volume_1mth_usd
    cJSON *volume_1mth_usd = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "volume_1mth_usd");
    if (cJSON_IsNull(volume_1mth_usd)) {
        volume_1mth_usd = NULL;
    }
    if (volume_1mth_usd) { 
    if(!cJSON_IsNumber(volume_1mth_usd))
    {
    goto end; //Numeric
    }
    }

    // v1_exchange->metric_id
    cJSON *metric_id = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "metric_id");
    if (cJSON_IsNull(metric_id)) {
        metric_id = NULL;
    }
    if (metric_id) { 
    cJSON *metric_id_local = NULL;
    if(!cJSON_IsArray(metric_id)) {
        goto end;//primitive container
    }
    metric_idList = list_createList();

    cJSON_ArrayForEach(metric_id_local, metric_id)
    {
        if(!cJSON_IsString(metric_id_local))
        {
            goto end;
        }
        list_addElement(metric_idList , strdup(metric_id_local->valuestring));
    }
    }

    // v1_exchange->icons
    cJSON *icons = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "icons");
    if (cJSON_IsNull(icons)) {
        icons = NULL;
    }
    if (icons) { 
    cJSON *icons_local_nonprimitive = NULL;
    if(!cJSON_IsArray(icons)){
        goto end; //nonprimitive container
    }

    iconsList = list_createList();

    cJSON_ArrayForEach(icons_local_nonprimitive,icons )
    {
        if(!cJSON_IsObject(icons_local_nonprimitive)){
            goto end;
        }
        v1_icon_t *iconsItem = v1_icon_parseFromJSON(icons_local_nonprimitive);

        list_addElement(iconsList, iconsItem);
    }
    }

    // v1_exchange->rank
    cJSON *rank = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "rank");
    if (cJSON_IsNull(rank)) {
        rank = NULL;
    }
    if (rank) { 
    if(!cJSON_IsNumber(rank))
    {
    goto end; //Numeric
    }
    }

    // v1_exchange->integration_status
    cJSON *integration_status = cJSON_GetObjectItemCaseSensitive(v1_exchangeJSON, "integration_status");
    if (cJSON_IsNull(integration_status)) {
        integration_status = NULL;
    }
    if (integration_status) { 
    if(!cJSON_IsString(integration_status) && !cJSON_IsNull(integration_status))
    {
    goto end; //String
    }
    }


    v1_exchange_local_var = v1_exchange_create_internal (
        exchange_id && !cJSON_IsNull(exchange_id) ? strdup(exchange_id->valuestring) : NULL,
        website && !cJSON_IsNull(website) ? strdup(website->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        data_start && !cJSON_IsNull(data_start) ? strdup(data_start->valuestring) : NULL,
        data_end && !cJSON_IsNull(data_end) ? strdup(data_end->valuestring) : NULL,
        data_quote_start && !cJSON_IsNull(data_quote_start) ? strdup(data_quote_start->valuestring) : NULL,
        data_quote_end && !cJSON_IsNull(data_quote_end) ? strdup(data_quote_end->valuestring) : NULL,
        data_orderbook_start && !cJSON_IsNull(data_orderbook_start) ? strdup(data_orderbook_start->valuestring) : NULL,
        data_orderbook_end && !cJSON_IsNull(data_orderbook_end) ? strdup(data_orderbook_end->valuestring) : NULL,
        data_trade_start && !cJSON_IsNull(data_trade_start) ? strdup(data_trade_start->valuestring) : NULL,
        data_trade_end && !cJSON_IsNull(data_trade_end) ? strdup(data_trade_end->valuestring) : NULL,
        data_trade_count ? data_trade_count->valuedouble : 0,
        data_symbols_count ? data_symbols_count->valuedouble : 0,
        volume_1hrs_usd ? volume_1hrs_usd->valuedouble : 0,
        volume_1day_usd ? volume_1day_usd->valuedouble : 0,
        volume_1mth_usd ? volume_1mth_usd->valuedouble : 0,
        metric_id ? metric_idList : NULL,
        icons ? iconsList : NULL,
        rank ? rank->valuedouble : 0,
        integration_status && !cJSON_IsNull(integration_status) ? strdup(integration_status->valuestring) : NULL
        );

    return v1_exchange_local_var;
end:
    if (metric_idList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, metric_idList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(metric_idList);
        metric_idList = NULL;
    }
    if (iconsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, iconsList) {
            v1_icon_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(iconsList);
        iconsList = NULL;
    }
    return NULL;

}
