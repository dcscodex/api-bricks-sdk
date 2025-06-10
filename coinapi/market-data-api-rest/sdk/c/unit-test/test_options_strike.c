#ifndef options_strike_TEST
#define options_strike_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define options_strike_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/options_strike.h"
options_strike_t* instantiate_options_strike(int include_optional);

#include "test_v1_quote_trade.c"
#include "test_v1_quote_trade.c"


options_strike_t* instantiate_options_strike(int include_optional) {
  options_strike_t* options_strike = NULL;
  if (include_optional) {
    options_strike = options_strike_create(
      1.337,
       // false, not to have infinite recursion
      instantiate_v1_quote_trade(0),
       // false, not to have infinite recursion
      instantiate_v1_quote_trade(0)
    );
  } else {
    options_strike = options_strike_create(
      1.337,
      NULL,
      NULL
    );
  }

  return options_strike;
}


#ifdef options_strike_MAIN

void test_options_strike(int include_optional) {
    options_strike_t* options_strike_1 = instantiate_options_strike(include_optional);

	cJSON* jsonoptions_strike_1 = options_strike_convertToJSON(options_strike_1);
	printf("options_strike :\n%s\n", cJSON_Print(jsonoptions_strike_1));
	options_strike_t* options_strike_2 = options_strike_parseFromJSON(jsonoptions_strike_1);
	cJSON* jsonoptions_strike_2 = options_strike_convertToJSON(options_strike_2);
	printf("repeating options_strike:\n%s\n", cJSON_Print(jsonoptions_strike_2));
}

int main() {
  test_options_strike(1);
  test_options_strike(0);

  printf("Hello world \n");
  return 0;
}

#endif // options_strike_MAIN
#endif // options_strike_TEST
