#ifndef options_option_exchange_group_TEST
#define options_option_exchange_group_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define options_option_exchange_group_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/options_option_exchange_group.h"
options_option_exchange_group_t* instantiate_options_option_exchange_group(int include_optional);



options_option_exchange_group_t* instantiate_options_option_exchange_group(int include_optional) {
  options_option_exchange_group_t* options_option_exchange_group = NULL;
  if (include_optional) {
    options_option_exchange_group = options_option_exchange_group_create(
      "0",
      "0",
      1.337,
      "2013-10-20T19:20:30+01:00",
      list_createList()
    );
  } else {
    options_option_exchange_group = options_option_exchange_group_create(
      "0",
      "0",
      1.337,
      "2013-10-20T19:20:30+01:00",
      list_createList()
    );
  }

  return options_option_exchange_group;
}


#ifdef options_option_exchange_group_MAIN

void test_options_option_exchange_group(int include_optional) {
    options_option_exchange_group_t* options_option_exchange_group_1 = instantiate_options_option_exchange_group(include_optional);

	cJSON* jsonoptions_option_exchange_group_1 = options_option_exchange_group_convertToJSON(options_option_exchange_group_1);
	printf("options_option_exchange_group :\n%s\n", cJSON_Print(jsonoptions_option_exchange_group_1));
	options_option_exchange_group_t* options_option_exchange_group_2 = options_option_exchange_group_parseFromJSON(jsonoptions_option_exchange_group_1);
	cJSON* jsonoptions_option_exchange_group_2 = options_option_exchange_group_convertToJSON(options_option_exchange_group_2);
	printf("repeating options_option_exchange_group:\n%s\n", cJSON_Print(jsonoptions_option_exchange_group_2));
}

int main() {
  test_options_option_exchange_group(1);
  test_options_option_exchange_group(0);

  printf("Hello world \n");
  return 0;
}

#endif // options_option_exchange_group_MAIN
#endif // options_option_exchange_group_TEST
