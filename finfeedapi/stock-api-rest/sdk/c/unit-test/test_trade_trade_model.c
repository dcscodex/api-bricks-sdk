#ifndef trade_trade_model_TEST
#define trade_trade_model_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define trade_trade_model_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/trade_trade_model.h"
trade_trade_model_t* instantiate_trade_trade_model(int include_optional);



trade_trade_model_t* instantiate_trade_trade_model(int include_optional) {
  trade_trade_model_t* trade_trade_model = NULL;
  if (include_optional) {
    trade_trade_model = trade_trade_model_create(
      1,
      "0",
      56,
      "2013-10-20T19:20:30+01:00",
      56,
      1.337,
      56,
      1,
      1,
      1,
      1,
      1
    );
  } else {
    trade_trade_model = trade_trade_model_create(
      1,
      "0",
      56,
      "2013-10-20T19:20:30+01:00",
      56,
      1.337,
      56,
      1,
      1,
      1,
      1,
      1
    );
  }

  return trade_trade_model;
}


#ifdef trade_trade_model_MAIN

void test_trade_trade_model(int include_optional) {
    trade_trade_model_t* trade_trade_model_1 = instantiate_trade_trade_model(include_optional);

	cJSON* jsontrade_trade_model_1 = trade_trade_model_convertToJSON(trade_trade_model_1);
	printf("trade_trade_model :\n%s\n", cJSON_Print(jsontrade_trade_model_1));
	trade_trade_model_t* trade_trade_model_2 = trade_trade_model_parseFromJSON(jsontrade_trade_model_1);
	cJSON* jsontrade_trade_model_2 = trade_trade_model_convertToJSON(trade_trade_model_2);
	printf("repeating trade_trade_model:\n%s\n", cJSON_Print(jsontrade_trade_model_2));
}

int main() {
  test_trade_trade_model(1);
  test_trade_trade_model(0);

  printf("Hello world \n");
  return 0;
}

#endif // trade_trade_model_MAIN
#endif // trade_trade_model_TEST
