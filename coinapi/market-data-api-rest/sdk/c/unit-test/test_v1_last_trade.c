#ifndef v1_last_trade_TEST
#define v1_last_trade_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_last_trade_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_last_trade.h"
v1_last_trade_t* instantiate_v1_last_trade(int include_optional);



v1_last_trade_t* instantiate_v1_last_trade(int include_optional) {
  v1_last_trade_t* v1_last_trade = NULL;
  if (include_optional) {
    v1_last_trade = v1_last_trade_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "0",
      1.337,
      1.337,
      "0"
    );
  } else {
    v1_last_trade = v1_last_trade_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "0",
      1.337,
      1.337,
      "0"
    );
  }

  return v1_last_trade;
}


#ifdef v1_last_trade_MAIN

void test_v1_last_trade(int include_optional) {
    v1_last_trade_t* v1_last_trade_1 = instantiate_v1_last_trade(include_optional);

	cJSON* jsonv1_last_trade_1 = v1_last_trade_convertToJSON(v1_last_trade_1);
	printf("v1_last_trade :\n%s\n", cJSON_Print(jsonv1_last_trade_1));
	v1_last_trade_t* v1_last_trade_2 = v1_last_trade_parseFromJSON(jsonv1_last_trade_1);
	cJSON* jsonv1_last_trade_2 = v1_last_trade_convertToJSON(v1_last_trade_2);
	printf("repeating v1_last_trade:\n%s\n", cJSON_Print(jsonv1_last_trade_2));
}

int main() {
  test_v1_last_trade(1);
  test_v1_last_trade(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_last_trade_MAIN
#endif // v1_last_trade_TEST
