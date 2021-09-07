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


// Enum LASTUPDATEDBY for balance_data

typedef enum  { oeml___rest_api_balance_data_LASTUPDATEDBY_NULL = 0, oeml___rest_api_balance_data_LASTUPDATEDBY_INITIALIZATION, oeml___rest_api_balance_data_LASTUPDATEDBY_BALANCE_MANAGER, oeml___rest_api_balance_data_LASTUPDATEDBY_EXCHANGE } oeml___rest_api_balance_data_LASTUPDATEDBY_e;

char* balance_data_last_updated_by_ToString(oeml___rest_api_balance_data_LASTUPDATEDBY_e last_updated_by);

oeml___rest_api_balance_data_LASTUPDATEDBY_e balance_data_last_updated_by_FromString(char* last_updated_by);



typedef struct balance_data_t {
    char *asset_id_exchange; // string
    char *asset_id_coinapi; // string
    double balance; //numeric
    double available; //numeric
    double locked; //numeric
    oeml___rest_api_balance_data_LASTUPDATEDBY_e last_updated_by; //enum
    double rate_usd; //numeric
    double traded; //numeric

} balance_data_t;

balance_data_t *balance_data_create(
    char *asset_id_exchange,
    char *asset_id_coinapi,
    double balance,
    double available,
    double locked,
    oeml___rest_api_balance_data_LASTUPDATEDBY_e last_updated_by,
    double rate_usd,
    double traded
);

void balance_data_free(balance_data_t *balance_data);

balance_data_t *balance_data_parseFromJSON(cJSON *balance_dataJSON);

cJSON *balance_data_convertToJSON(balance_data_t *balance_data);

#endif /* _balance_data_H_ */

