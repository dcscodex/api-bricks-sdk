#ifndef v1_order_book_base_TEST
#define v1_order_book_base_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_order_book_base_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_order_book_base.h"
v1_order_book_base_t* instantiate_v1_order_book_base(int include_optional);



v1_order_book_base_t* instantiate_v1_order_book_base(int include_optional) {
  v1_order_book_base_t* v1_order_book_base = NULL;
  if (include_optional) {
    v1_order_book_base = v1_order_book_base_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      null,
      null
    );
  } else {
    v1_order_book_base = v1_order_book_base_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      null,
      null
    );
  }

  return v1_order_book_base;
}


#ifdef v1_order_book_base_MAIN

void test_v1_order_book_base(int include_optional) {
    v1_order_book_base_t* v1_order_book_base_1 = instantiate_v1_order_book_base(include_optional);

	cJSON* jsonv1_order_book_base_1 = v1_order_book_base_convertToJSON(v1_order_book_base_1);
	printf("v1_order_book_base :\n%s\n", cJSON_Print(jsonv1_order_book_base_1));
	v1_order_book_base_t* v1_order_book_base_2 = v1_order_book_base_parseFromJSON(jsonv1_order_book_base_1);
	cJSON* jsonv1_order_book_base_2 = v1_order_book_base_convertToJSON(v1_order_book_base_2);
	printf("repeating v1_order_book_base:\n%s\n", cJSON_Print(jsonv1_order_book_base_2));
}

int main() {
  test_v1_order_book_base(1);
  test_v1_order_book_base(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_order_book_base_MAIN
#endif // v1_order_book_base_TEST
