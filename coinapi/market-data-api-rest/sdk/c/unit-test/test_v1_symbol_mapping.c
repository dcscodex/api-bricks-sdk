#ifndef v1_symbol_mapping_TEST
#define v1_symbol_mapping_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_symbol_mapping_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_symbol_mapping.h"
v1_symbol_mapping_t* instantiate_v1_symbol_mapping(int include_optional);



v1_symbol_mapping_t* instantiate_v1_symbol_mapping(int include_optional) {
  v1_symbol_mapping_t* v1_symbol_mapping = NULL;
  if (include_optional) {
    v1_symbol_mapping = v1_symbol_mapping_create(
      "0",
      "0",
      56,
      "0",
      "0",
      "0",
      "0",
      1.337,
      1.337
    );
  } else {
    v1_symbol_mapping = v1_symbol_mapping_create(
      "0",
      "0",
      56,
      "0",
      "0",
      "0",
      "0",
      1.337,
      1.337
    );
  }

  return v1_symbol_mapping;
}


#ifdef v1_symbol_mapping_MAIN

void test_v1_symbol_mapping(int include_optional) {
    v1_symbol_mapping_t* v1_symbol_mapping_1 = instantiate_v1_symbol_mapping(include_optional);

	cJSON* jsonv1_symbol_mapping_1 = v1_symbol_mapping_convertToJSON(v1_symbol_mapping_1);
	printf("v1_symbol_mapping :\n%s\n", cJSON_Print(jsonv1_symbol_mapping_1));
	v1_symbol_mapping_t* v1_symbol_mapping_2 = v1_symbol_mapping_parseFromJSON(jsonv1_symbol_mapping_1);
	cJSON* jsonv1_symbol_mapping_2 = v1_symbol_mapping_convertToJSON(v1_symbol_mapping_2);
	printf("repeating v1_symbol_mapping:\n%s\n", cJSON_Print(jsonv1_symbol_mapping_2));
}

int main() {
  test_v1_symbol_mapping(1);
  test_v1_symbol_mapping(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_symbol_mapping_MAIN
#endif // v1_symbol_mapping_TEST
