#ifndef order_data_TEST
#define order_data_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define order_data_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/order_data.h"
order_data_t* instantiate_order_data(int include_optional);



order_data_t* instantiate_order_data(int include_optional) {
  order_data_t* order_data = NULL;
  if (include_optional) {
    order_data = order_data_create(
      "KRAKEN",
      "KPP-222389382-AQ",
      "f81211e2-27c4-b86a-8143-01088ba9222c",
      "90832ASASAS89789-1112",
      0.22,
      0.0,
      oms___rest_api_order_data__RECEIVED,
      list_create(),
      "{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}",
      "KPP-222389382-AQ",
      "BTCUSD",
      "KRAKEN_SPOT_BTC_USD",
      0.045,
      0.0783,
      oms___rest_api_order_data_SIDE_"BUY",
      oms___rest_api_order_data_ORDERTYPE_"LIMIT",
      oms___rest_api_order_data__GOOD_TILL_CANCEL,
      null,
      list_create()
    );
  } else {
    order_data = order_data_create(
      "KRAKEN",
      "KPP-222389382-AQ",
      "f81211e2-27c4-b86a-8143-01088ba9222c",
      "90832ASASAS89789-1112",
      0.22,
      0.0,
      oms___rest_api_order_data__RECEIVED,
      list_create(),
      "{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}",
      "KPP-222389382-AQ",
      "BTCUSD",
      "KRAKEN_SPOT_BTC_USD",
      0.045,
      0.0783,
      oms___rest_api_order_data_SIDE_"BUY",
      oms___rest_api_order_data_ORDERTYPE_"LIMIT",
      oms___rest_api_order_data__GOOD_TILL_CANCEL,
      null,
      list_create()
    );
  }

  return order_data;
}


#ifdef order_data_MAIN

void test_order_data(int include_optional) {
    order_data_t* order_data_1 = instantiate_order_data(include_optional);

	cJSON* jsonorder_data_1 = order_data_convertToJSON(order_data_1);
	printf("order_data :\n%s\n", cJSON_Print(jsonorder_data_1));
	order_data_t* order_data_2 = order_data_parseFromJSON(jsonorder_data_1);
	cJSON* jsonorder_data_2 = order_data_convertToJSON(order_data_2);
	printf("repeating order_data:\n%s\n", cJSON_Print(jsonorder_data_2));
}

int main() {
  test_order_data(1);
  test_order_data(0);

  printf("Hello world \n");
  return 0;
}

#endif // order_data_MAIN
#endif // order_data_TEST
