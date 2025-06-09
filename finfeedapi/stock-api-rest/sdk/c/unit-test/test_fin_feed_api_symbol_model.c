#ifndef fin_feed_api_symbol_model_TEST
#define fin_feed_api_symbol_model_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define fin_feed_api_symbol_model_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/fin_feed_api_symbol_model.h"
fin_feed_api_symbol_model_t* instantiate_fin_feed_api_symbol_model(int include_optional);



fin_feed_api_symbol_model_t* instantiate_fin_feed_api_symbol_model(int include_optional) {
  fin_feed_api_symbol_model_t* fin_feed_api_symbol_model = NULL;
  if (include_optional) {
    fin_feed_api_symbol_model = fin_feed_api_symbol_model_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  } else {
    fin_feed_api_symbol_model = fin_feed_api_symbol_model_create(
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0"
    );
  }

  return fin_feed_api_symbol_model;
}


#ifdef fin_feed_api_symbol_model_MAIN

void test_fin_feed_api_symbol_model(int include_optional) {
    fin_feed_api_symbol_model_t* fin_feed_api_symbol_model_1 = instantiate_fin_feed_api_symbol_model(include_optional);

	cJSON* jsonfin_feed_api_symbol_model_1 = fin_feed_api_symbol_model_convertToJSON(fin_feed_api_symbol_model_1);
	printf("fin_feed_api_symbol_model :\n%s\n", cJSON_Print(jsonfin_feed_api_symbol_model_1));
	fin_feed_api_symbol_model_t* fin_feed_api_symbol_model_2 = fin_feed_api_symbol_model_parseFromJSON(jsonfin_feed_api_symbol_model_1);
	cJSON* jsonfin_feed_api_symbol_model_2 = fin_feed_api_symbol_model_convertToJSON(fin_feed_api_symbol_model_2);
	printf("repeating fin_feed_api_symbol_model:\n%s\n", cJSON_Print(jsonfin_feed_api_symbol_model_2));
}

int main() {
  test_fin_feed_api_symbol_model(1);
  test_fin_feed_api_symbol_model(0);

  printf("Hello world \n");
  return 0;
}

#endif // fin_feed_api_symbol_model_MAIN
#endif // fin_feed_api_symbol_model_TEST
