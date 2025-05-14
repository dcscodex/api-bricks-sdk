#ifndef level2_price_level_update_model_TEST
#define level2_price_level_update_model_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define level2_price_level_update_model_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/level2_price_level_update_model.h"
level2_price_level_update_model_t* instantiate_level2_price_level_update_model(int include_optional);



level2_price_level_update_model_t* instantiate_level2_price_level_update_model(int include_optional) {
  level2_price_level_update_model_t* level2_price_level_update_model = NULL;
  if (include_optional) {
    level2_price_level_update_model = level2_price_level_update_model_create(
      "0",
      56,
      "2013-10-20T19:20:30+01:00",
      1,
      1,
      56,
      1.337
    );
  } else {
    level2_price_level_update_model = level2_price_level_update_model_create(
      "0",
      56,
      "2013-10-20T19:20:30+01:00",
      1,
      1,
      56,
      1.337
    );
  }

  return level2_price_level_update_model;
}


#ifdef level2_price_level_update_model_MAIN

void test_level2_price_level_update_model(int include_optional) {
    level2_price_level_update_model_t* level2_price_level_update_model_1 = instantiate_level2_price_level_update_model(include_optional);

	cJSON* jsonlevel2_price_level_update_model_1 = level2_price_level_update_model_convertToJSON(level2_price_level_update_model_1);
	printf("level2_price_level_update_model :\n%s\n", cJSON_Print(jsonlevel2_price_level_update_model_1));
	level2_price_level_update_model_t* level2_price_level_update_model_2 = level2_price_level_update_model_parseFromJSON(jsonlevel2_price_level_update_model_1);
	cJSON* jsonlevel2_price_level_update_model_2 = level2_price_level_update_model_convertToJSON(level2_price_level_update_model_2);
	printf("repeating level2_price_level_update_model:\n%s\n", cJSON_Print(jsonlevel2_price_level_update_model_2));
}

int main() {
  test_level2_price_level_update_model(1);
  test_level2_price_level_update_model(0);

  printf("Hello world \n");
  return 0;
}

#endif // level2_price_level_update_model_MAIN
#endif // level2_price_level_update_model_TEST
