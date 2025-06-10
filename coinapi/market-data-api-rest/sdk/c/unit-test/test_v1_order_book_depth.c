#ifndef v1_order_book_depth_TEST
#define v1_order_book_depth_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_order_book_depth_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_order_book_depth.h"
v1_order_book_depth_t* instantiate_v1_order_book_depth(int include_optional);



v1_order_book_depth_t* instantiate_v1_order_book_depth(int include_optional) {
  v1_order_book_depth_t* v1_order_book_depth = NULL;
  if (include_optional) {
    v1_order_book_depth = v1_order_book_depth_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      1.337,
      1.337
    );
  } else {
    v1_order_book_depth = v1_order_book_depth_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      1.337,
      1.337
    );
  }

  return v1_order_book_depth;
}


#ifdef v1_order_book_depth_MAIN

void test_v1_order_book_depth(int include_optional) {
    v1_order_book_depth_t* v1_order_book_depth_1 = instantiate_v1_order_book_depth(include_optional);

	cJSON* jsonv1_order_book_depth_1 = v1_order_book_depth_convertToJSON(v1_order_book_depth_1);
	printf("v1_order_book_depth :\n%s\n", cJSON_Print(jsonv1_order_book_depth_1));
	v1_order_book_depth_t* v1_order_book_depth_2 = v1_order_book_depth_parseFromJSON(jsonv1_order_book_depth_1);
	cJSON* jsonv1_order_book_depth_2 = v1_order_book_depth_convertToJSON(v1_order_book_depth_2);
	printf("repeating v1_order_book_depth:\n%s\n", cJSON_Print(jsonv1_order_book_depth_2));
}

int main() {
  test_v1_order_book_depth(1);
  test_v1_order_book_depth(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_order_book_depth_MAIN
#endif // v1_order_book_depth_TEST
