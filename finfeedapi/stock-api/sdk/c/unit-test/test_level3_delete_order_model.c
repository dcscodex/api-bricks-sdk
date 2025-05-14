#ifndef level3_delete_order_model_TEST
#define level3_delete_order_model_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define level3_delete_order_model_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/level3_delete_order_model.h"
level3_delete_order_model_t* instantiate_level3_delete_order_model(int include_optional);



level3_delete_order_model_t* instantiate_level3_delete_order_model(int include_optional) {
  level3_delete_order_model_t* level3_delete_order_model = NULL;
  if (include_optional) {
    level3_delete_order_model = level3_delete_order_model_create(
      "0",
      56,
      "2013-10-20T19:20:30+01:00",
      56
    );
  } else {
    level3_delete_order_model = level3_delete_order_model_create(
      "0",
      56,
      "2013-10-20T19:20:30+01:00",
      56
    );
  }

  return level3_delete_order_model;
}


#ifdef level3_delete_order_model_MAIN

void test_level3_delete_order_model(int include_optional) {
    level3_delete_order_model_t* level3_delete_order_model_1 = instantiate_level3_delete_order_model(include_optional);

	cJSON* jsonlevel3_delete_order_model_1 = level3_delete_order_model_convertToJSON(level3_delete_order_model_1);
	printf("level3_delete_order_model :\n%s\n", cJSON_Print(jsonlevel3_delete_order_model_1));
	level3_delete_order_model_t* level3_delete_order_model_2 = level3_delete_order_model_parseFromJSON(jsonlevel3_delete_order_model_1);
	cJSON* jsonlevel3_delete_order_model_2 = level3_delete_order_model_convertToJSON(level3_delete_order_model_2);
	printf("repeating level3_delete_order_model:\n%s\n", cJSON_Print(jsonlevel3_delete_order_model_2));
}

int main() {
  test_level3_delete_order_model(1);
  test_level3_delete_order_model(0);

  printf("Hello world \n");
  return 0;
}

#endif // level3_delete_order_model_MAIN
#endif // level3_delete_order_model_TEST
