#ifndef create_order400_TEST
#define create_order400_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define create_order400_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/create_order400.h"
create_order400_t* instantiate_create_order400(int include_optional);



create_order400_t* instantiate_create_order400(int include_optional) {
  create_order400_t* create_order400 = NULL;
  if (include_optional) {
    create_order400 = create_order400_create(
      "https://tools.ietf.org/html/rfc7231#section-6.5.1",
      "One or more validation errors occurred.",
      400,
      "d200e8b5-4271a5461ce5342f",
      "0"
    );
  } else {
    create_order400 = create_order400_create(
      "https://tools.ietf.org/html/rfc7231#section-6.5.1",
      "One or more validation errors occurred.",
      400,
      "d200e8b5-4271a5461ce5342f",
      "0"
    );
  }

  return create_order400;
}


#ifdef create_order400_MAIN

void test_create_order400(int include_optional) {
    create_order400_t* create_order400_1 = instantiate_create_order400(include_optional);

	cJSON* jsoncreate_order400_1 = create_order400_convertToJSON(create_order400_1);
	printf("create_order400 :\n%s\n", cJSON_Print(jsoncreate_order400_1));
	create_order400_t* create_order400_2 = create_order400_parseFromJSON(jsoncreate_order400_1);
	cJSON* jsoncreate_order400_2 = create_order400_convertToJSON(create_order400_2);
	printf("repeating create_order400:\n%s\n", cJSON_Print(jsoncreate_order400_2));
}

int main() {
  test_create_order400(1);
  test_create_order400(0);

  printf("Hello world \n");
  return 0;
}

#endif // create_order400_MAIN
#endif // create_order400_TEST
