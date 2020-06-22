#ifndef new_order_TEST
#define new_order_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define new_order_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/new_order.h"
new_order_t* instantiate_new_order(int include_optional);



new_order_t* instantiate_new_order(int include_optional) {
  new_order_t* new_order = NULL;
  if (include_optional) {
    new_order = new_order_create(
      "KRAKEN",
      "KPP-222389382-AQ",
      "BTCUSD",
      "KRAKEN_SPOT_BTC_USD",
      0.045,
      0.0783,
      oms___rest_api_____new_order_SIDE_"BUY",
      oms___rest_api_____new_order_ORDERTYPE_"LIMIT",
      oms___rest_api_____new_order__GOOD_TILL_CANCEL,
      null,
      list_create()
    );
  } else {
    new_order = new_order_create(
      "KRAKEN",
      "KPP-222389382-AQ",
      "BTCUSD",
      "KRAKEN_SPOT_BTC_USD",
      0.045,
      0.0783,
      oms___rest_api_____new_order_SIDE_"BUY",
      oms___rest_api_____new_order_ORDERTYPE_"LIMIT",
      oms___rest_api_____new_order__GOOD_TILL_CANCEL,
      null,
      list_create()
    );
  }

  return new_order;
}


#ifdef new_order_MAIN

void test_new_order(int include_optional) {
    new_order_t* new_order_1 = instantiate_new_order(include_optional);

	cJSON* jsonnew_order_1 = new_order_convertToJSON(new_order_1);
	printf("new_order :\n%s\n", cJSON_Print(jsonnew_order_1));
	new_order_t* new_order_2 = new_order_parseFromJSON(jsonnew_order_1);
	cJSON* jsonnew_order_2 = new_order_convertToJSON(new_order_2);
	printf("repeating new_order:\n%s\n", cJSON_Print(jsonnew_order_2));
}

int main() {
  test_new_order(1);
  test_new_order(0);

  printf("Hello world \n");
  return 0;
}

#endif // new_order_MAIN
#endif // new_order_TEST
