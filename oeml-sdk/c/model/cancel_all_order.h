/*
 * cancel_all_order.h
 *
 * 
 */

#ifndef _cancel_all_order_H_
#define _cancel_all_order_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cancel_all_order_t cancel_all_order_t;




typedef struct cancel_all_order_t {
    char *exchange_id; // string

} cancel_all_order_t;

cancel_all_order_t *cancel_all_order_create(
    char *exchange_id
);

void cancel_all_order_free(cancel_all_order_t *cancel_all_order);

cancel_all_order_t *cancel_all_order_parseFromJSON(cJSON *cancel_all_orderJSON);

cJSON *cancel_all_order_convertToJSON(cancel_all_order_t *cancel_all_order);

#endif /* _cancel_all_order_H_ */

