#ifndef v1_symbol_TEST
#define v1_symbol_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_symbol_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_symbol.h"
v1_symbol_t* instantiate_v1_symbol(int include_optional);



v1_symbol_t* instantiate_v1_symbol(int include_optional) {
  v1_symbol_t* v1_symbol = NULL;
  if (include_optional) {
    v1_symbol = v1_symbol_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      1.337,
      "0",
      "2013-10-20T19:20:30+01:00",
      1,
      1.337,
      1.337,
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      1.337,
      "0",
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
      "0",
      "0",
      "0",
      1.337,
      1.337,
      1.337,
      1.337,
      1.337,
      1.337,
      1.337,
      "0",
      "0",
      "0",
      1.337,
      1.337,
      list_createList(),
      1.337
    );
  } else {
    v1_symbol = v1_symbol_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      1.337,
      "0",
      "2013-10-20T19:20:30+01:00",
      1,
      1.337,
      1.337,
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      1.337,
      "0",
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
      "0",
      "0",
      "0",
      1.337,
      1.337,
      1.337,
      1.337,
      1.337,
      1.337,
      1.337,
      "0",
      "0",
      "0",
      1.337,
      1.337,
      list_createList(),
      1.337
    );
  }

  return v1_symbol;
}


#ifdef v1_symbol_MAIN

void test_v1_symbol(int include_optional) {
    v1_symbol_t* v1_symbol_1 = instantiate_v1_symbol(include_optional);

	cJSON* jsonv1_symbol_1 = v1_symbol_convertToJSON(v1_symbol_1);
	printf("v1_symbol :\n%s\n", cJSON_Print(jsonv1_symbol_1));
	v1_symbol_t* v1_symbol_2 = v1_symbol_parseFromJSON(jsonv1_symbol_1);
	cJSON* jsonv1_symbol_2 = v1_symbol_convertToJSON(v1_symbol_2);
	printf("repeating v1_symbol:\n%s\n", cJSON_Print(jsonv1_symbol_2));
}

int main() {
  test_v1_symbol(1);
  test_v1_symbol(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_symbol_MAIN
#endif // v1_symbol_TEST
