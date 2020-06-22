#ifndef cancel_order_TEST
#define cancel_order_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cancel_order_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cancel_order.h"
cancel_order_t* instantiate_cancel_order(int include_optional);



cancel_order_t* instantiate_cancel_order(int include_optional) {
  cancel_order_t* cancel_order = NULL;
  if (include_optional) {
    cancel_order = cancel_order_create(
      "KRAKEN",
      "d8574207d9e3b16a4a5511753eeef1751",
      "A12345"
    );
  } else {
    cancel_order = cancel_order_create(
      "KRAKEN",
      "d8574207d9e3b16a4a5511753eeef1751",
      "A12345"
    );
  }

  return cancel_order;
}


#ifdef cancel_order_MAIN

void test_cancel_order(int include_optional) {
    cancel_order_t* cancel_order_1 = instantiate_cancel_order(include_optional);

	cJSON* jsoncancel_order_1 = cancel_order_convertToJSON(cancel_order_1);
	printf("cancel_order :\n%s\n", cJSON_Print(jsoncancel_order_1));
	cancel_order_t* cancel_order_2 = cancel_order_parseFromJSON(jsoncancel_order_1);
	cJSON* jsoncancel_order_2 = cancel_order_convertToJSON(cancel_order_2);
	printf("repeating cancel_order:\n%s\n", cJSON_Print(jsoncancel_order_2));
}

int main() {
  test_cancel_order(1);
  test_cancel_order(0);

  printf("Hello world \n");
  return 0;
}

#endif // cancel_order_MAIN
#endif // cancel_order_TEST
