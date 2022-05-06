#ifndef key_value_TEST
#define key_value_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define key_value_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/key_value.h"
key_value_t* instantiate_key_value(int include_optional);



key_value_t* instantiate_key_value(int include_optional) {
  key_value_t* key_value = NULL;
  if (include_optional) {
    key_value = key_value_create(
      "0",
      "0"
    );
  } else {
    key_value = key_value_create(
      "0",
      "0"
    );
  }

  return key_value;
}


#ifdef key_value_MAIN

void test_key_value(int include_optional) {
    key_value_t* key_value_1 = instantiate_key_value(include_optional);

	cJSON* jsonkey_value_1 = key_value_convertToJSON(key_value_1);
	printf("key_value :\n%s\n", cJSON_Print(jsonkey_value_1));
	key_value_t* key_value_2 = key_value_parseFromJSON(jsonkey_value_1);
	cJSON* jsonkey_value_2 = key_value_convertToJSON(key_value_2);
	printf("repeating key_value:\n%s\n", cJSON_Print(jsonkey_value_2));
}

int main() {
  test_key_value(1);
  test_key_value(0);

  printf("Hello world \n");
  return 0;
}

#endif // key_value_MAIN
#endif // key_value_TEST
