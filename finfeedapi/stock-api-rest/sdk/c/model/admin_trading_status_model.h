/*
 * admin_trading_status_model.h
 *
 * Represents the response DTO for trading status information
 */

#ifndef _admin_trading_status_model_H_
#define _admin_trading_status_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct admin_trading_status_model_t admin_trading_status_model_t;




typedef struct admin_trading_status_model_t {
    char *symbol; // string
    long timestamp_nanos; //numeric
    char *timestamp; //date time
    int is_trading_live; //boolean
    int is_trading_halted; //boolean
    int is_trading_in_order_acceptance_period; //boolean
    int is_trading_paused; //boolean
    int is_reason_halt_news_pending; //boolean
    int is_reason_ipo_not_yet_trading; //boolean
    int is_reason_ipo_deferred; //boolean
    int is_reason_halt_news_dissemination; //boolean
    int is_reason_ipo_order_acceptance_period; //boolean
    int is_reason_ipo_pre_launch_period; //boolean
    int is_reason_market_wide_circuit_breaker_level1; //boolean
    int is_reason_market_wide_circuit_breaker_level2; //boolean
    int is_reason_market_wide_circuit_breaker_level3; //boolean
    int is_reason_not_applicable; //boolean
    int is_reason_not_available; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} admin_trading_status_model_t;

__attribute__((deprecated)) admin_trading_status_model_t *admin_trading_status_model_create(
    char *symbol,
    long timestamp_nanos,
    char *timestamp,
    int is_trading_live,
    int is_trading_halted,
    int is_trading_in_order_acceptance_period,
    int is_trading_paused,
    int is_reason_halt_news_pending,
    int is_reason_ipo_not_yet_trading,
    int is_reason_ipo_deferred,
    int is_reason_halt_news_dissemination,
    int is_reason_ipo_order_acceptance_period,
    int is_reason_ipo_pre_launch_period,
    int is_reason_market_wide_circuit_breaker_level1,
    int is_reason_market_wide_circuit_breaker_level2,
    int is_reason_market_wide_circuit_breaker_level3,
    int is_reason_not_applicable,
    int is_reason_not_available
);

void admin_trading_status_model_free(admin_trading_status_model_t *admin_trading_status_model);

admin_trading_status_model_t *admin_trading_status_model_parseFromJSON(cJSON *admin_trading_status_modelJSON);

cJSON *admin_trading_status_model_convertToJSON(admin_trading_status_model_t *admin_trading_status_model);

#endif /* _admin_trading_status_model_H_ */

