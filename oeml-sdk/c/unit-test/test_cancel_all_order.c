#ifndef cancel_all_order_TEST
#define cancel_all_order_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define cancel_all_order_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/cancel_all_order.h"
cancel_all_order_t* instantiate_cancel_all_order(int include_optional);



cancel_all_order_t* instantiate_cancel_all_order(int include_optional) {
  cancel_all_order_t* cancel_all_order = NULL;
  if (include_optional) {
    cancel_all_order = cancel_all_order_create(
      "KRAKEN"
    );
  } else {
    cancel_all_order = cancel_all_order_create(
      "KRAKEN"
    );
  }

  return cancel_all_order;
}


#ifdef cancel_all_order_MAIN

void test_cancel_all_order(int include_optional) {
    cancel_all_order_t* cancel_all_order_1 = instantiate_cancel_all_order(include_optional);

	cJSON* jsoncancel_all_order_1 = cancel_all_order_convertToJSON(cancel_all_order_1);
	printf("cancel_all_order :\n%s\n", cJSON_Print(jsoncancel_all_order_1));
	cancel_all_order_t* cancel_all_order_2 = cancel_all_order_parseFromJSON(jsoncancel_all_order_1);
	cJSON* jsoncancel_all_order_2 = cancel_all_order_convertToJSON(cancel_all_order_2);
	printf("repeating cancel_all_order:\n%s\n", cJSON_Print(jsoncancel_all_order_2));
}

int main() {
  test_cancel_all_order(1);
  test_cancel_all_order(0);

  printf("Hello world \n");
  return 0;
}

#endif // cancel_all_order_MAIN
#endif // cancel_all_order_TEST
