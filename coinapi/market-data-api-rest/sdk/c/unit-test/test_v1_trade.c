#ifndef v1_trade_TEST
#define v1_trade_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_trade_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_trade.h"
v1_trade_t* instantiate_v1_trade(int include_optional);



v1_trade_t* instantiate_v1_trade(int include_optional) {
  v1_trade_t* v1_trade = NULL;
  if (include_optional) {
    v1_trade = v1_trade_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "0",
      1.337,
      1.337,
      "0",
      "0",
      "0",
      "0"
    );
  } else {
    v1_trade = v1_trade_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "0",
      1.337,
      1.337,
      "0",
      "0",
      "0",
      "0"
    );
  }

  return v1_trade;
}


#ifdef v1_trade_MAIN

void test_v1_trade(int include_optional) {
    v1_trade_t* v1_trade_1 = instantiate_v1_trade(include_optional);

	cJSON* jsonv1_trade_1 = v1_trade_convertToJSON(v1_trade_1);
	printf("v1_trade :\n%s\n", cJSON_Print(jsonv1_trade_1));
	v1_trade_t* v1_trade_2 = v1_trade_parseFromJSON(jsonv1_trade_1);
	cJSON* jsonv1_trade_2 = v1_trade_convertToJSON(v1_trade_2);
	printf("repeating v1_trade:\n%s\n", cJSON_Print(jsonv1_trade_2));
}

int main() {
  test_v1_trade(1);
  test_v1_trade(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_trade_MAIN
#endif // v1_trade_TEST
