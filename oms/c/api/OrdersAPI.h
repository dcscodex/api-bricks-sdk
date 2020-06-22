#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/cancel_all_order.h"
#include "../model/cancel_order.h"
#include "../model/create_order400.h"
#include "../model/messages.h"
#include "../model/messages_ok.h"
#include "../model/new_order.h"
#include "../model/order.h"
#include "../model/order_live.h"


// Cancel all order
//
// Cancel all existing order.
//
messages_ok_t*
OrdersAPI_v1OrdersCancelAllPost(apiClient_t *apiClient, cancel_all_order_t * cancel_all_order );


// Cancel order
//
// Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.
//
order_live_t*
OrdersAPI_v1OrdersCancelPost(apiClient_t *apiClient, cancel_order_t * cancel_order );


// Get orders
//
// List your current open orders.
//
list_t*
OrdersAPI_v1OrdersGet(apiClient_t *apiClient, char * exchange_id );


// Create new order
//
// You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.
//
order_live_t*
OrdersAPI_v1OrdersPost(apiClient_t *apiClient, new_order_t * new_order );


