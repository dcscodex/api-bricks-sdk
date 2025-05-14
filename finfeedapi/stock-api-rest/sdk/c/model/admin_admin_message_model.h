/*
 * admin_admin_message_model.h
 *
 * Represents the response DTO for IEX admin information, combining all symbol-based admin message types
 */

#ifndef _admin_admin_message_model_H_
#define _admin_admin_message_model_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct admin_admin_message_model_t admin_admin_message_model_t;

#include "admin_auction_information_model.h"
#include "admin_official_price_model.h"
#include "admin_operational_halt_status_model.h"
#include "admin_retail_liquidity_indicator_model.h"
#include "admin_security_directory_model.h"
#include "admin_security_event_model.h"
#include "admin_short_sale_price_test_status_model.h"
#include "admin_system_event_model.h"
#include "admin_trading_status_model.h"



typedef struct admin_admin_message_model_t {
    struct admin_trading_status_model_t *trading_status; //model
    struct admin_official_price_model_t *official_price; //model
    struct admin_security_event_model_t *security_event; //model
    struct admin_auction_information_model_t *auction_information; //model
    struct admin_short_sale_price_test_status_model_t *short_sale_price_test; //model
    struct admin_operational_halt_status_model_t *operational_halt_status; //model
    struct admin_retail_liquidity_indicator_model_t *retail_liquidity_indicator; //model
    struct admin_system_event_model_t *system_event; //model
    struct admin_security_directory_model_t *security_directory; //model

    int _library_owned; // Is the library responsible for freeing this object?
} admin_admin_message_model_t;

__attribute__((deprecated)) admin_admin_message_model_t *admin_admin_message_model_create(
    admin_trading_status_model_t *trading_status,
    admin_official_price_model_t *official_price,
    admin_security_event_model_t *security_event,
    admin_auction_information_model_t *auction_information,
    admin_short_sale_price_test_status_model_t *short_sale_price_test,
    admin_operational_halt_status_model_t *operational_halt_status,
    admin_retail_liquidity_indicator_model_t *retail_liquidity_indicator,
    admin_system_event_model_t *system_event,
    admin_security_directory_model_t *security_directory
);

void admin_admin_message_model_free(admin_admin_message_model_t *admin_admin_message_model);

admin_admin_message_model_t *admin_admin_message_model_parseFromJSON(cJSON *admin_admin_message_modelJSON);

cJSON *admin_admin_message_model_convertToJSON(admin_admin_message_model_t *admin_admin_message_model);

#endif /* _admin_admin_message_model_H_ */

