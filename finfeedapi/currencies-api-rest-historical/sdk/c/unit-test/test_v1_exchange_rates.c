#ifndef v1_exchange_rates_TEST
#define v1_exchange_rates_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_exchange_rates_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_exchange_rates.h"
v1_exchange_rates_t* instantiate_v1_exchange_rates(int include_optional);



v1_exchange_rates_t* instantiate_v1_exchange_rates(int include_optional) {
  v1_exchange_rates_t* v1_exchange_rates = NULL;
  if (include_optional) {
    v1_exchange_rates = v1_exchange_rates_create(
      "0",
      list_createList()
    );
  } else {
    v1_exchange_rates = v1_exchange_rates_create(
      "0",
      list_createList()
    );
  }

  return v1_exchange_rates;
}


#ifdef v1_exchange_rates_MAIN

void test_v1_exchange_rates(int include_optional) {
    v1_exchange_rates_t* v1_exchange_rates_1 = instantiate_v1_exchange_rates(include_optional);

	cJSON* jsonv1_exchange_rates_1 = v1_exchange_rates_convertToJSON(v1_exchange_rates_1);
	printf("v1_exchange_rates :\n%s\n", cJSON_Print(jsonv1_exchange_rates_1));
	v1_exchange_rates_t* v1_exchange_rates_2 = v1_exchange_rates_parseFromJSON(jsonv1_exchange_rates_1);
	cJSON* jsonv1_exchange_rates_2 = v1_exchange_rates_convertToJSON(v1_exchange_rates_2);
	printf("repeating v1_exchange_rates:\n%s\n", cJSON_Print(jsonv1_exchange_rates_2));
}

int main() {
  test_v1_exchange_rates(1);
  test_v1_exchange_rates(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_exchange_rates_MAIN
#endif // v1_exchange_rates_TEST
