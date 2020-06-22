/*
 * balance_data.h
 *
 * 
 */

#ifndef _balance_data_H_
#define _balance_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct balance_data_t balance_data_t;


// Enum UPDATEORIGIN for balance_data

typedef enum  { oms___rest_api_____balance_data_UPDATEORIGIN_NULL = 0, oms___rest_api_____balance_data_UPDATEORIGIN_INITIALIZATION, oms___rest_api_____balance_data_UPDATEORIGIN_BALANCE_MANAGER, oms___rest_api_____balance_data_UPDATEORIGIN_EXCHANGE } oms___rest_api_____balance_data_UPDATEORIGIN_e;

char* balance_data_update_origin_ToString(oms___rest_api_____balance_data_UPDATEORIGIN_e update_origin);

oms___rest_api_____balance_data_UPDATEORIGIN_e balance_data_update_origin_FromString(char* update_origin);



typedef struct balance_data_t {
    char *id; // string
    char *symbol_exchange; // string
    char *symbol_coinapi; // string
    float balance; //numeric
    float available; //numeric
    float locked; //numeric
    oms___rest_api_____balance_data_UPDATEORIGIN_e update_origin; //enum

} balance_data_t;

balance_data_t *balance_data_create(
    char *id,
    char *symbol_exchange,
    char *symbol_coinapi,
    float balance,
    float available,
    float locked,
    oms___rest_api_____balance_data_UPDATEORIGIN_e update_origin
);

void balance_data_free(balance_data_t *balance_data);

balance_data_t *balance_data_parseFromJSON(cJSON *balance_dataJSON);

cJSON *balance_data_convertToJSON(balance_data_t *balance_data);

#endif /* _balance_data_H_ */

