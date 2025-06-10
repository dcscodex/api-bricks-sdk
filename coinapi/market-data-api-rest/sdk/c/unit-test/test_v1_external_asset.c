#ifndef v1_external_asset_TEST
#define v1_external_asset_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_external_asset_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_external_asset.h"
v1_external_asset_t* instantiate_v1_external_asset(int include_optional);



v1_external_asset_t* instantiate_v1_external_asset(int include_optional) {
  v1_external_asset_t* v1_external_asset = NULL;
  if (include_optional) {
    v1_external_asset = v1_external_asset_create(
      "0",
      "0",
      "0"
    );
  } else {
    v1_external_asset = v1_external_asset_create(
      "0",
      "0",
      "0"
    );
  }

  return v1_external_asset;
}


#ifdef v1_external_asset_MAIN

void test_v1_external_asset(int include_optional) {
    v1_external_asset_t* v1_external_asset_1 = instantiate_v1_external_asset(include_optional);

	cJSON* jsonv1_external_asset_1 = v1_external_asset_convertToJSON(v1_external_asset_1);
	printf("v1_external_asset :\n%s\n", cJSON_Print(jsonv1_external_asset_1));
	v1_external_asset_t* v1_external_asset_2 = v1_external_asset_parseFromJSON(jsonv1_external_asset_1);
	cJSON* jsonv1_external_asset_2 = v1_external_asset_convertToJSON(v1_external_asset_2);
	printf("repeating v1_external_asset:\n%s\n", cJSON_Print(jsonv1_external_asset_2));
}

int main() {
  test_v1_external_asset(1);
  test_v1_external_asset(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_external_asset_MAIN
#endif // v1_external_asset_TEST
