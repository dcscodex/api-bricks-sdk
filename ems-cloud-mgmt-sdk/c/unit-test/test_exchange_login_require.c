#ifndef exchange_login_require_TEST
#define exchange_login_require_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define exchange_login_require_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/exchange_login_require.h"
exchange_login_require_t* instantiate_exchange_login_require(int include_optional);



exchange_login_require_t* instantiate_exchange_login_require(int include_optional) {
  exchange_login_require_t* exchange_login_require = NULL;
  if (include_optional) {
    exchange_login_require = exchange_login_require_create(
      "0",
      "0",
      list_createList()
    );
  } else {
    exchange_login_require = exchange_login_require_create(
      "0",
      "0",
      list_createList()
    );
  }

  return exchange_login_require;
}


#ifdef exchange_login_require_MAIN

void test_exchange_login_require(int include_optional) {
    exchange_login_require_t* exchange_login_require_1 = instantiate_exchange_login_require(include_optional);

	cJSON* jsonexchange_login_require_1 = exchange_login_require_convertToJSON(exchange_login_require_1);
	printf("exchange_login_require :\n%s\n", cJSON_Print(jsonexchange_login_require_1));
	exchange_login_require_t* exchange_login_require_2 = exchange_login_require_parseFromJSON(jsonexchange_login_require_1);
	cJSON* jsonexchange_login_require_2 = exchange_login_require_convertToJSON(exchange_login_require_2);
	printf("repeating exchange_login_require:\n%s\n", cJSON_Print(jsonexchange_login_require_2));
}

int main() {
  test_exchange_login_require(1);
  test_exchange_login_require(0);

  printf("Hello world \n");
  return 0;
}

#endif // exchange_login_require_MAIN
#endif // exchange_login_require_TEST
