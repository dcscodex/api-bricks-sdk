#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/admin_admin_message_model.h"
#include "../model/admin_system_event_model.h"
#include "../model/level1_quote_update_model.h"
#include "../model/level2_price_level_update_model.h"
#include "../model/level3_order_book_model.h"
#include "../model/trade_trade_model.h"


// Get Admin Messages
//
list_t*
NativeIEXAPI_v1NativeIexAdminMessagesSymbolGet(apiClient_t *apiClient, char *symbol, char date);


// Get System Events
//
list_t*
NativeIEXAPI_v1NativeIexAdminSystemEventGet(apiClient_t *apiClient, char date);


// Get Level-1 Quotes
//
list_t*
NativeIEXAPI_v1NativeIexLevel1QuoteSymbolGet(apiClient_t *apiClient, char *symbol, char date);


// Get Level-2 Price Level Book
//
list_t*
NativeIEXAPI_v1NativeIexLevel2PriceLevelUpdateSymbolGet(apiClient_t *apiClient, char *symbol, char date);


// Get Level-3 Order Book
//
list_t*
NativeIEXAPI_v1NativeIexLevel3OrderBookSymbolGet(apiClient_t *apiClient, char *symbol, char date);


// Get Trades
//
list_t*
NativeIEXAPI_v1NativeIexTradeSymbolGet(apiClient_t *apiClient, char *symbol, char date);


