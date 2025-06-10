#ifndef v1_icon_TEST
#define v1_icon_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_icon_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_icon.h"
v1_icon_t* instantiate_v1_icon(int include_optional);



v1_icon_t* instantiate_v1_icon(int include_optional) {
  v1_icon_t* v1_icon = NULL;
  if (include_optional) {
    v1_icon = v1_icon_create(
      "0",
      "0",
      "0"
    );
  } else {
    v1_icon = v1_icon_create(
      "0",
      "0",
      "0"
    );
  }

  return v1_icon;
}


#ifdef v1_icon_MAIN

void test_v1_icon(int include_optional) {
    v1_icon_t* v1_icon_1 = instantiate_v1_icon(include_optional);

	cJSON* jsonv1_icon_1 = v1_icon_convertToJSON(v1_icon_1);
	printf("v1_icon :\n%s\n", cJSON_Print(jsonv1_icon_1));
	v1_icon_t* v1_icon_2 = v1_icon_parseFromJSON(jsonv1_icon_1);
	cJSON* jsonv1_icon_2 = v1_icon_convertToJSON(v1_icon_2);
	printf("repeating v1_icon:\n%s\n", cJSON_Print(jsonv1_icon_2));
}

int main() {
  test_v1_icon(1);
  test_v1_icon(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_icon_MAIN
#endif // v1_icon_TEST
