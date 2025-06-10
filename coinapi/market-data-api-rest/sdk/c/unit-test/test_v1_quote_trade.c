#ifndef v1_quote_trade_TEST
#define v1_quote_trade_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_quote_trade_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_quote_trade.h"
v1_quote_trade_t* instantiate_v1_quote_trade(int include_optional);

#include "test_v1_last_trade.c"


v1_quote_trade_t* instantiate_v1_quote_trade(int include_optional) {
  v1_quote_trade_t* v1_quote_trade = NULL;
  if (include_optional) {
    v1_quote_trade = v1_quote_trade_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      1.337,
      1.337,
      1.337,
      1.337,
       // false, not to have infinite recursion
      instantiate_v1_last_trade(0)
    );
  } else {
    v1_quote_trade = v1_quote_trade_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      1.337,
      1.337,
      1.337,
      1.337,
      NULL
    );
  }

  return v1_quote_trade;
}


#ifdef v1_quote_trade_MAIN

void test_v1_quote_trade(int include_optional) {
    v1_quote_trade_t* v1_quote_trade_1 = instantiate_v1_quote_trade(include_optional);

	cJSON* jsonv1_quote_trade_1 = v1_quote_trade_convertToJSON(v1_quote_trade_1);
	printf("v1_quote_trade :\n%s\n", cJSON_Print(jsonv1_quote_trade_1));
	v1_quote_trade_t* v1_quote_trade_2 = v1_quote_trade_parseFromJSON(jsonv1_quote_trade_1);
	cJSON* jsonv1_quote_trade_2 = v1_quote_trade_convertToJSON(v1_quote_trade_2);
	printf("repeating v1_quote_trade:\n%s\n", cJSON_Print(jsonv1_quote_trade_2));
}

int main() {
  test_v1_quote_trade(1);
  test_v1_quote_trade(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_quote_trade_MAIN
#endif // v1_quote_trade_TEST
