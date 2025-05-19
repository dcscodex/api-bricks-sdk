#ifndef v1_asset_TEST
#define v1_asset_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_asset_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_asset.h"
v1_asset_t* instantiate_v1_asset(int include_optional);



v1_asset_t* instantiate_v1_asset(int include_optional) {
  v1_asset_t* v1_asset = NULL;
  if (include_optional) {
    v1_asset = v1_asset_create(
      "0",
      "0",
      56,
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      1.337,
      1.337,
      1.337,
      1.337,
      "0",
      1.337,
      1.337,
      1.337,
      list_createList(),
      "0",
      "0"
    );
  } else {
    v1_asset = v1_asset_create(
      "0",
      "0",
      56,
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      1.337,
      1.337,
      1.337,
      1.337,
      "0",
      1.337,
      1.337,
      1.337,
      list_createList(),
      "0",
      "0"
    );
  }

  return v1_asset;
}


#ifdef v1_asset_MAIN

void test_v1_asset(int include_optional) {
    v1_asset_t* v1_asset_1 = instantiate_v1_asset(include_optional);

	cJSON* jsonv1_asset_1 = v1_asset_convertToJSON(v1_asset_1);
	printf("v1_asset :\n%s\n", cJSON_Print(jsonv1_asset_1));
	v1_asset_t* v1_asset_2 = v1_asset_parseFromJSON(jsonv1_asset_1);
	cJSON* jsonv1_asset_2 = v1_asset_convertToJSON(v1_asset_2);
	printf("repeating v1_asset:\n%s\n", cJSON_Print(jsonv1_asset_2));
}

int main() {
  test_v1_asset(1);
  test_v1_asset(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_asset_MAIN
#endif // v1_asset_TEST
