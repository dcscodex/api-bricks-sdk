#ifndef v1_chain_TEST
#define v1_chain_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_chain_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_chain.h"
v1_chain_t* instantiate_v1_chain(int include_optional);



v1_chain_t* instantiate_v1_chain(int include_optional) {
  v1_chain_t* v1_chain = NULL;
  if (include_optional) {
    v1_chain = v1_chain_create(
      "0",
      "0"
    );
  } else {
    v1_chain = v1_chain_create(
      "0",
      "0"
    );
  }

  return v1_chain;
}


#ifdef v1_chain_MAIN

void test_v1_chain(int include_optional) {
    v1_chain_t* v1_chain_1 = instantiate_v1_chain(include_optional);

	cJSON* jsonv1_chain_1 = v1_chain_convertToJSON(v1_chain_1);
	printf("v1_chain :\n%s\n", cJSON_Print(jsonv1_chain_1));
	v1_chain_t* v1_chain_2 = v1_chain_parseFromJSON(jsonv1_chain_1);
	cJSON* jsonv1_chain_2 = v1_chain_convertToJSON(v1_chain_2);
	printf("repeating v1_chain:\n%s\n", cJSON_Print(jsonv1_chain_2));
}

int main() {
  test_v1_chain(1);
  test_v1_chain(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_chain_MAIN
#endif // v1_chain_TEST
