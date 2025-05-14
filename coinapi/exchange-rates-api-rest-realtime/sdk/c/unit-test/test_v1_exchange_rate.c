#ifndef v1_exchange_rate_TEST
#define v1_exchange_rate_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_exchange_rate_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_exchange_rate.h"
v1_exchange_rate_t* instantiate_v1_exchange_rate(int include_optional);



v1_exchange_rate_t* instantiate_v1_exchange_rate(int include_optional) {
  v1_exchange_rate_t* v1_exchange_rate = NULL;
  if (include_optional) {
    v1_exchange_rate = v1_exchange_rate_create(
      "2013-10-20T19:20:30+01:00",
      "0",
      "0",
      1.337
    );
  } else {
    v1_exchange_rate = v1_exchange_rate_create(
      "2013-10-20T19:20:30+01:00",
      "0",
      "0",
      1.337
    );
  }

  return v1_exchange_rate;
}


#ifdef v1_exchange_rate_MAIN

void test_v1_exchange_rate(int include_optional) {
    v1_exchange_rate_t* v1_exchange_rate_1 = instantiate_v1_exchange_rate(include_optional);

	cJSON* jsonv1_exchange_rate_1 = v1_exchange_rate_convertToJSON(v1_exchange_rate_1);
	printf("v1_exchange_rate :\n%s\n", cJSON_Print(jsonv1_exchange_rate_1));
	v1_exchange_rate_t* v1_exchange_rate_2 = v1_exchange_rate_parseFromJSON(jsonv1_exchange_rate_1);
	cJSON* jsonv1_exchange_rate_2 = v1_exchange_rate_convertToJSON(v1_exchange_rate_2);
	printf("repeating v1_exchange_rate:\n%s\n", cJSON_Print(jsonv1_exchange_rate_2));
}

int main() {
  test_v1_exchange_rate(1);
  test_v1_exchange_rate(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_exchange_rate_MAIN
#endif // v1_exchange_rate_TEST
