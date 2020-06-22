#ifndef order_live_TEST
#define order_live_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define order_live_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/order_live.h"
order_live_t* instantiate_order_live(int include_optional);



order_live_t* instantiate_order_live(int include_optional) {
  order_live_t* order_live = NULL;
  if (include_optional) {
    order_live = order_live_create(
      "updateOrder",
      "KRAKEN",
      "KPP-222389382-AQ",
      "f81211e2-27c4-b86a-8143-01088ba9222c",
      "90832ASASAS89789-1112",
      0.22,
      0.0,
      oms___rest_api_____order_live__RECEIVED,
      list_create(),
      "{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}",
      "KPP-222389382-AQ",
      "BTCUSD",
      "KRAKEN_SPOT_BTC_USD",
      0.045,
      0.0783,
      oms___rest_api_____order_live_SIDE_"BUY",
      oms___rest_api_____order_live_ORDERTYPE_"LIMIT",
      oms___rest_api_____order_live__GOOD_TILL_CANCEL,
      null,
      list_create()
    );
  } else {
    order_live = order_live_create(
      "updateOrder",
      "KRAKEN",
      "KPP-222389382-AQ",
      "f81211e2-27c4-b86a-8143-01088ba9222c",
      "90832ASASAS89789-1112",
      0.22,
      0.0,
      oms___rest_api_____order_live__RECEIVED,
      list_create(),
      "{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}",
      "KPP-222389382-AQ",
      "BTCUSD",
      "KRAKEN_SPOT_BTC_USD",
      0.045,
      0.0783,
      oms___rest_api_____order_live_SIDE_"BUY",
      oms___rest_api_____order_live_ORDERTYPE_"LIMIT",
      oms___rest_api_____order_live__GOOD_TILL_CANCEL,
      null,
      list_create()
    );
  }

  return order_live;
}


#ifdef order_live_MAIN

void test_order_live(int include_optional) {
    order_live_t* order_live_1 = instantiate_order_live(include_optional);

	cJSON* jsonorder_live_1 = order_live_convertToJSON(order_live_1);
	printf("order_live :\n%s\n", cJSON_Print(jsonorder_live_1));
	order_live_t* order_live_2 = order_live_parseFromJSON(jsonorder_live_1);
	cJSON* jsonorder_live_2 = order_live_convertToJSON(order_live_2);
	printf("repeating order_live:\n%s\n", cJSON_Print(jsonorder_live_2));
}

int main() {
  test_order_live(1);
  test_order_live(0);

  printf("Hello world \n");
  return 0;
}

#endif // order_live_MAIN
#endif // order_live_TEST
