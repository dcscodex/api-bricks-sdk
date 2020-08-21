#ifndef balance_data_TEST
#define balance_data_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define balance_data_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/balance_data.h"
balance_data_t* instantiate_balance_data(int include_optional);



balance_data_t* instantiate_balance_data(int include_optional) {
  balance_data_t* balance_data = NULL;
  if (include_optional) {
    balance_data = balance_data_create(
      "XBT",
      "BTC",
      0.00134444,
      0.00134444,
      0.0,
      oeml___rest_api_balance_data_LASTUPDATEDBY_"EXCHANGE",
      1355.12,
      0.007
    );
  } else {
    balance_data = balance_data_create(
      "XBT",
      "BTC",
      0.00134444,
      0.00134444,
      0.0,
      oeml___rest_api_balance_data_LASTUPDATEDBY_"EXCHANGE",
      1355.12,
      0.007
    );
  }

  return balance_data;
}


#ifdef balance_data_MAIN

void test_balance_data(int include_optional) {
    balance_data_t* balance_data_1 = instantiate_balance_data(include_optional);

	cJSON* jsonbalance_data_1 = balance_data_convertToJSON(balance_data_1);
	printf("balance_data :\n%s\n", cJSON_Print(jsonbalance_data_1));
	balance_data_t* balance_data_2 = balance_data_parseFromJSON(jsonbalance_data_1);
	cJSON* jsonbalance_data_2 = balance_data_convertToJSON(balance_data_2);
	printf("repeating balance_data:\n%s\n", cJSON_Print(jsonbalance_data_2));
}

int main() {
  test_balance_data(1);
  test_balance_data(0);

  printf("Hello world \n");
  return 0;
}

#endif // balance_data_MAIN
#endif // balance_data_TEST
