#ifndef v1_external_exchange_TEST
#define v1_external_exchange_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_external_exchange_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_external_exchange.h"
v1_external_exchange_t* instantiate_v1_external_exchange(int include_optional);



v1_external_exchange_t* instantiate_v1_external_exchange(int include_optional) {
  v1_external_exchange_t* v1_external_exchange = NULL;
  if (include_optional) {
    v1_external_exchange = v1_external_exchange_create(
      "0",
      "0",
      "0",
      "0"
    );
  } else {
    v1_external_exchange = v1_external_exchange_create(
      "0",
      "0",
      "0",
      "0"
    );
  }

  return v1_external_exchange;
}


#ifdef v1_external_exchange_MAIN

void test_v1_external_exchange(int include_optional) {
    v1_external_exchange_t* v1_external_exchange_1 = instantiate_v1_external_exchange(include_optional);

	cJSON* jsonv1_external_exchange_1 = v1_external_exchange_convertToJSON(v1_external_exchange_1);
	printf("v1_external_exchange :\n%s\n", cJSON_Print(jsonv1_external_exchange_1));
	v1_external_exchange_t* v1_external_exchange_2 = v1_external_exchange_parseFromJSON(jsonv1_external_exchange_1);
	cJSON* jsonv1_external_exchange_2 = v1_external_exchange_convertToJSON(v1_external_exchange_2);
	printf("repeating v1_external_exchange:\n%s\n", cJSON_Print(jsonv1_external_exchange_2));
}

int main() {
  test_v1_external_exchange(1);
  test_v1_external_exchange(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_external_exchange_MAIN
#endif // v1_external_exchange_TEST
