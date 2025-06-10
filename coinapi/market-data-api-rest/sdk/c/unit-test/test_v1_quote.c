#ifndef v1_quote_TEST
#define v1_quote_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_quote_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_quote.h"
v1_quote_t* instantiate_v1_quote(int include_optional);



v1_quote_t* instantiate_v1_quote(int include_optional) {
  v1_quote_t* v1_quote = NULL;
  if (include_optional) {
    v1_quote = v1_quote_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      1.337,
      1.337,
      1.337,
      1.337
    );
  } else {
    v1_quote = v1_quote_create(
      "0",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      1.337,
      1.337,
      1.337,
      1.337
    );
  }

  return v1_quote;
}


#ifdef v1_quote_MAIN

void test_v1_quote(int include_optional) {
    v1_quote_t* v1_quote_1 = instantiate_v1_quote(include_optional);

	cJSON* jsonv1_quote_1 = v1_quote_convertToJSON(v1_quote_1);
	printf("v1_quote :\n%s\n", cJSON_Print(jsonv1_quote_1));
	v1_quote_t* v1_quote_2 = v1_quote_parseFromJSON(jsonv1_quote_1);
	cJSON* jsonv1_quote_2 = v1_quote_convertToJSON(v1_quote_2);
	printf("repeating v1_quote:\n%s\n", cJSON_Print(jsonv1_quote_2));
}

int main() {
  test_v1_quote(1);
  test_v1_quote(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_quote_MAIN
#endif // v1_quote_TEST
