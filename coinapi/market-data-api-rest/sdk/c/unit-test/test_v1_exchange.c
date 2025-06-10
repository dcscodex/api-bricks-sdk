#ifndef v1_exchange_TEST
#define v1_exchange_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_exchange_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_exchange.h"
v1_exchange_t* instantiate_v1_exchange(int include_optional);



v1_exchange_t* instantiate_v1_exchange(int include_optional) {
  v1_exchange_t* v1_exchange = NULL;
  if (include_optional) {
    v1_exchange = v1_exchange_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      1.337,
      1.337,
      1.337,
      list_createList(),
      list_createList(),
      1.337,
      "0"
    );
  } else {
    v1_exchange = v1_exchange_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      1.337,
      1.337,
      1.337,
      list_createList(),
      list_createList(),
      1.337,
      "0"
    );
  }

  return v1_exchange;
}


#ifdef v1_exchange_MAIN

void test_v1_exchange(int include_optional) {
    v1_exchange_t* v1_exchange_1 = instantiate_v1_exchange(include_optional);

	cJSON* jsonv1_exchange_1 = v1_exchange_convertToJSON(v1_exchange_1);
	printf("v1_exchange :\n%s\n", cJSON_Print(jsonv1_exchange_1));
	v1_exchange_t* v1_exchange_2 = v1_exchange_parseFromJSON(jsonv1_exchange_1);
	cJSON* jsonv1_exchange_2 = v1_exchange_convertToJSON(v1_exchange_2);
	printf("repeating v1_exchange:\n%s\n", cJSON_Print(jsonv1_exchange_2));
}

int main() {
  test_v1_exchange(1);
  test_v1_exchange(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_exchange_MAIN
#endif // v1_exchange_TEST
