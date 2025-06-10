#ifndef v1_order_book_TEST
#define v1_order_book_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_order_book_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_order_book.h"
v1_order_book_t* instantiate_v1_order_book(int include_optional);



v1_order_book_t* instantiate_v1_order_book(int include_optional) {
  v1_order_book_t* v1_order_book = NULL;
  if (include_optional) {
    v1_order_book = v1_order_book_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      null,
      null
    );
  } else {
    v1_order_book = v1_order_book_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      null,
      null
    );
  }

  return v1_order_book;
}


#ifdef v1_order_book_MAIN

void test_v1_order_book(int include_optional) {
    v1_order_book_t* v1_order_book_1 = instantiate_v1_order_book(include_optional);

	cJSON* jsonv1_order_book_1 = v1_order_book_convertToJSON(v1_order_book_1);
	printf("v1_order_book :\n%s\n", cJSON_Print(jsonv1_order_book_1));
	v1_order_book_t* v1_order_book_2 = v1_order_book_parseFromJSON(jsonv1_order_book_1);
	cJSON* jsonv1_order_book_2 = v1_order_book_convertToJSON(v1_order_book_2);
	printf("repeating v1_order_book:\n%s\n", cJSON_Print(jsonv1_order_book_2));
}

int main() {
  test_v1_order_book(1);
  test_v1_order_book(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_order_book_MAIN
#endif // v1_order_book_TEST
